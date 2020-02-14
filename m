Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EAB415E318
	for <lists+b43-dev@lfdr.de>; Fri, 14 Feb 2020 17:27:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bl5D0mTB9sYdeViAWJjHJ4mXiG2ip7GLbEbPtZFJtHs=; b=gOVz/T9CwcF/vk
	oKnQFt6bC4iWp20GCx4akbmwvxJxPI/ZZBJXi5rRkg5WjfFYj7BstQWsTribG82ejIbMOfHcA1zI0
	3DkLyQLK709Wm+hpjEX1egwOvdVlEI4/c+W+vdVkiUmGeFM0+XFSAKQHbEqCzlGa+fua66I7VVWJP
	tHBrKz2JnAt0SZAMhGwi5xgx60yg9YQVNSzHHxhFVPaUIkQ3l3Vrg9tR5lZuco7wQtsjW5eg2eSe/
	IndCTYto5HXGlaDLeZkfxDEu2eombAQvEq/WFEX/IzRtHQKYRBnBPRufbNyAaoyNSab65rMzt6Xjv
	PLN9E/TRtRZ/B9tSXl8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2doP-0003Sk-28; Fri, 14 Feb 2020 16:27:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dTl-0005nY-Dh
 for b43-dev@lists.infradead.org; Fri, 14 Feb 2020 16:06:20 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0D0C524680;
 Fri, 14 Feb 2020 16:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696368;
 bh=JjKT3jkmYWo+VH1cMi7pE58cT6ZhUpPjOMoPMHW4uHA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BtiGyvs1zTt9mfVT2qEgwWcLicSiN/lyRscvmaOGU1hIxmY9wr2CKdY0yALXeDvg0
 gDYppxZSEFut5g8cftcGeBmMfuVfFlV4adYDC7HL2Ic4dWywe8DTgFufejp6xng/ea
 FXoB3qNSugGQUpe9i11OsuA550z2c7EW2Yfb7zb0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 198/459] b43legacy: Fix -Wcast-function-type
Date: Fri, 14 Feb 2020 10:57:28 -0500
Message-Id: <20200214160149.11681-198-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_080609_591946_873288E6 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Kees Cook <keescook@chromium.org>,
 Phong Tran <tranmanphong@gmail.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 Kalle Valo <kvalo@codeaurora.org>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

From: Phong Tran <tranmanphong@gmail.com>

[ Upstream commit 475eec112e4267232d10f4afe2f939a241692b6c ]

correct usage prototype of callback in tasklet_init().
Report by https://github.com/KSPP/linux/issues/20

Tested-by: Larry Finger <Larry.Finger@lwfinger.net>
Signed-off-by: Phong Tran <tranmanphong@gmail.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/broadcom/b43legacy/main.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43legacy/main.c b/drivers/net/wireless/broadcom/b43legacy/main.c
index 4325e91736eb3..8b6b657c4b85b 100644
--- a/drivers/net/wireless/broadcom/b43legacy/main.c
+++ b/drivers/net/wireless/broadcom/b43legacy/main.c
@@ -1275,8 +1275,9 @@ static void handle_irq_ucode_debug(struct b43legacy_wldev *dev)
 }
 
 /* Interrupt handler bottom-half */
-static void b43legacy_interrupt_tasklet(struct b43legacy_wldev *dev)
+static void b43legacy_interrupt_tasklet(unsigned long data)
 {
+	struct b43legacy_wldev *dev = (struct b43legacy_wldev *)data;
 	u32 reason;
 	u32 dma_reason[ARRAY_SIZE(dev->dma_reason)];
 	u32 merged_dma_reason = 0;
@@ -3741,7 +3742,7 @@ static int b43legacy_one_core_attach(struct ssb_device *dev,
 	b43legacy_set_status(wldev, B43legacy_STAT_UNINIT);
 	wldev->bad_frames_preempt = modparam_bad_frames_preempt;
 	tasklet_init(&wldev->isr_tasklet,
-		     (void (*)(unsigned long))b43legacy_interrupt_tasklet,
+		     b43legacy_interrupt_tasklet,
 		     (unsigned long)wldev);
 	if (modparam_pio)
 		wldev->__using_pio = true;
-- 
2.20.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
