Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA8B1DE95C
	for <lists+b43-dev@lfdr.de>; Fri, 22 May 2020 16:46:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hwHxidjgbFucuu+GVZZqr5dOG1D6hfbfNVVdVLXi+24=; b=rMk1JddyhCVHLk
	o42VDFPp74SGG48RqbqamlRBDY/DsltNII4qTX3FdhLyKgkKyC0g5arnfnTCTT5RBp9+KoHYjkX0y
	c0MgBGllHhGrndNf2Y8PmkSzpafX34AVLKa0PviDbzab7BGcRsIrO8uETLNjYuOTIwLVtkZnjv2BP
	wlX2F0roEzGZSu7UF9KhqT97+3rji7HRsZzl9HB7wR8BWC1kcvbxkttBx2L6arCkzY9TXoUU2S+eG
	R+UK4OTrQzGnUgZ6RGkdHF0n70J6DQqheK7ir4xQIsDJx2I0+lQO3aN7bZEzxRC0sEgoTL8Hpi63V
	p6+D+w0Ukm1YA/6Aiqbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc8wE-00045Q-Be; Fri, 22 May 2020 14:46:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc8vi-0003hp-53; Fri, 22 May 2020 14:45:47 +0000
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9D1A22053B;
 Fri, 22 May 2020 14:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590158745;
 bh=WFuyUyhfF0r2NIDkbY75yLpDco7NYc0wVtuTNDsXGf4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=o68/I4gQ9Zskbrv0XZqEAgSE4dXJ/pzXRdBWhxP0lKxz0F9wWU1del/rJ1fwqApo0
 o8N5NzfTnU0o/kJa1Gp+9rZYobdlZJDosuejulBUbMGbGpV6Bh4kg196AQR/Qor0zK
 6SX/7I03OBlaLyopYy/byBmYF+iAFb0nV89ZBT+Q=
Received: by pali.im (Postfix)
 id D74BD51E; Fri, 22 May 2020 16:45:43 +0200 (CEST)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	linux-mmc@vger.kernel.org
Subject: [PATCH 02/11] mmc: sdio: Change macro names for Marvell 8688 modules
Date: Fri, 22 May 2020 16:44:03 +0200
Message-Id: <20200522144412.19712-3-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200522144412.19712-1-pali@kernel.org>
References: <20200522144412.19712-1-pali@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_074546_267312_D2997BE7 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: brcm80211-dev-list.pdl@broadcom.com, libertas-dev@lists.infradead.org,
 Xinming Hu <huxinming820@gmail.com>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Amitkumar Karwar <amitkarwar@gmail.com>,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>, ath10k@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, brcm80211-dev-list@cypress.com,
 Kalle Valo <kvalo@codeaurora.org>, b43-dev@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

QWRkIHVuZGVyc2NvcmUgYXMgc2VwYXJhdG9yIGluIE1hcnZlbGwgODY4OCBtYWNybyBuYW1lcyBm
b3IgYmV0dGVyCnJlYWRhYmlsaXR5IGFuZCBjb25zaXN0ZW5jeS4KClNpZ25lZC1vZmYtYnk6IFBh
bGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVycy9uZXQvd2lyZWxlc3MvbWFy
dmVsbC9saWJlcnRhcy9pZl9zZGlvLmMgfCAyICstCiBpbmNsdWRlL2xpbnV4L21tYy9zZGlvX2lk
cy5oICAgICAgICAgICAgICAgICAgICB8IDQgKystLQogMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxl
c3MvbWFydmVsbC9saWJlcnRhcy9pZl9zZGlvLmMgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9tYXJ2
ZWxsL2xpYmVydGFzL2lmX3NkaW8uYwppbmRleCBhY2Y2MWI5M2I3ODIuLjQ0ZmJkMGFjYjg3YSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvbWFydmVsbC9saWJlcnRhcy9pZl9zZGlv
LmMKKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvbWFydmVsbC9saWJlcnRhcy9pZl9zZGlvLmMK
QEAgLTY1LDcgKzY1LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBzZGlvX2RldmljZV9pZCBpZl9z
ZGlvX2lkc1tdID0gewogCXsgU0RJT19ERVZJQ0UoU0RJT19WRU5ET1JfSURfTUFSVkVMTCwKIAkJ
CVNESU9fREVWSUNFX0lEX01BUlZFTExfTElCRVJUQVMpIH0sCiAJeyBTRElPX0RFVklDRShTRElP
X1ZFTkRPUl9JRF9NQVJWRUxMLAotCQkJU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84Njg4V0xBTikg
fSwKKwkJCVNESU9fREVWSUNFX0lEX01BUlZFTExfODY4OF9XTEFOKSB9LAogCXsgLyogZW5kOiBh
bGwgemVyb2VzICovCQkJCX0sCiB9OwogCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L21tYy9z
ZGlvX2lkcy5oIGIvaW5jbHVkZS9saW51eC9tbWMvc2Rpb19pZHMuaAppbmRleCA5NmY0M2UwZGM3
OGYuLjdlOTkyYTBlNmNjMCAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9tbWMvc2Rpb19pZHMu
aAorKysgYi9pbmNsdWRlL2xpbnV4L21tYy9zZGlvX2lkcy5oCkBAIC01Niw4ICs1Niw4IEBACiAK
ICNkZWZpbmUgU0RJT19WRU5ET1JfSURfTUFSVkVMTAkJCTB4MDJkZgogI2RlZmluZSBTRElPX0RF
VklDRV9JRF9NQVJWRUxMX0xJQkVSVEFTCQkweDkxMDMKLSNkZWZpbmUgU0RJT19ERVZJQ0VfSURf
TUFSVkVMTF84Njg4V0xBTgkJMHg5MTA0Ci0jZGVmaW5lIFNESU9fREVWSUNFX0lEX01BUlZFTExf
ODY4OEJUCQkweDkxMDUKKyNkZWZpbmUgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84Njg4X1dMQU4J
MHg5MTA0CisjZGVmaW5lIFNESU9fREVWSUNFX0lEX01BUlZFTExfODY4OF9CVAkJMHg5MTA1CiAj
ZGVmaW5lIFNESU9fREVWSUNFX0lEX01BUlZFTExfODc5N19GMAkJMHg5MTI4CiAjZGVmaW5lIFNE
SU9fREVWSUNFX0lEX01BUlZFTExfODg4N19GMAkJMHg5MTM0CiAKLS0gCjIuMjAuMQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGlu
ZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
