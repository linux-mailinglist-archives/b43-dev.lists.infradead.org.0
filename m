Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4A713866
	for <lists+b43-dev@lfdr.de>; Sat,  4 May 2019 11:10:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EeBX4MjkZBlPBKyKSh3ch6VGULpVj+PtSEv555IvzUk=; b=VyZ
	cWsuiXHgCA6uZvsQ100gKndJqKv+9WICtt8wjrrp6tMTd82TMFBcUaRsmTLdUfi0AzPYWNJuk6cwm
	UMEd8d260aQkxFjoalEA9HTdLsJC48jA+XTuY7AI52ZTrIF8oygpgiAuoLvWNYubf92r9uyWsgC07
	OzUYlJCArpxKx8VvTvxhpgot8FXBkTyN9/zhISBc5sBExWzSPg6DLYD1WipM1s7btr7PRpZG7jikx
	sLKHxCORLXf8JHdU0ciexaJcYaWzJEU/KHmhV4PYEVPDTt6X1tniRa1xB7ThfpQkzZcu9w/VFtRtI
	btsbvJrfunHm/1olbdLwUA4+x/jLp8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMqgX-0002jL-Tw; Sat, 04 May 2019 09:10:21 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMqgP-0002iv-Re
 for b43-dev@lists.infradead.org; Sat, 04 May 2019 09:10:15 +0000
Received: by mail-pf1-x441.google.com with SMTP id z26so4126978pfg.6
 for <b43-dev@lists.infradead.org>; Sat, 04 May 2019 02:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=weyn+CHVWujXbQhxQpPXY+MmlPD3OaJ4CkltxPjfrS4=;
 b=GX1wUbavt4/yeinpEnt7G2fmTCdYJ9kThtfe5FiGkRtqRpYj0PH5HJUNhAxuG+G0PO
 Lgn+96yNkQ8xZNxbYtEElcrlGz49Ze6NAzDamdrDNFjxCIYe9wnMZDW9JUiFzLRXU6Zg
 RLdi6HBpjD0EcKxEf6Hr2pA5yOeoHR3uPcOBbq5L0mUE28iwCq8din3Wyn+IhRFEcFUY
 4Zex3MuxV0laRfO7Xz7VWlI3cyI8m4LedyLp+iHhmXzW4ay4CLzGfj4gVZWsn2KPRn8c
 o2GNGL/sUpN2sjq0E893V2hmsWcnwnfvKQI+2ypviuDGHRcqChtOT+2iuOZORaJcfLZV
 UB6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=weyn+CHVWujXbQhxQpPXY+MmlPD3OaJ4CkltxPjfrS4=;
 b=q/oHqhGbVvvHR+yTbqih2gJQq5cQ8JW+rwNMNDYgudHhw0K+BQV+Ho5l4vgeOfCSWA
 1abenxYSzjkalG8FHICmbeARVTiTcBB8oOSZ+OzJt5r3Z/JoVM8kU5h/PzR7STxYz1qQ
 vQu9Pe5J5FVICclxWyqTnfC+lPrIbhmKlWrbNct3KIBfloG3SGFgR/+YdrTv5OXBD1Nt
 VbgnM7mTE8R5X8i6QuMEWXCEwqouoPh1WsUDC9+oYzGQj0LOgOY0IXq5BrJjLSn30OLx
 X2Z8zqz0MGZHFYSRurf0YH4U1PPk9Jt2QoiqB1EldS8gKXb81JsWBncFs963gItaJJZM
 AfPQ==
X-Gm-Message-State: APjAAAWHJWZdP5X+z05vBqbYrv3osZI/B8NivT62tMXnc6KTrTOWkzqd
 caxkVjeMidRS2f6zjiYatQk=
X-Google-Smtp-Source: APXvYqzQaP3Vs7X9Cum2Z7PgW42q0Cahgu53Yir7dPOIiaVQSVyphkycH/dr0MPdOVXn3iWNrPWxig==
X-Received: by 2002:aa7:8252:: with SMTP id e18mr17944696pfn.105.1556961012702; 
 Sat, 04 May 2019 02:10:12 -0700 (PDT)
Received: from oslab.tsinghua.edu.cn ([2402:f000:4:72:808::3ca])
 by smtp.gmail.com with ESMTPSA id 19sm9225490pfs.104.2019.05.04.02.10.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 02:10:11 -0700 (PDT)
From: Jia-Ju Bai <baijiaju1990@gmail.com>
To: kvalo@codeaurora.org, davem@davemloft.net, colin.king@canonical.com,
 yuehaibing@huawei.com
Subject: [PATCH] net: wireless: b43: Avoid possible double calls to
 b43_one_core_detach()
Date: Sat,  4 May 2019 17:10:00 +0800
Message-Id: <20190504091000.18665-1-baijiaju1990@gmail.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_021013_927165_EC98A20B 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (baijiaju1990[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (baijiaju1990[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: b43-dev@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: b43/b43legacy Linux driver discussions <b43-dev.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/b43-dev/>
List-Post: <mailto:b43-dev@lists.infradead.org>
List-Help: <mailto:b43-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=subscribe>
Cc: netdev@vger.kernel.org, Jia-Ju Bai <baijiaju1990@gmail.com>,
 linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

In b43_request_firmware(), when ieee80211_register_hw() fails,
b43_one_core_detach() is called. In b43_bcma_remove() and
b43_ssb_remove(), b43_one_core_detach() is called again. In this case, 
null-pointer dereferences and double-free problems can occur when 
the driver is removed.

To fix this bug, the call to b43_one_core_detach() in
b43_request_firmware() is deleted.

This bug is found by a runtime fuzzing tool named FIZZER written by us.

Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
---
 drivers/net/wireless/broadcom/b43/main.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index 74be3c809225..e666a472a0da 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -2610,18 +2610,13 @@ static void b43_request_firmware(struct work_struct *work)
 
 	err = ieee80211_register_hw(wl->hw);
 	if (err)
-		goto err_one_core_detach;
+		goto out;
 	wl->hw_registered = true;
 	b43_leds_register(wl->current_dev);
 
 	/* Register HW RNG driver */
 	b43_rng_init(wl);
 
-	goto out;
-
-err_one_core_detach:
-	b43_one_core_detach(dev->dev);
-
 out:
 	kfree(ctx);
 }
-- 
2.17.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
