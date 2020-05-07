Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7FF1C87A0
	for <lists+b43-dev@lfdr.de>; Thu,  7 May 2020 13:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r9a6+DrkA83D9TEb2mDX7Q4O6QehY104DJ4oAZLpKWc=; b=ZbRGlNaBPNgt1J
	FWJmEgT0UyuKi+SWMfKydFWrice2WqLQgmBEG1w9xGVZOxCAgjEn7aN3/73r7CK3m3nSvC8O/uDDB
	I+la9YmBMFP5AlQkqK6p++y6UiMNwFTdMrJVtpizIQKNu6Ji3oySQS/8RRQYYZ47Pogp2kXycOxOI
	1XqB/niPhDqe+IdrozSDGbaB8oejLcW48IB8nWtmFe8z/l3hAUDuIescJEXfk2b52RxAUreLgyOMe
	TBh4wL2q4pRBHwLKBOI6nEn4aOYT5vfScq8h8VxmUEDvzWMpFVi5BE9dqNLQ9iKW/tBp5/EBlqxeF
	tJtCwuNZ53KEyi5/Baxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeOY-0003Kc-5N; Thu, 07 May 2020 11:08:50 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWeOP-00037D-Kn
 for b43-dev@lists.infradead.org; Thu, 07 May 2020 11:08:43 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 706F79169ECFE8040AF6;
 Thu,  7 May 2020 19:08:27 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.487.0; Thu, 7 May 2020
 19:08:21 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <kvalo@codeaurora.org>, <davem@davemloft.net>, <tglx@linutronix.de>,
 <linux-wireless@vger.kernel.org>, <b43-dev@lists.infradead.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] b43: remove dead function b43_rssinoise_postprocess()
Date: Thu, 7 May 2020 19:07:41 +0800
Message-ID: <20200507110741.37757-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_040841_864828_5801A943 
X-CRM114-Status: UNSURE (   5.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

This function is dead for more than 10 years. Remove it.

Signed-off-by: Jason Yan <yanaijie@huawei.com>
---
 drivers/net/wireless/broadcom/b43/xmit.c | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/xmit.c b/drivers/net/wireless/broadcom/b43/xmit.c
index 058745219516..55babc6d1091 100644
--- a/drivers/net/wireless/broadcom/b43/xmit.c
+++ b/drivers/net/wireless/broadcom/b43/xmit.c
@@ -629,19 +629,6 @@ static s8 b43_rssi_postprocess(struct b43_wldev *dev,
 	return (s8) tmp;
 }
 
-//TODO
-#if 0
-static s8 b43_rssinoise_postprocess(struct b43_wldev *dev, u8 in_rssi)
-{
-	struct b43_phy *phy = &dev->phy;
-	s8 ret;
-
-	ret = b43_rssi_postprocess(dev, in_rssi, 0, 1, 1);
-
-	return ret;
-}
-#endif
-
 void b43_rx(struct b43_wldev *dev, struct sk_buff *skb, const void *_rxhdr)
 {
 	struct ieee80211_rx_status status;
-- 
2.21.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
