Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47FD51DE985
	for <lists+b43-dev@lfdr.de>; Fri, 22 May 2020 16:48:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dWFS58UMCewtGxGF5+0wh3MRn2WwQkTM4b4Nj/0L+2Y=; b=Wld/27SJFDl7lB
	3WJYQdYwSf/11jq+Ml497Zq2CskY7GCq+g5w9OCfQWknm4rUNHZkXkQoH5Blcn+fIUJY72t2KEWIR
	OusgYCdxj5noILd7WiA1Hk8BcBdfS+nsQwEouBtdshawEI89wxEQ/yUdawzXUpGEi5Bw/AwdW/q7K
	0hVM1JF4kEB1wUHk5/Cq+8ga6W+EW4KpsjNJRfQS0SRax4FbAmRHqQ8SgYhO5dLdflSS+ny7rDsqR
	+v2ds6Oa/FYzB21NPaMv73oyfIgJzHozoejovmkrtwZedy0JRc/Lvih0teWa2ASblAO9o0U6qEqy7
	r8Sd/rzOZSd4nr6qVJ6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc8xp-0005eH-LT; Fri, 22 May 2020 14:47:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc8vu-0003uG-AS; Fri, 22 May 2020 14:46:00 +0000
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BFD8320727;
 Fri, 22 May 2020 14:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590158757;
 bh=FK2cjUuXlz/7vUmgD5dr+Rxd2hc1F0f/Urz70jIMZa4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=R4RGsK78MnWMvmiJBT2se89kpkaB0qz25O7LIel5g4KT4tf6cSu6RGEEHAp9j9sjs
 sK/teQ9m8Di3KhBmn5dUiez6gg8GmzdC6PGfJXWc+BAeE8sq4+l4tHgwd1oVnYsNrC
 NNgAol6PCO16S/2N/bcbwUCFXI+seymMU3u2HK+Y=
Received: by pali.im (Postfix)
 id 049BC51E; Fri, 22 May 2020 16:45:56 +0200 (CEST)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	linux-mmc@vger.kernel.org
Subject: [PATCH 06/11] mmc: sdio: Move SDIO IDs from smssdio driver to common
 include file
Date: Fri, 22 May 2020 16:44:07 +0200
Message-Id: <20200522144412.19712-7-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200522144412.19712-1-pali@kernel.org>
References: <20200522144412.19712-1-pali@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_074558_589139_CE64ED10 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
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

RGVmaW5lIGFwcHJvcHJpYXRlIG1hY3JvIG5hbWVzIGZvciBjb25zaXN0ZW5jeSB3aXRoIG90aGVy
IFNpYW5vIG1hY3Jvcy4KClNpZ25lZC1vZmYtYnk6IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5v
cmc+Ci0tLQogZHJpdmVycy9tZWRpYS9tbWMvc2lhbm8vc21zc2Rpby5jIHwgMTAgKysrKystLS0t
LQogaW5jbHVkZS9saW51eC9tbWMvc2Rpb19pZHMuaCAgICAgIHwgIDUgKysrKysKIDIgZmlsZXMg
Y2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL21lZGlhL21tYy9zaWFuby9zbXNzZGlvLmMgYi9kcml2ZXJzL21lZGlhL21tYy9zaWFu
by9zbXNzZGlvLmMKaW5kZXggZGVmNWU5Mzg0OWQyLi4wNjViNTcyZTAyNzIgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvbWVkaWEvbW1jL3NpYW5vL3Ntc3NkaW8uYworKysgYi9kcml2ZXJzL21lZGlhL21t
Yy9zaWFuby9zbXNzZGlvLmMKQEAgLTU4LDE1ICs1OCwxNSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IHNkaW9fZGV2aWNlX2lkIHNtc3NkaW9faWRzW10gPSB7CiAJIC5kcml2ZXJfZGF0YSA9IFNNUzFY
WFhfQk9BUkRfU0lBTk9fVkVHQX0sCiAJe1NESU9fREVWSUNFKFNESU9fVkVORE9SX0lEX1NJQU5P
LCBTRElPX0RFVklDRV9JRF9TSUFOT19WRU5JQ0UpLAogCSAuZHJpdmVyX2RhdGEgPSBTTVMxWFhY
X0JPQVJEX1NJQU5PX1ZFR0F9LAotCXtTRElPX0RFVklDRShTRElPX1ZFTkRPUl9JRF9TSUFOTywg
MHgzMDIpLAorCXtTRElPX0RFVklDRShTRElPX1ZFTkRPUl9JRF9TSUFOTywgU0RJT19ERVZJQ0Vf
SURfU0lBTk9fTUlORyksCiAJLmRyaXZlcl9kYXRhID0gU01TMVhYWF9CT0FSRF9TSUFOT19NSU5H
fSwKLQl7U0RJT19ERVZJQ0UoU0RJT19WRU5ET1JfSURfU0lBTk8sIDB4NTAwKSwKKwl7U0RJT19E
RVZJQ0UoU0RJT19WRU5ET1JfSURfU0lBTk8sIFNESU9fREVWSUNFX0lEX1NJQU5PX1BFTEUpLAog
CS5kcml2ZXJfZGF0YSA9IFNNUzFYWFhfQk9BUkRfU0lBTk9fUEVMRX0sCi0Je1NESU9fREVWSUNF
KFNESU9fVkVORE9SX0lEX1NJQU5PLCAweDYwMCksCisJe1NESU9fREVWSUNFKFNESU9fVkVORE9S
X0lEX1NJQU5PLCBTRElPX0RFVklDRV9JRF9TSUFOT19SSU8pLAogCS5kcml2ZXJfZGF0YSA9IFNN
UzFYWFhfQk9BUkRfU0lBTk9fUklPfSwKLQl7U0RJT19ERVZJQ0UoU0RJT19WRU5ET1JfSURfU0lB
Tk8sIDB4NzAwKSwKKwl7U0RJT19ERVZJQ0UoU0RJT19WRU5ET1JfSURfU0lBTk8sIFNESU9fREVW
SUNFX0lEX1NJQU5PX0RFTlZFUl8yMTYwKSwKIAkuZHJpdmVyX2RhdGEgPSBTTVMxWFhYX0JPQVJE
X1NJQU5PX0RFTlZFUl8yMTYwfSwKLQl7U0RJT19ERVZJQ0UoU0RJT19WRU5ET1JfSURfU0lBTk8s
IDB4ODAwKSwKKwl7U0RJT19ERVZJQ0UoU0RJT19WRU5ET1JfSURfU0lBTk8sIFNESU9fREVWSUNF
X0lEX1NJQU5PX0RFTlZFUl8xNTMwKSwKIAkuZHJpdmVyX2RhdGEgPSBTTVMxWFhYX0JPQVJEX1NJ
QU5PX0RFTlZFUl8xNTMwfSwKIAl7IC8qIGVuZDogYWxsIHplcm9lcyAqLyB9LAogfTsKZGlmZiAt
LWdpdCBhL2luY2x1ZGUvbGludXgvbW1jL3NkaW9faWRzLmggYi9pbmNsdWRlL2xpbnV4L21tYy9z
ZGlvX2lkcy5oCmluZGV4IGM5YWNhNTdkNGRlYS4uOWVjNjc1YTdhYzM3IDEwMDY0NAotLS0gYS9p
bmNsdWRlL2xpbnV4L21tYy9zZGlvX2lkcy5oCisrKyBiL2luY2x1ZGUvbGludXgvbW1jL3NkaW9f
aWRzLmgKQEAgLTg4LDYgKzg4LDExIEBACiAjZGVmaW5lIFNESU9fREVWSUNFX0lEX1NJQU5PX05J
Q0UJCTB4MDIwMgogI2RlZmluZSBTRElPX0RFVklDRV9JRF9TSUFOT19WRUdBX0EwCQkweDAzMDAK
ICNkZWZpbmUgU0RJT19ERVZJQ0VfSURfU0lBTk9fVkVOSUNFCQkweDAzMDEKKyNkZWZpbmUgU0RJ
T19ERVZJQ0VfSURfU0lBTk9fTUlORwkJMHgwMzAyCisjZGVmaW5lIFNESU9fREVWSUNFX0lEX1NJ
QU5PX1BFTEUJCTB4MDUwMAorI2RlZmluZSBTRElPX0RFVklDRV9JRF9TSUFOT19SSU8JCTB4MDYw
MAorI2RlZmluZSBTRElPX0RFVklDRV9JRF9TSUFOT19ERU5WRVJfMjE2MAkweDA3MDAKKyNkZWZp
bmUgU0RJT19ERVZJQ0VfSURfU0lBTk9fREVOVkVSXzE1MzAJMHgwODAwCiAjZGVmaW5lIFNESU9f
REVWSUNFX0lEX1NJQU5PX05PVkFfQTAJCTB4MTEwMAogI2RlZmluZSBTRElPX0RFVklDRV9JRF9T
SUFOT19TVEVMTEFSIAkJMHg1MzQ3CiAKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2I0My1kZXYK
