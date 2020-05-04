Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72BC21C382E
	for <lists+b43-dev@lfdr.de>; Mon,  4 May 2020 13:34:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rDlF2r8n7SlIFbcfOAB2UNisG33QcGV6NvTufETnvIk=; b=OCBdWvq4njEULo
	N/3G0LNULcIgeujuZFeXa4X8Bu/Hb/TUKBJd+NnDzNu7cKtfc/B5CIbotoLb3odC9dAQWNQKZm1sx
	Zd66wq2Y/FhG+Lvan8mHLJRbv04J4fRhO+eQ+6s+MP/ZSF5NwAhOG8pBPvi9eV6a3dWLqZikKyKoH
	RSe39OAawgIyEOdPRy5s7jX1v9UYRoZwiXnqiFLupMcJSftqZG0vcljHX7YRpNyquFmUiuMbubR/Y
	72pOLdhsFPoD06h+YgsZBVQZYwIbT3fM5XeqcrU8FGeoIpaKbljcGoIRaZwq4vjHZ8rD5SqxFp31p
	p5HlRcK6ToVjVEBZEC+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVZMG-0002pt-9r; Mon, 04 May 2020 11:34:00 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVZM9-0002o8-HB
 for b43-dev@lists.infradead.org; Mon, 04 May 2020 11:33:55 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 9C7ADFC07102EA98B7C6;
 Mon,  4 May 2020 19:33:46 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.487.0; Mon, 4 May 2020
 19:33:37 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <kvalo@codeaurora.org>, <davem@davemloft.net>, <tglx@linutronix.de>,
 <linux-wireless@vger.kernel.org>, <b43-dev@lists.infradead.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] b43: remove Comparison of 0/1 to bool variable in phy_n.c
Date: Mon, 4 May 2020 19:33:00 +0800
Message-ID: <20200504113300.40895-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_043353_738640_F84E7BB7 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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

drivers/net/wireless/broadcom/b43/phy_n.c:5510:19-32: WARNING:
Comparison of 0/1 to bool variable

Signed-off-by: Jason Yan <yanaijie@huawei.com>
---
 drivers/net/wireless/broadcom/b43/phy_n.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index d3c001fa8eb4..c33b4235839d 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -5507,7 +5507,7 @@ static int b43_nphy_cal_tx_iq_lo(struct b43_wldev *dev,
 			core = (cmd & 0x3000) >> 12;
 			type = (cmd & 0x0F00) >> 8;
 
-			if (phy6or5x && updated[core] == 0) {
+			if (phy6or5x && !updated[core]) {
 				b43_nphy_update_tx_cal_ladder(dev, core);
 				updated[core] = true;
 			}
-- 
2.21.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
