Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5921DE991
	for <lists+b43-dev@lfdr.de>; Fri, 22 May 2020 16:48:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j+gqY24pm8oCKUhnMRH1ZU/HpGh0HUxj5GJv7grdamQ=; b=EUwrkZnNLhogFY
	KWItFNfnRNRjLn6PA9mCJQb3E3Ndybsk2QakLOpA8jrh7GBDs65l8VeI5OiqqZvYXgh1GPev37NSe
	8abBmuNhtpR7yabX3NgcgDabqxxggBL/fvbUSFENMebTon4L6aQduankVoMr161QX0JR5jJdjZbWM
	Ki8EW6GJYTIoGuFCIMF1mKLZiAWjj6XxCMRYrqBpjMbjg9I0UmurZzVZwapCJcSUmI5uw2/4deEvO
	Rh3HpDwCN8jQhclTLY/+vigg4yXuTDPp8xJaXqdc6IsaTc58GXNzstIY36jUOukA6sfpgNr2w1yl7
	1MW4K+eBBppKiDybM4kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc8yc-0006Q8-Er; Fri, 22 May 2020 14:48:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc8w2-00041s-OV; Fri, 22 May 2020 14:46:08 +0000
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E68F12053B;
 Fri, 22 May 2020 14:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590158765;
 bh=9vrfLJZTL8WRQ1zupaCKPmQrLZnRZD1ZGr/IqCu0zrg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jK2flk8kqtjnzRkud16YaMP5KNZWB2D/e0eVyzKP27T567icbolifPhI0j0G+ve+Y
 H6h8Xme+lxQmSFqw8laWH/FDENfb0FnxwRdGJDoqspL0SBjr8THw6h8twJq4I/UXhy
 XiLnCTKBOSl/T1MRltWqSS2+25W73HEc0UC85IPc=
Received: by pali.im (Postfix)
 id 2D0B651E; Fri, 22 May 2020 16:46:03 +0200 (CEST)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	linux-mmc@vger.kernel.org
Subject: [PATCH 09/11] mmc: sdio: Move SDIO IDs from b43-sdio driver to common
 include file
Date: Fri, 22 May 2020 16:44:10 +0200
Message-Id: <20200522144412.19712-10-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200522144412.19712-1-pali@kernel.org>
References: <20200522144412.19712-1-pali@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_074607_057964_DFC9BAF2 
X-CRM114-Status: GOOD (  10.70  )
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
IG1hY3Jvcy4KClNpZ25lZC1vZmYtYnk6IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+Ci0t
LQogZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYjQzL3NkaW8uYyB8IDQgKystLQogaW5j
bHVkZS9saW51eC9tbWMvc2Rpb19pZHMuaCAgICAgICAgICAgICB8IDQgKysrKwogMiBmaWxlcyBj
aGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYjQzL3NkaW8uYyBiL2RyaXZlcnMvbmV0L3dpcmVs
ZXNzL2Jyb2FkY29tL2I0My9zZGlvLmMKaW5kZXggODgxYTc5MzhjNDk0Li4wMmIwY2ZkNTM1YWIg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29tL2I0My9zZGlvLmMKKysr
IGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYjQzL3NkaW8uYwpAQCAtMTgwLDggKzE4
MCw4IEBAIHN0YXRpYyB2b2lkIGI0M19zZGlvX3JlbW92ZShzdHJ1Y3Qgc2Rpb19mdW5jICpmdW5j
KQogfQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IHNkaW9fZGV2aWNlX2lkIGI0M19zZGlvX2lkc1td
ID0gewotCXsgU0RJT19ERVZJQ0UoMHgwMmQwLCAweDA0NGIpIH0sIC8qIE5pbnRlbmRvIFdpaSBX
TEFOIGRhdWdodGVyIGNhcmQgKi8KLQl7IFNESU9fREVWSUNFKDB4MDA5MiwgMHgwMDA0KSB9LCAv
KiBDLWd1eXMsIEluYy4gRVctQ0cxMTAyR0MgKi8KKwl7IFNESU9fREVWSUNFKFNESU9fVkVORE9S
X0lEX0JST0FEQ09NLCBTRElPX0RFVklDRV9JRF9CUk9BRENPTV9OSU5URU5ET19XSUkpIH0sCisJ
eyBTRElPX0RFVklDRShTRElPX1ZFTkRPUl9JRF9DR1VZUywgU0RJT19ERVZJQ0VfSURfQ0dVWVNf
RVdfQ0cxMTAyR0MpIH0sCiAJeyB9LAogfTsKIApkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9t
bWMvc2Rpb19pZHMuaCBiL2luY2x1ZGUvbGludXgvbW1jL3NkaW9faWRzLmgKaW5kZXggMjg5NGY3
NzM5YWNjLi44ZTdhMDY4M2I5MjcgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvbW1jL3NkaW9f
aWRzLmgKKysrIGIvaW5jbHVkZS9saW51eC9tbWMvc2Rpb19pZHMuaApAQCAtMjUsNiArMjUsOSBA
QAogICogVmVuZG9ycyBhbmQgZGV2aWNlcy4gIFNvcnQga2V5OiB2ZW5kb3IgZmlyc3QsIGRldmlj
ZSBuZXh0LgogICovCiAKKyNkZWZpbmUgU0RJT19WRU5ET1JfSURfQ0dVWVMJCQkweDAwOTIKKyNk
ZWZpbmUgU0RJT19ERVZJQ0VfSURfQ0dVWVNfRVdfQ0cxMTAyR0MJMHgwMDA0CisKICNkZWZpbmUg
U0RJT19WRU5ET1JfSURfQVRIRVJPUwkJCTB4MDI3MQogI2RlZmluZSBTRElPX0RFVklDRV9JRF9B
VEhFUk9TX0FSNjAwM18wMAkweDAzMDAKICNkZWZpbmUgU0RJT19ERVZJQ0VfSURfQVRIRVJPU19B
UjYwMDNfMDEJMHgwMzAxCkBAIC0zNyw2ICs0MCw3IEBACiAjZGVmaW5lIFNESU9fREVWSUNFX0lE
X0FUSEVST1NfUUNBOTM3NwkJMHgwNzAxCiAKICNkZWZpbmUgU0RJT19WRU5ET1JfSURfQlJPQURD
T00JCQkweDAyZDAKKyNkZWZpbmUgU0RJT19ERVZJQ0VfSURfQlJPQURDT01fTklOVEVORE9fV0lJ
CTB4MDQ0YgogI2RlZmluZSBTRElPX0RFVklDRV9JRF9CUk9BRENPTV80MzE0MwkJMHhhODg3CiAj
ZGVmaW5lIFNESU9fREVWSUNFX0lEX0JST0FEQ09NXzQzMjQxCQkweDQzMjQKICNkZWZpbmUgU0RJ
T19ERVZJQ0VfSURfQlJPQURDT01fNDMyOQkJMHg0MzI5Ci0tIAoyLjIwLjEKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlz
dApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
