Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1379D5297D
	for <lists+b43-dev@lfdr.de>; Tue, 25 Jun 2019 12:29:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TDLVqJOWb42BbHFPMTu5WXQqxQIJBOxy6sYHEJVGOlU=; b=VM81nEi5J69ls1
	VhrXZOJ/iMYpNB8WU1ct7wcR+y5bNIRLF4O2T/CM5IwRjH3UCgHQkhx9jii3xLjdpyFqUBz/9c4Ga
	gJC9X3BN8hG/Dl03IRj8Znz7bwPo3/nmxfjVSiOgzaOL6HxZ6wc5TExMt9EE12iiyZ+qSwRRNlZcq
	rLWepkhHp9s2x0+xaejGH/hZnTvFCxpT2k6RFbuCbtN9r0v9R72/4SCru9lwEj1WiZ8mHz4VBTSA5
	kNGXQNqjKd+XDPuUTEeQn0/p1CuCnM1IO+zoDvyT6cvYTr317cRZf9ovOaesTXJRCx2cK2Js4/iHs
	81QlxzET2QnTsSWjMGHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfihv-0005V5-2T; Tue, 25 Jun 2019 10:29:47 +0000
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hfihl-0005Su-UF; Tue, 25 Jun 2019 10:29:38 +0000
From: Christoph Hellwig <hch@lst.de>
To: Larry Finger <Larry.Finger@lwfinger.net>, Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH 1/4] b43legacy: remove b43legacy_dma_set_mask
Date: Tue, 25 Jun 2019 12:29:29 +0200
Message-Id: <20190625102932.32257-2-hch@lst.de>
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
 drivers/net/wireless/broadcom/b43legacy/dma.c | 39 +------------------
 1 file changed, 1 insertion(+), 38 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43legacy/dma.c b/drivers/net/wireless/broadcom/b43legacy/dma.c
index 2ce1537d983c..0c2de20622e3 100644
--- a/drivers/net/wireless/broadcom/b43legacy/dma.c
+++ b/drivers/net/wireless/broadcom/b43legacy/dma.c
@@ -797,43 +797,6 @@ void b43legacy_dma_free(struct b43legacy_wldev *dev)
 	dma->tx_ring0 = NULL;
 }
 
-static int b43legacy_dma_set_mask(struct b43legacy_wldev *dev, u64 mask)
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
-		b43legacyerr(dev->wl, "The machine/kernel does not support "
-		       "the required %u-bit DMA mask\n",
-		       (unsigned int)dma_mask_to_engine_type(orig_mask));
-		return -EOPNOTSUPP;
-	}
-	if (fallback) {
-		b43legacyinfo(dev->wl, "DMA mask fallback from %u-bit to %u-"
-			"bit\n",
-			(unsigned int)dma_mask_to_engine_type(orig_mask),
-			(unsigned int)dma_mask_to_engine_type(mask));
-	}
-
-	return 0;
-}
-
 int b43legacy_dma_init(struct b43legacy_wldev *dev)
 {
 	struct b43legacy_dma *dma = &dev->dma;
@@ -844,7 +807,7 @@ int b43legacy_dma_init(struct b43legacy_wldev *dev)
 
 	dmamask = supported_dma_mask(dev);
 	type = dma_mask_to_engine_type(dmamask);
-	err = b43legacy_dma_set_mask(dev, dmamask);
+	err = dma_set_mask_and_coherent(dev->dev->dma_dev, dmamask);
 	if (err) {
 #ifdef CONFIG_B43LEGACY_PIO
 		b43legacywarn(dev->wl, "DMA for this device not supported. "
-- 
2.20.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
