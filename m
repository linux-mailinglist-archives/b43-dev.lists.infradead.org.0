Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F9B52991
	for <lists+b43-dev@lfdr.de>; Tue, 25 Jun 2019 12:30:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g/ULI0YJDaqRGimxZiRZaGzrU2wm9lVl1eXalR1NzFw=; b=KWNDC+lYID7z4J
	zloFqvvAiHfy/6es/axwAukSx3HDQGUjZXd/nYduXMCxqA/ruVe/z8O50Me+T2HAkOM366/dzIPgG
	/6j5kUXQ8wOues06wkAvTbEmjC0D7AyBJuW4J7QXQffO8QB3PIrC4IOi80hSlQDK0+m2muvN41k2F
	Ps1/tqAZ6WqDkmHECs/L6JpvlRyB2lQ/dQHuQ313pcAjulToilZGnkvJtLdsHaa5d3ut9aZ+f6cIc
	5r2C3m64UswFxKlVnHb+fBIBd1cImBG20IMB2H06YDvPUsFigSKSVFKtiN2ojMeQV33eOLKPJ6CkA
	TCsAQyGLXI7IUfZ2Hm7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfiiJ-0005qh-Es; Tue, 25 Jun 2019 10:30:11 +0000
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hfihs-0005Xp-VP; Tue, 25 Jun 2019 10:29:45 +0000
From: Christoph Hellwig <hch@lst.de>
To: Larry Finger <Larry.Finger@lwfinger.net>, Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH 4/4] b43: simplify engine type / DMA mask selection
Date: Tue, 25 Jun 2019 12:29:32 +0200
Message-Id: <20190625102932.32257-5-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190625102932.32257-1-hch@lst.de>
References: <20190625102932.32257-1-hch@lst.de>
MIME-Version: 1.0
X-BeenThere: b43-dev@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: b43/b43legacy Linux driver discussions <b43-dev.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/b43-dev/>
List-Post: <mailto:b43-dev@lists.infradead.org>
List-Help: <mailto:b43-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=subscribe>
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Return the engine type from the function looking at the registers, and
just derive the DMA mask from that in the one place we care.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/net/wireless/broadcom/b43/dma.c | 28 ++++++-------------------
 1 file changed, 6 insertions(+), 22 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/dma.c b/drivers/net/wireless/broadcom/b43/dma.c
index 1d5ace4d3372..e8958edb9094 100644
--- a/drivers/net/wireless/broadcom/b43/dma.c
+++ b/drivers/net/wireless/broadcom/b43/dma.c
@@ -810,7 +810,7 @@ static void free_all_descbuffers(struct b43_dmaring *ring)
 	}
 }
 
-static u64 supported_dma_mask(struct b43_wldev *dev)
+static enum b43_dmatype b43_engine_type(struct b43_wldev *dev)
 {
 	u32 tmp;
 	u16 mmio_base;
@@ -820,14 +820,14 @@ static u64 supported_dma_mask(struct b43_wldev *dev)
 	case B43_BUS_BCMA:
 		tmp = bcma_aread32(dev->dev->bdev, BCMA_IOST);
 		if (tmp & BCMA_IOST_DMA64)
-			return DMA_BIT_MASK(64);
+			return B43_DMA_64BIT;
 		break;
 #endif
 #ifdef CONFIG_B43_SSB
 	case B43_BUS_SSB:
 		tmp = ssb_read32(dev->dev->sdev, SSB_TMSHIGH);
 		if (tmp & SSB_TMSHIGH_DMA64)
-			return DMA_BIT_MASK(64);
+			return B43_DMA_64BIT;
 		break;
 #endif
 	}
@@ -836,20 +836,7 @@ static u64 supported_dma_mask(struct b43_wldev *dev)
 	b43_write32(dev, mmio_base + B43_DMA32_TXCTL, B43_DMA32_TXADDREXT_MASK);
 	tmp = b43_read32(dev, mmio_base + B43_DMA32_TXCTL);
 	if (tmp & B43_DMA32_TXADDREXT_MASK)
-		return DMA_BIT_MASK(32);
-
-	return DMA_BIT_MASK(30);
-}
-
-static enum b43_dmatype dma_mask_to_engine_type(u64 dmamask)
-{
-	if (dmamask == DMA_BIT_MASK(30))
-		return B43_DMA_30BIT;
-	if (dmamask == DMA_BIT_MASK(32))
 		return B43_DMA_32BIT;
-	if (dmamask == DMA_BIT_MASK(64))
-		return B43_DMA_64BIT;
-	B43_WARN_ON(1);
 	return B43_DMA_30BIT;
 }
 
@@ -1078,13 +1065,10 @@ static bool b43_dma_translation_in_low_word(struct b43_wldev *dev,
 int b43_dma_init(struct b43_wldev *dev)
 {
 	struct b43_dma *dma = &dev->dma;
+	enum b43_dmatype type = b43_engine_type(dev);
 	int err;
-	u64 dmamask;
-	enum b43_dmatype type;
 
-	dmamask = supported_dma_mask(dev);
-	type = dma_mask_to_engine_type(dmamask);
-	err = dma_set_mask_and_coherent(dev->dev->dma_dev, dmamask);
+	err = dma_set_mask_and_coherent(dev->dev->dma_dev, DMA_BIT_MASK(type));
 	if (err) {
 		b43err(dev->wl, "The machine/kernel does not support "
 		       "the required %u-bit DMA mask\n", type);
@@ -1793,7 +1777,7 @@ void b43_dma_direct_fifo_rx(struct b43_wldev *dev,
 	enum b43_dmatype type;
 	u16 mmio_base;
 
-	type = dma_mask_to_engine_type(supported_dma_mask(dev));
+	type = b43_engine_type(dev);
 
 	mmio_base = b43_dmacontroller_base(type, engine_index);
 	direct_fifo_rx(dev, type, mmio_base, enable);
-- 
2.20.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
