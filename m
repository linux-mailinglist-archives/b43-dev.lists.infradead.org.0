Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2594CE78E3
	for <lists+b43-dev@lfdr.de>; Mon, 28 Oct 2019 20:02:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X0aha7086OVNOnfP/+X1WmRKBkUN+peQq/VmxAdSkLk=; b=CBooeN9FMq9Qqt
	VuEYZXL4nCmFzrBGP2jnFgXphK6K5/3jRP5OojSFPNzukEtEfcTe6C/FByA/CxgcGG6qN1/VNHQoO
	WdXfXr4cw9uIjvAJRayFqfJ4rDi5EOFSWodp0v5+CWQZMMBnDmqlDwgTaZ4+7wan4SNjtzxliYgy0
	LFTv7OkrE7oPDFTSunlh9qT4YH+Pu+fB+KDWDXszi88jo0w4IvqAdz6VnlMbLYpo66UJCxwOD73Kh
	AoVQwgjryYbi6M+TAc3O5oJJpwL9sxeKAUkhZPphprRMyr9+GwiakSjuNAjJyktGUg4Zk+5BMTVNp
	bplUGB2xcx81L7dSa9TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPAHV-0007xQ-Cy; Mon, 28 Oct 2019 19:02:21 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPAHR-0007wc-OT
 for b43-dev@lists.infradead.org; Mon, 28 Oct 2019 19:02:19 +0000
Received: by mail-pg1-x544.google.com with SMTP id u23so7544911pgo.0
 for <b43-dev@lists.infradead.org>; Mon, 28 Oct 2019 12:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=PmpdsSGsRTPJg2gNTTOfS95j5BoFg8jBx/R2QLL6v8o=;
 b=QW7T+7VH6bTSUJYpsD9DofS5t+hGVEVgukx4XTG2cdwHVABcuTyxDvXDzm2s6jXVkl
 FKlzE+PLCsasuboJsXYTruoMlgNyiLCMDrKDbf734HlHC5jNJdRYmi7eXhHGmgJU/01d
 HQxR3y9390Q18ZG5BEq2w8Ydb6sQ7IMTV311i4NalN9JErK2yRYnUSQwz1YZw3LApoyC
 S8l+ZQuAqqsdHXE0FSvPa4U2UtnkpDvyPOiQIdtFpHG+9of7o4AMm6pRD65fq3Uf/wlp
 nJXViN8T5db66wedrvWSTypMJJGqd2YNacV9gGsR+4IkSo011Cvjpyn0T+GJOr3lVFvZ
 Kbpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=PmpdsSGsRTPJg2gNTTOfS95j5BoFg8jBx/R2QLL6v8o=;
 b=pPzVWy4YTKOUhGT9DT7QFYZrs0W2mENgr2YeamqNS6l/GqRCuNJi0VIyBUqea3yCDP
 1knd5gIKG2YSJR+oEe9qx/SqljNgsQ9xvhLnmWV3gMe5RZuSWwy3Tam4I/13mCK+IWoR
 lAqJ1oQJKodbIWzPl9XC6MkghPDKtNbV9HXa7m6gJFGnQGPmK3wisSHkM+4QwZNJ4SFS
 J7ydwo7MfARuEWL5G1SghNbAZ8+9Xi7vpiKzqQvsKK80G4xKaKAhe27897cx9D++136l
 hqz7ydO7zS5NYPKLRzswZK4Kxl+oLKCP/QwgfGyjwRhkLvMBwklX+Lwpx4hVxQdz9u5X
 NOsg==
X-Gm-Message-State: APjAAAX6+xZ6vq91JT9m+cBuDJacE/DQ8Ykj9XWRHwZe5vCWnlbbZTcN
 pMcKhBXJHHpkDH76I+vUlno=
X-Google-Smtp-Source: APXvYqxO42ZaEHFpqCWyXwQl9XRe8E2yopQYCUGESm+/HHd6jbR7fJ0AkMPbiQOxHHLSgYtXGxP5zQ==
X-Received: by 2002:a17:90a:eb02:: with SMTP id
 j2mr1061881pjz.80.1572289334957; 
 Mon, 28 Oct 2019 12:02:14 -0700 (PDT)
Received: from saurav ([27.62.167.137])
 by smtp.gmail.com with ESMTPSA id q184sm12627210pfc.111.2019.10.28.12.02.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 12:02:14 -0700 (PDT)
Date: Tue, 29 Oct 2019 00:32:04 +0530
From: Saurav Girepunje <saurav.girepunje@gmail.com>
To: kvalo@codeaurora.org, davem@davemloft.net, swinslow@gmail.com,
 will@kernel.org, opensource@jilayne.com, saurav.girepunje@gmail.com,
 baijiaju1990@gmail.com, tglx@linutronix.de,
 linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] b43: Fix use true/false for bool type
Message-ID: <20191028190204.GA27248@saurav>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_120217_825265_3522CC65 
X-CRM114-Status: GOOD (  11.92  )
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

use true/false on bool type variable assignment.

Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
---
 drivers/net/wireless/broadcom/b43/main.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index b85603e91c7a..39da1a4c30ac 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -3600,7 +3600,7 @@ static void b43_tx_work(struct work_struct *work)
 			else
 				err = b43_dma_tx(dev, skb);
 			if (err == -ENOSPC) {
-				wl->tx_queue_stopped[queue_num] = 1;
+				wl->tx_queue_stopped[queue_num] = true;
 				ieee80211_stop_queue(wl->hw, queue_num);
 				skb_queue_head(&wl->tx_queue[queue_num], skb);
 				break;
@@ -3611,7 +3611,7 @@ static void b43_tx_work(struct work_struct *work)
 		}
 
 		if (!err)
-			wl->tx_queue_stopped[queue_num] = 0;
+			wl->tx_queue_stopped[queue_num] = false;
 	}
 
 #if B43_DEBUG
@@ -5603,7 +5603,7 @@ static struct b43_wl *b43_wireless_init(struct b43_bus_dev *dev)
 	/* Initialize queues and flags. */
 	for (queue_num = 0; queue_num < B43_QOS_QUEUE_NUM; queue_num++) {
 		skb_queue_head_init(&wl->tx_queue[queue_num]);
-		wl->tx_queue_stopped[queue_num] = 0;
+		wl->tx_queue_stopped[queue_num] = false;
 	}
 
 	snprintf(chip_name, ARRAY_SIZE(chip_name),
-- 
2.20.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
