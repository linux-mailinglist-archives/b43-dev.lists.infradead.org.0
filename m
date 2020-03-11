Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B84181390
	for <lists+b43-dev@lfdr.de>; Wed, 11 Mar 2020 09:47:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jue2O5ivLY9tquDkFIRCdhLpN3e9Eou4ZMr3mf7nIpc=; b=p0gXZHUeYwyC8ZcmZLOI5+L92o
	VdAkNutE6P3rTVnPnW9TP4UlkspnmotwFQXOrnaszLBoIkU2AI+2PWrjAQewgdTrKOcF8YYSvQoAm
	oMU2jAEgsl5VFPVXdtsUJ8JpNmzivgvp9L7Yg7BP+cGoQlkoLsldmQzlp+B8nXpNP4+c+VPUcbP/j
	+IkIBhUrppwd9y777+k3NMXUEgzAeBjm0qyaUq7sJ9Q4aqmiR6L7CppJjJdoS/nnb9ONf+jgg+owf
	Gw4NCnah3hx36ySwh4ee9FSKFyFmK9Wweko4MDHfTfWXFWn5TR1GBGzpzPc8jGbDOhLIrjcF/OG7j
	Nq8ZXujA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBx1U-0003eb-In; Wed, 11 Mar 2020 08:47:28 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBx1N-0003cm-V9
 for b43-dev@lists.infradead.org; Wed, 11 Mar 2020 08:47:23 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id DD438AF33;
 Wed, 11 Mar 2020 08:47:18 +0000 (UTC)
From: Takashi Iwai <tiwai@suse.de>
To: linux-wireless@vger.kernel.org
Subject: [PATCH 4/7] b43: Use scnprintf() for avoiding potential buffer
 overflow
Date: Wed, 11 Mar 2020 09:47:10 +0100
Message-Id: <20200311084713.18220-5-tiwai@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200311084713.18220-1-tiwai@suse.de>
References: <20200311084713.18220-1-tiwai@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_014722_145825_54F20F01 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: b43-dev@lists.infradead.org, Kalle Valo <kvalo@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Since snprintf() returns the would-be-output size instead of the
actual output size, the succeeding calls may go beyond the given
buffer limit.  Fix it by replacing with scnprintf().

Cc: b43-dev@lists.infradead.org
Signed-off-by: Takashi Iwai <tiwai@suse.de>
---
 drivers/net/wireless/broadcom/b43/debugfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/debugfs.c b/drivers/net/wireless/broadcom/b43/debugfs.c
index 1325727a74ed..dc1819ca52ac 100644
--- a/drivers/net/wireless/broadcom/b43/debugfs.c
+++ b/drivers/net/wireless/broadcom/b43/debugfs.c
@@ -51,7 +51,7 @@ struct b43_dfs_file *fops_to_dfs_file(struct b43_wldev *dev,
 #define fappend(fmt, x...)	\
 	do {							\
 		if (bufsize - count)				\
-			count += snprintf(buf + count,		\
+			count += scnprintf(buf + count,		\
 					  bufsize - count,	\
 					  fmt , ##x);		\
 		else						\
-- 
2.16.4


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
