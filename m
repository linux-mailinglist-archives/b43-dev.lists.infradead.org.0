Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3F7163BFA
	for <lists+b43-dev@lfdr.de>; Wed, 19 Feb 2020 05:16:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=t2RIlmbEw3/wT8DGBH/z4iOLOvPJxqOuq8RvVdbqlJ0=; b=U7G
	qxgTT4oWVCgOWyMOV0BAg/uToM2K+k/ZcLX+LOFXkwVcNfCc/zFpQQWxchBxDfR1Pu8aJ175La4xI
	oCQW4kMoxUA9gUIjCwSvRbPGE4F0neWNEcWlZf1152KllwZWiaQbh9C6QSWMDho81iX/071UlLeoj
	K50hQ1fRkrNZD3CgIFviZ1xxpr42S6wss5VRb2DfaVGytOm2pdgjKZWrTSCDqLQe80kwBF6QRw27K
	Q4MytNudur0Ba7Gsp0Gy2OTGX/2vBtOwmktyi+ECaT+0we2RxNBepUjuwlnAKUiUFC/79bIb//9Hj
	lMOO80qtGV6p5PePumoHDja6/wrHWhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4GmS-0003Qd-JZ; Wed, 19 Feb 2020 04:16:12 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4GmL-0003Q7-V7
 for b43-dev@lists.infradead.org; Wed, 19 Feb 2020 04:16:07 +0000
Received: by mail-pl1-x642.google.com with SMTP id p11so8984209plq.10
 for <b43-dev@lists.infradead.org>; Tue, 18 Feb 2020 20:16:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=H5s84nZe09LEygazx+9zYHkBioooKXZ48/ls3AZTwNo=;
 b=sXaNni8hNvrlu2JabbxBr+U2UvIQCh/uJTUDTlriUSPs5hnN1ZiU3F+gNTn8rh8anX
 U7MKjCjKjLxdYUUeivIa7H5T8OsyjinlUCKaCqo4eUSh3vOpO4iRsfwa0H9tzahAL5+R
 pYIdtfahHGVvUm+g53tiLTgjAYY8Ws94wjGhRBMAOv5vLedb9Dgl8Fu8XjaOp/XM45b4
 yVdLXEqexgtLIsejKJQy0ShG8n8Mfmsurh3eCEb7NcJj/w74ug31e0dbUHOP401Gwq9q
 rcIocFOzMHzfF+K6GUOBJkb80YFfbcJ1dKYVHZx3CGYyq3jpuP6wGHyU8R92ye83WIvU
 dlgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=H5s84nZe09LEygazx+9zYHkBioooKXZ48/ls3AZTwNo=;
 b=Hnqjxrk1HdQzP7CHlJ6lwS+ZmJl+MMuxNbLXL4z+GDISxjVbyPP4ds4Hp00f6MGJT9
 t5OSwtLWuw9gPfIbszPLyNiYL1O8Wu6l83IYYEon8g3QAXwuRcEP1znXvz5huxosCdwo
 C3mBw79pF4/UTy7hUolt25AqtZD4OuTA9hamPnIKYt6ccsVEBlJ1mWj/JQ1t4EBro5Ns
 QNuKj/u9hIxoACaMkkfk99LfrcWKEn/ECM8uOQhAzNlgqfCFOTbg6+BIDsYe8/Netx3q
 hqUEKgH3IBkkNSUto6QXM9mmt/0z4TmQlJcEcZ/XzEnpGaSLIC+uMjq9fIM7qhcoF+WT
 BT+Q==
X-Gm-Message-State: APjAAAVFipXYX3cAks/XdmETfVyRG55o40Y9DAIdExqRTWIavRRIS3Re
 bQoRBB5t7/sGM3AfluKmkv4=
X-Google-Smtp-Source: APXvYqyky4/vFL+WsbTkF+tGUtZqVgC52PrW/+DgGiIICaiq8pZbX5zw1WTPwenoUorf5FE9Kj8Qlg==
X-Received: by 2002:a17:90a:804a:: with SMTP id
 e10mr6853463pjw.41.1582085764323; 
 Tue, 18 Feb 2020 20:16:04 -0800 (PST)
Received: from localhost ([43.224.245.179])
 by smtp.gmail.com with ESMTPSA id m12sm465947pjf.25.2020.02.18.20.16.03
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Tue, 18 Feb 2020 20:16:03 -0800 (PST)
From: qiwuchen55@gmail.com
To: Larry.Finger@lwfinger.net,
	kvalo@codeaurora.org,
	davem@davemloft.net
Subject: [PATCH] b43legacy/sysfs.c: replace simple_strtol() with kstrtoint()
Date: Wed, 19 Feb 2020 12:15:59 +0800
Message-Id: <1582085759-17998-1-git-send-email-qiwuchen55@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_201606_028868_FFA1C8BF 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [qiwuchen55[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [qiwuchen55[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
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
Cc: chenqiwu <chenqiwu@xiaomi.com>, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

From: chenqiwu <chenqiwu@xiaomi.com>

The simple_strtol() function is deprecated since it does not
check for the range overflow. Use kstrtoint() instead.

Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
---
 drivers/net/wireless/broadcom/b43legacy/sysfs.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43legacy/sysfs.c b/drivers/net/wireless/broadcom/b43legacy/sysfs.c
index 9312c1d..eec087c 100644
--- a/drivers/net/wireless/broadcom/b43legacy/sysfs.c
+++ b/drivers/net/wireless/broadcom/b43legacy/sysfs.c
@@ -25,13 +25,15 @@
 static int get_integer(const char *buf, size_t count)
 {
 	char tmp[10 + 1] = { 0 };
-	int ret = -EINVAL;
+	int ret = -EINVAL, res;
 
 	if (count == 0)
 		goto out;
 	count = min_t(size_t, count, 10);
 	memcpy(tmp, buf, count);
-	ret = simple_strtol(tmp, NULL, 10);
+	ret = kstrtoint(tmp, 10, &res);
+	if (!ret)
+		return res;
 out:
 	return ret;
 }
-- 
1.9.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
