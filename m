Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BE652982
	for <lists+b43-dev@lfdr.de>; Tue, 25 Jun 2019 12:30:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nX58mTRMQC9dIrneTJeLFL1pE6ph8YE3ZfOzuk1Ok7o=; b=XtdttnMCzaXHqL
	ml8cn7R9uIvQ8IOiMFSz6HIAR6EDGM3IlrpnPHAsaSCth1XAaegQ41ZSSG17tlH+GNQwK9ivrRiJD
	3xMV+FwO0GD4jEtW9jBbQfLkrDtl1nQVb3oUgJQpzhglzbdQ28FIIBXhOgkG/FdhhewvmttGZ2U3u
	4Aa457KRSkfzTPEwOLJ13TL7Ixs8oe2b8epHqb+Ty1CpwfRDmnNoUcDBp0zUxxv5BkdOnkf2GqTML
	lhF5haWQ7jKo3VjR8izsf/4sB9qKwlS+gfTxEZsRfuIFqVSZRP7ktHd3jIaHlBIpHU1sEJB8L7nbg
	yA1il5U9se4idHgW5OrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfihz-0005c3-W6; Tue, 25 Jun 2019 10:29:52 +0000
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hfiho-0005TL-5H; Tue, 25 Jun 2019 10:29:40 +0000
From: Christoph Hellwig <hch@lst.de>
To: Larry Finger <Larry.Finger@lwfinger.net>, Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH 2/4] b43legacy: simplify engine type / DMA mask selection
Date: Tue, 25 Jun 2019 12:29:30 +0200
Message-Id: <20190625102932.32257-3-hch@lst.de>
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
 drivers/net/wireless/broadcom/b43legacy/dma.c | 20 +++----------------
 1 file changed, 3 insertions(+), 17 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43legacy/dma.c b/drivers/net/wireless/broadcom/b43legacy/dma.c
index 0c2de20622e3..e66d05ae2466 100644
--- a/drivers/net/wireless/broadcom/b43legacy/dma.c
+++ b/drivers/net/wireless/broadcom/b43legacy/dma.c
@@ -616,7 +616,7 @@ static void free_all_descbuffers(struct b43legacy_dmaring *ring)
 	}
 }
 
-static u64 supported_dma_mask(struct b43legacy_wldev *dev)
+static enum b43legacy_dmatype b43legacy_engine_type(struct b43legacy_wldev *dev)
 {
 	u32 tmp;
 	u16 mmio_base;
@@ -628,18 +628,7 @@ static u64 supported_dma_mask(struct b43legacy_wldev *dev)
 	tmp = b43legacy_read32(dev, mmio_base +
 			       B43legacy_DMA32_TXCTL);
 	if (tmp & B43legacy_DMA32_TXADDREXT_MASK)
-		return DMA_BIT_MASK(32);
-
-	return DMA_BIT_MASK(30);
-}
-
-static enum b43legacy_dmatype dma_mask_to_engine_type(u64 dmamask)
-{
-	if (dmamask == DMA_BIT_MASK(30))
-		return B43legacy_DMA_30BIT;
-	if (dmamask == DMA_BIT_MASK(32))
 		return B43legacy_DMA_32BIT;
-	B43legacy_WARN_ON(1);
 	return B43legacy_DMA_30BIT;
 }
 
@@ -801,13 +790,10 @@ int b43legacy_dma_init(struct b43legacy_wldev *dev)
 {
 	struct b43legacy_dma *dma = &dev->dma;
 	struct b43legacy_dmaring *ring;
+	enum b43legacy_dmatype type = b43legacy_engine_type(dev);
 	int err;
-	u64 dmamask;
-	enum b43legacy_dmatype type;
 
-	dmamask = supported_dma_mask(dev);
-	type = dma_mask_to_engine_type(dmamask);
-	err = dma_set_mask_and_coherent(dev->dev->dma_dev, dmamask);
+	err = dma_set_mask_and_coherent(dev->dev->dma_dev, DMA_BIT_MASK(type));
 	if (err) {
 #ifdef CONFIG_B43LEGACY_PIO
 		b43legacywarn(dev->wl, "DMA for this device not supported. "
-- 
2.20.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
