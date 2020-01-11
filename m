Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FED138259
	for <lists+b43-dev@lfdr.de>; Sat, 11 Jan 2020 17:17:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+9WQabMwIXV+bzB+oRWc4QLIZsgpx7x5GYEB3XNQ65M=; b=EQW
	gkNbskFGBY/D9cMbrG2WEWIe8vsu5LN0vuaj7wsBAwmsnEAlDGEnBQCesNz4QaaWhaayHZdO12OsE
	3GUjnydMJHjFCPvr2YAN/QN1iqHi69gIGA0PznjFYYoexKLGFH2HsybgApRFu1c/VqsOwAM2QguUW
	HA0oCazM4bhiHROp09VupffDotGbR5pUAmqAlIT4R6F3FF5oDagosK8htyRyhbyrQvaKBDTWPyl2O
	L4LBRjqd3UP2DId5K4HFabD8sNSsVZNavfbexpT8fqxTmB9UpMxvuMsfL+zo5HU5cxzhTlqUQIn9V
	rvV+MgwnBm+sYJwkoAbkxiMSWnjxcxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqJSL-000476-MS; Sat, 11 Jan 2020 16:17:45 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqJSB-00045l-8g
 for b43-dev@lists.infradead.org; Sat, 11 Jan 2020 16:17:38 +0000
Received: by mail-pj1-x1044.google.com with SMTP id d5so2260737pjz.5
 for <b43-dev@lists.infradead.org>; Sat, 11 Jan 2020 08:17:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=3qsxOxyzUIJo5Og0LE2wha3b+zrq9Ey3zvbNrPmhSgU=;
 b=kmHxnnMIsPzGPPrne740ibD3VVsHeNhrALbjeolSo2zcwa/Ul3KR7/D5cW/SLljLpk
 /r6w0vcEzhuq8v6JNtUVz5cIYgP1RsjwYT22fhyHFCFu3Mnzh6BZWqdQ0+elnbNknqNr
 0pS/PY35vk8rcSKhREsTHIg/AKBIgkVetzc6Ug9xxlHwn0ciwotjRFwPSyto7yGhCnXk
 fvB/0F845AhJWlQI+RlspdJ5rd+lgqK76xxt364imICRgIV5dIcPpm/higFhiDwL613J
 05GQNbLbOwzIMfm4VIY9K+l6DtWFtUggBaNhOu9MJA6D37yZxwQYQI17TVygkbIs6MBH
 JK3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=3qsxOxyzUIJo5Og0LE2wha3b+zrq9Ey3zvbNrPmhSgU=;
 b=ggOZmoFq/dTBCNZq5UzPnxWt9tBjCYhj2UPUViatI5pxZSNkjmLyutc1Q2+WCh+J3R
 UKgQHFAyDxU4vBp5a41az3qNwBO8OQ9sa42Equ9QrwHAjvowcWTO+sl+3DWUaTTrz7ZC
 sKZHANfn1PTogf79Kl74b5e+RoRlIIRbiE6x3BxSub4r+ubl6uWNLDwlJIU9yUlN98Fv
 zHbqjKVen3hjZ1YWTuG86V3C2nhrMuTM0GoLBYZRAAVlhf2zvd9VvSJ97OuO3WXuESG0
 Rh6sBvSlEmCpCpuomw4RuUiW0iEJBXNgooswbxF7foi/VtxaWbt2BDvKRb7FYjM5frWD
 qrSA==
X-Gm-Message-State: APjAAAVIUXt4GaEFXUVnnJhqMRjevAUq94JOWPJBMNGsfVlJgqOEQpsK
 MxhiTiOQ4x29Q5/6Md1l0fA=
X-Google-Smtp-Source: APXvYqyhd7ku4jAYhfVHIzjTZ5bnm6nlWCK35xbkdmXy/0bTa0aKjf/6lg7Vcsn5OusKiXIvxznxyQ==
X-Received: by 2002:a17:902:b944:: with SMTP id
 h4mr11261502pls.92.1578759454360; 
 Sat, 11 Jan 2020 08:17:34 -0800 (PST)
Received: from oslab.tsinghua.edu.cn ([166.111.139.172])
 by smtp.gmail.com with ESMTPSA id j17sm7346835pfa.28.2020.01.11.08.17.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Jan 2020 08:17:33 -0800 (PST)
From: Jia-Ju Bai <baijiaju1990@gmail.com>
To: kvalo@codeaurora.org, davem@davemloft.net, gregkh@linuxfoundation.org,
 allison@lohutok.net, saurav.girepunje@gmail.com, tglx@linutronix.de,
 will@kernel.org
Subject: [PATCH] b43: Fix possible a data race in b43_op_tx()
Date: Sun, 12 Jan 2020 00:14:55 +0800
Message-Id: <20200111161455.26587-1-baijiaju1990@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_081735_344116_75A3A5DF 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (baijiaju1990[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (baijiaju1990[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: netdev@vger.kernel.org, Jia-Ju Bai <baijiaju1990@gmail.com>,
 linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

The functions b43_op_tx() and b43_tx_work() may be concurrently executed.

In b43_tx_work(), the variable wl->tx_queue_stopped[queue_num] is
accessed with holding a mutex lock wl->mutex. But in b43_op_tx(), the
identical variable wl->tx_queue_stopped[skb->queue_mapping] is accessed
without holding this mutex lock. Thus, a possible data race may occur.

To fix this data race, in b43_op_tx(), the variable 
wl->tx_queue_stopped[skb->queue_mapping] is accessed with holding the 
mutex lock wl->mutex.

This data race is found by the runtime testing of our tool DILP-2.

Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
---
 drivers/net/wireless/broadcom/b43/main.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index 39da1a4c30ac..adedb38f50f2 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -3625,6 +3625,11 @@ static void b43_op_tx(struct ieee80211_hw *hw,
 		      struct sk_buff *skb)
 {
 	struct b43_wl *wl = hw_to_b43_wl(hw);
+	bool stopped;
+
+	mutex_lock(&wl->mutex);
+	stopped = wl->tx_queue_stopped[skb->queue_mapping];
+	mutex_unlock(&wl->mutex);
 
 	if (unlikely(skb->len < 2 + 2 + 6)) {
 		/* Too short, this can't be a valid frame. */
@@ -3634,7 +3639,7 @@ static void b43_op_tx(struct ieee80211_hw *hw,
 	B43_WARN_ON(skb_shinfo(skb)->nr_frags);
 
 	skb_queue_tail(&wl->tx_queue[skb->queue_mapping], skb);
-	if (!wl->tx_queue_stopped[skb->queue_mapping]) {
+	if (!stopped) {
 		ieee80211_queue_work(wl->hw, &wl->tx_work);
 	} else {
 		ieee80211_stop_queue(wl->hw, skb->queue_mapping);
-- 
2.17.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
