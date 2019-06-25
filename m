Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 407985298A
	for <lists+b43-dev@lfdr.de>; Tue, 25 Jun 2019 12:30:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tj8GwsEeiB8W029TI29+Ncn206leTB4XEF5r/ZRl1+o=; b=PQMDks0u5n/w0a
	pf7KV24Fy4p9POCoiQbTV7INwGjUuHkCl1co/DYnxmSjOPZKqzY8xur5P3YpRBu0UK2JSLsJ9oz2x
	oZBBduCBKxDQfTMp9GhzqxlC9i+gUc7G5li4lU7v50PO98XZckVPJXr92UF+P+12/eWrGcTgruYaT
	rug47N5Emx7/mtz5hrps9V+HPoatzM9AWnRSlZyuS8gkdYRqVx8XSYzwcIFn/Y6Qoqt9i4UjMH1f5
	ioGAvHKtmi/mHReLx4p54iNc3CDaInRQwndXGMZzpRQzpSQj2ktwtB4/2vV+prYdVc3p4vzEOmmsU
	6t+zsYjQrC2qbBdon4Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfii5-0005iZ-VK; Tue, 25 Jun 2019 10:29:58 +0000
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hfihq-0005UB-KE; Tue, 25 Jun 2019 10:29:43 +0000
From: Christoph Hellwig <hch@lst.de>
To: Larry Finger <Larry.Finger@lwfinger.net>, Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH 3/4] b43: remove b43_dma_set_mask
Date: Tue, 25 Jun 2019 12:29:31 +0200
Message-Id: <20190625102932.32257-4-hch@lst.de>
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

These days drivers are not required to fallback to smaller DMA masks,
but can just set the largest mask they support, removing the need for
this trial and error logic.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/net/wireless/broadcom/b43/dma.c | 43 +++----------------------
 1 file changed, 5 insertions(+), 38 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/dma.c b/drivers/net/wireless/broadcom/b43/dma.c
index b34e51933257..1d5ace4d3372 100644
--- a/drivers/net/wireless/broadcom/b43/dma.c
+++ b/drivers/net/wireless/broadcom/b43/dma.c
@@ -1056,42 +1056,6 @@ void b43_dma_free(struct b43_wldev *dev)
 	destroy_ring(dma, tx_ring_mcast);
 }
 
-static int b43_dma_set_mask(struct b43_wldev *dev, u64 mask)
-{
-	u64 orig_mask = mask;
-	bool fallback = false;
-	int err;
-
-	/* Try to set the DMA mask. If it fails, try falling back to a
-	 * lower mask, as we can always also support a lower one. */
-	while (1) {
-		err = dma_set_mask_and_coherent(dev->dev->dma_dev, mask);
-		if (!err)
-			break;
-		if (mask == DMA_BIT_MASK(64)) {
-			mask = DMA_BIT_MASK(32);
-			fallback = true;
-			continue;
-		}
-		if (mask == DMA_BIT_MASK(32)) {
-			mask = DMA_BIT_MASK(30);
-			fallback = true;
-			continue;
-		}
-		b43err(dev->wl, "The machine/kernel does not support "
-		       "the required %u-bit DMA mask\n",
-		       (unsigned int)dma_mask_to_engine_type(orig_mask));
-		return -EOPNOTSUPP;
-	}
-	if (fallback) {
-		b43info(dev->wl, "DMA mask fallback from %u-bit to %u-bit\n",
-			(unsigned int)dma_mask_to_engine_type(orig_mask),
-			(unsigned int)dma_mask_to_engine_type(mask));
-	}
-
-	return 0;
-}
-
 /* Some hardware with 64-bit DMA seems to be bugged and looks for translation
  * bit in low address word instead of high one.
  */
@@ -1120,9 +1084,12 @@ int b43_dma_init(struct b43_wldev *dev)
 
 	dmamask = supported_dma_mask(dev);
 	type = dma_mask_to_engine_type(dmamask);
-	err = b43_dma_set_mask(dev, dmamask);
-	if (err)
+	err = dma_set_mask_and_coherent(dev->dev->dma_dev, dmamask);
+	if (err) {
+		b43err(dev->wl, "The machine/kernel does not support "
+		       "the required %u-bit DMA mask\n", type);
 		return err;
+	}
 
 	switch (dev->dev->bus_type) {
 #ifdef CONFIG_B43_BCMA
-- 
2.20.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
