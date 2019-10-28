Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B1BE790B
	for <lists+b43-dev@lfdr.de>; Mon, 28 Oct 2019 20:13:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yS/ecOebN2hjJ0zJChLw/m/4GKaYCiK6/LJTuOZdIuc=; b=bvYh0a67mM6ZDf
	eXPQcqkD+9rm0z1Z1uXoHlalSMakPY/c/BK80ecjoEBEgBdc10Z21szmYGeT2M47bQM8Rwft8xP8H
	9WN2GLoTB7OmIB+Qve3wbe9snOznyT+D4d3Plpq8Omad2v7Hj8N9oZziH3LGQaGwgmfcb+AzsPtDd
	fZ5l2qFCmXnn3o0Ocp8u/wX17cZ9qLKdj899UVQIhDh4At9AD2o+fNP4J5h3JKqtI6ex0JCeN327+
	iT5Wm++d2PT/TnBksFd13JW+fZuUig8IM7fnbdSfeT5rfN3/9J4X36YXrUq7IrmcsuuyMljMNpw3a
	K8Vxxc6LRaZ/mBv76h7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPAS0-00044U-Oy; Mon, 28 Oct 2019 19:13:12 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPARw-000447-QJ
 for b43-dev@lists.infradead.org; Mon, 28 Oct 2019 19:13:10 +0000
Received: by mail-pg1-x544.google.com with SMTP id u23so7567807pgo.0
 for <b43-dev@lists.infradead.org>; Mon, 28 Oct 2019 12:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=CgcQlM5VLCXCNyfNxz6Q2XQFojiEUKbWR1CtYMYCie4=;
 b=lyIFkDoJnC8Z2LPIiCcX8Bm2LQhPW6iHZwPkIMIw2QreWTRQEJl6ElcuwvsbfIt2Pl
 Z7f0YvEoJRXe/VPB8s6EQqeBGIWdGfkld2NHRHJ35uk/F8OaAAW47Ps/Av5eazEjD+An
 6PH96HiDTsF0HlU5rF8xcDcHbdTpTFB+3m65AL5Lh5RAd0K8QevBCFdbqIQnXT9WgPw0
 x7LJmC1ypRWJME7QYAb2+PaasAqEki0J9ymj50ePWkgzRlNg7YLE3e0lH8BJUCXYXWTI
 Lqt5JC/Jj0sSrPSIpG3Di+2FMNRyiBj+G8i9TTQfQUIZwfm0sNgkULJKQD7+8Pq8Yzew
 mmmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=CgcQlM5VLCXCNyfNxz6Q2XQFojiEUKbWR1CtYMYCie4=;
 b=VCre0rjiIoxoEjQLf9A8CUd0pOrwaWDHy8Kp1ckiT9xXwrlZnhsAahqU5AZh0dlU0f
 CR216G/iEr1rSUMnUWA+eikWbgiq5YkP4eAM1TBdYZmWNVTOgpujFNX8j7KvbGbh9OGj
 pn3zP68XGXZKK6P9QUr2RoFAyK9WA/HZUX8K6p1DajMIz+kq4eDZOYqKyuqLAB43Fpn+
 ni1kuggr/Zwrg8Gp+ss/lPPbsboISj3tk3CczRkSiXO7xxx89SAcVBUU73lqam02N24T
 rUH+DmQo8V/WIW/8oSsYSYcfNbLD20lykR1iadCOJTAHTtvhfqYIbqbdpqzTV9NIajtH
 YZbA==
X-Gm-Message-State: APjAAAXhJkHPyAG6YPHd9QktdqMnMgVP7w14XeAJJmNs//jm2qFmvQmd
 ZNk/mIpkop+oMRAcO2kK0ko=
X-Google-Smtp-Source: APXvYqzgrcUnqmrda+MVYp4HuNS7YIINeAgPJFZJDnRCLKbsdypzwML326SsLcgem4CrN/TaVHcT+g==
X-Received: by 2002:a17:90a:749:: with SMTP id
 s9mr1032746pje.135.1572289988287; 
 Mon, 28 Oct 2019 12:13:08 -0700 (PDT)
Received: from saurav ([27.62.167.137])
 by smtp.gmail.com with ESMTPSA id t9sm275740pjq.21.2019.10.28.12.13.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 12:13:07 -0700 (PDT)
Date: Tue, 29 Oct 2019 00:42:59 +0530
From: Saurav Girepunje <saurav.girepunje@gmail.com>
To: kvalo@codeaurora.org, davem@davemloft.net, tglx@linutronix.de,
 saurav.girepunje@gmail.com, allison@lohutok.net, swinslow@gmail.com,
 mcgrof@kernel.org, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] b43: Fix use true/false for bool type variable.
Message-ID: <20191028191259.GA27369@saurav>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_121308_875088_270668DE 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (saurav.girepunje[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: saurav.girepunje@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

use true/false for bool type variables assignment.

Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
---
 drivers/net/wireless/broadcom/b43/dma.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/dma.c b/drivers/net/wireless/broadcom/b43/dma.c
index 31bf71a80c26..9733c64bf978 100644
--- a/drivers/net/wireless/broadcom/b43/dma.c
+++ b/drivers/net/wireless/broadcom/b43/dma.c
@@ -1400,7 +1400,7 @@ int b43_dma_tx(struct b43_wldev *dev, struct sk_buff *skb)
 		/* This TX ring is full. */
 		unsigned int skb_mapping = skb_get_queue_mapping(skb);
 		ieee80211_stop_queue(dev->wl->hw, skb_mapping);
-		dev->wl->tx_queue_stopped[skb_mapping] = 1;
+		dev->wl->tx_queue_stopped[skb_mapping] = true;
 		ring->stopped = true;
 		if (b43_debug(dev, B43_DBG_DMAVERBOSE)) {
 			b43dbg(dev->wl, "Stopped TX ring %d\n", ring->index);
@@ -1566,7 +1566,7 @@ void b43_dma_handle_txstatus(struct b43_wldev *dev,
 	}
 
 	if (dev->wl->tx_queue_stopped[ring->queue_prio]) {
-		dev->wl->tx_queue_stopped[ring->queue_prio] = 0;
+		dev->wl->tx_queue_stopped[ring->queue_prio] = false;
 	} else {
 		/* If the driver queue is running wake the corresponding
 		 * mac80211 queue. */
-- 
2.20.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
