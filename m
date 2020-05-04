Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 631E01C3832
	for <lists+b43-dev@lfdr.de>; Mon,  4 May 2020 13:34:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MlaSRCuEwuevMPlM3ttz9CZgZOWwxDYPrAeYdReRFaI=; b=Jw/Gsel+GA3dcC
	+i2Lzl9GJo8YmIBWDyD3eLWeIe1SiaWBLCpu+KFC7ju4RrLs1vRB3Dy/y+invCWc7FwyHn6OqZJua
	aBIyY7i5T4bTsx2QbTWMPAR8voP149Mf6BzSFDCobsw2I5SLZ3CVU/IoOfsPfhx4I+FJgd9847QC8
	4mwQRxsIj0zrvwTE9kMfGiujvAsr1iF6iIBEOL+2p2NRuUDzye9b67qpz633qD1Et7uXigen+PyaD
	c8unzawhaPs/f1TSTlGmk1St7l1SRo/tIrK/vebu8fWKMVxyPPeqhtFMpPSGCdOwSV4xnPENTdHrA
	Co8zYOX+vTb3v1pJfsuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVZML-0002vY-RX; Mon, 04 May 2020 11:34:05 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVZMI-0002px-73
 for b43-dev@lists.infradead.org; Mon, 04 May 2020 11:34:03 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id C928BC0AEEF31254BEE3;
 Mon,  4 May 2020 19:33:56 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.487.0; Mon, 4 May 2020
 19:33:48 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <kvalo@codeaurora.org>, <davem@davemloft.net>, <tglx@linutronix.de>,
 <linux-wireless@vger.kernel.org>, <b43-dev@lists.infradead.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] b43: remove Comparison of 0/1 to bool variable in pio.c
Date: Mon, 4 May 2020 19:33:11 +0800
Message-ID: <20200504113311.41026-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_043402_426505_587E5790 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jason Yan <yanaijie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Fix the following coccicheck warning:

drivers/net/wireless/broadcom/b43/pio.c:768:10-25: WARNING: Comparison
of 0/1 to bool variable

Signed-off-by: Jason Yan <yanaijie@huawei.com>
---
 drivers/net/wireless/broadcom/b43/pio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/pio.c b/drivers/net/wireless/broadcom/b43/pio.c
index 69f8b46c9015..1a11c5dfb8d9 100644
--- a/drivers/net/wireless/broadcom/b43/pio.c
+++ b/drivers/net/wireless/broadcom/b43/pio.c
@@ -765,7 +765,7 @@ void b43_pio_rx(struct b43_pio_rxqueue *q)
 	bool stop;
 
 	while (1) {
-		stop = (pio_rx_frame(q) == 0);
+		stop = !pio_rx_frame(q);
 		if (stop)
 			break;
 		cond_resched();
-- 
2.21.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
