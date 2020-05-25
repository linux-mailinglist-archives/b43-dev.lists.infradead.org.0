Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CCA1E079F
	for <lists+b43-dev@lfdr.de>; Mon, 25 May 2020 09:16:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+u2KQ5yKwnqn+3FlkETclcKVjZXiG8vVQOe60rzh6r8=; b=O1RXYCJuYVXA2V
	fNPczWGGYlE0SwzZuUVV3AQ2ewQklkIeS6lODRZAGPXsp33gtC71T1zAsO7uuhIpUSX7nBR0Jm8aP
	zT1vyaoJpAc4TP+GYZT5hYwlw1q/7jSvd8q2Nn1RoOn+S5fwO77v5G4ZaOp9OOzpUkHRGBgoRY8a4
	VAMrjpi/fcBc66WTurk9EdhhCC8TmI47dP49BxEMKE3a/nPKAKVph27PWgNvtCE/zXJ1uwhUFXrQc
	M5uS3nTS3HivpLaqcIif25MokYdqHkGBm1dAMdeFEJPiDKw6sDA8ieIUwfMDjnwZhrxKX9SODZI5S
	qBxX0+WjiGCQhDyi5/Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd7L4-00025h-Js; Mon, 25 May 2020 07:15:58 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd7L0-00024A-VV
 for b43-dev@lists.infradead.org; Mon, 25 May 2020 07:15:56 +0000
Received: by mail-ua1-x941.google.com with SMTP id f9so5817433uaq.2
 for <b43-dev@lists.infradead.org>; Mon, 25 May 2020 00:15:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=tW47sLPl7yvQUlpsqFGaRt0/eA0f/XtExRc8VNJ5L8s=;
 b=X3f906WAm1B7znVikPVukV6tgsYYUkm8v+SSd0x+rtjZfgsQwXU/C5hodPsbUpzf+R
 BsNenIyHnRQKNVI0gEyOsBlWkBG9l8kpemHYf5arLdSXoKccfSR3MFVTK8U28fiH6RFy
 zpF/6oIiC1R937exP0cxNj+fLhwVY5mLbZLV4dAnb+aI8JqZcUh6rWxOf0f+av+GNbEO
 Qno7YKLbvApPD9bO42MZre7gFikypcUpyT6VmJmffeKr84+gD7MR4Fb6R8cH1oPFWWTr
 ICbH30dzo42Yu5VE2FUsF3x6DtchJd7jbvjnBmUjmQDi3KtvBDtnQfJBA4d0R3eKGEM7
 ad7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=tW47sLPl7yvQUlpsqFGaRt0/eA0f/XtExRc8VNJ5L8s=;
 b=jQNgy5oA+rBJN7XfrRyZuBMJR2Bggfck0yO1ON8NrRazPJxnTTCDsk3bRfppljTxcp
 flKUL/ou9wUkVhBaiG4EtLD2Rwty3CfKYFFq+KwX9myDvtT+JN8Ox7Ojv8rEA+ZEVU0f
 +3sKK/GbvpdS8ZntOs0noZxlPG1XlJEa8t5G9xi4t/HVJb1GrsW6QQc933Vk0CUPmcmu
 9AGxLUBw3djxKnVA2J8pAuJ0NqCJNeZ2wFQcyN78YwotvBz3s+Xb0L/PcTvsYDnpklZp
 /3TqBzktgwLfb7KvEQ89YBbfdj+A+o0sdWk8oMjNFu6WM4frff6pXJaLJwJzSjNFibmp
 enXA==
X-Gm-Message-State: AOAM532GNRNiuy5Vx9MEgWfAhFe3jraWtESFIhqazLzFiFrs+NhZCSeJ
 ZObPe1bAVSLANfNM+JSWJPF/nIspF8qK6pg0OGi+Yg==
X-Google-Smtp-Source: ABdhPJyn+vBET+wry7tIEPuyPG84ngjDJAb2r8EvcfU02yuysMA8153T8p81LOO/yO3mggJ+Oo/TpwlvMW9/07YJ+KQ=
X-Received: by 2002:ab0:7293:: with SMTP id w19mr17816123uao.129.1590390952511; 
 Mon, 25 May 2020 00:15:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200522144412.19712-1-pali@kernel.org>
In-Reply-To: <20200522144412.19712-1-pali@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 25 May 2020 09:15:16 +0200
Message-ID: <CAPDyKFqwrtJy2Ss0_KcBtpGP78d_BePTGJp01KtfuOaQqiwiHg@mail.gmail.com>
Subject: Re: [PATCH 00/11] mmc: sdio: Move SDIO IDs from drivers to common
 include file
To: =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_001555_030596_25F7F42F 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: brcm80211-dev-list.pdl@broadcom.com, libertas-dev@lists.infradead.org,
 Xinming Hu <huxinming820@gmail.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>,
 =?UTF-8?B?TWFyZWsgQmVow7pu?= <marek.behun@nic.cz>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>, ath10k@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 brcm80211-dev-list <brcm80211-dev-list@cypress.com>,
 Kalle Valo <kvalo@codeaurora.org>, b43-dev@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

T24gRnJpLCAyMiBNYXkgMjAyMCBhdCAxNjo0NSwgUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9y
Zz4gd3JvdGU6Cj4KPiBNb3N0IFNESU8gSURzIGFyZSBkZWZpbmVkIGluIHRoZSBjb21tb24gaW5j
bHVkZSBmaWxlIGxpbnV4L21tYy9zZGlvX2lkcy5oLgo+IEJ1dCBzb21lIGRyaXZlcnMgZGVmaW5l
IElEcyBsb2NhbGx5IG9yIGRvIG5vdCB1c2UgZXhpc3RpbmcgbWFjcm9zIGZyb20gdGhlCj4gY29t
bW9uIGluY2x1ZGUgZmlsZS4KPgo+IFRoaXMgcGF0Y2ggc2VyaWVzIGZpeGVzIGFib3ZlIGluY29u
c2lzdGVuY3kuIEl0IGRlZmluZXMgbWlzc2luZyBtYWNybyBuYW1lcwo+IGFuZCBtb3ZlcyBhbGwg
cmVtYWluaW5nIFNESU8gSURzIGZyb20gZHJpdmVycyB0byB0aGUgY29tbW9uIGluY2x1ZGUgZmls
ZS4KPiBBbHNvIHNvbWUgbWFjcm8gbmFtZXMgYXJlIGNoYW5nZWQgdG8gZm9sbG93IGV4aXN0aW5n
IG5hbWluZyBjb252ZW50aW9ucy4KClRoYW5rcyAtIGEgbmljZSBjbGVhbnVwIQoKSSBndWVzcyB0
aGlzIGlzIGJlc3QgcXVldWVkIHZpYSBteSBtbWMgdHJlZSwgdW5sZXNzIGJsdWV0b290aC93aXJl
bGVzcwptYWludGFpbmVycyB0aGluayB0aGVyZSBhcmUgc29tZSBwcm9ibGVtcyB3aXRoIHRoYXQu
IEkgd2lsbCB3YWl0IGZvcgphbiBhY2sgZnJvbSB0aGVtIGJlZm9yZSBhcHBseWluZy4KCktpbmQg
cmVnYXJkcwpVZmZlCgo+Cj4gUGFsaSBSb2jDoXIgKDExKToKPiAgIG1tYzogc2RpbzogRml4IG1h
Y3JvIG5hbWUgZm9yIE1hcnZlbGwgZGV2aWNlIHdpdGggSUQgMHg5MTM0Cj4gICBtbWM6IHNkaW86
IENoYW5nZSBtYWNybyBuYW1lcyBmb3IgTWFydmVsbCA4Njg4IG1vZHVsZXMKPiAgIG1tYzogc2Rp
bzogTW92ZSBTRElPIElEcyBmcm9tIG13aWZpZXggZHJpdmVyIHRvIGNvbW1vbiBpbmNsdWRlIGZp
bGUKPiAgIG1tYzogc2RpbzogTW92ZSBTRElPIElEcyBmcm9tIGJ0bXJ2bCBkcml2ZXIgdG8gY29t
bW9uIGluY2x1ZGUgZmlsZQo+ICAgbW1jOiBzZGlvOiBNb3ZlIFNESU8gSURzIGZyb20gYnRtdGtz
ZGlvIGRyaXZlciB0byBjb21tb24gaW5jbHVkZSBmaWxlCj4gICBtbWM6IHNkaW86IE1vdmUgU0RJ
TyBJRHMgZnJvbSBzbXNzZGlvIGRyaXZlciB0byBjb21tb24gaW5jbHVkZSBmaWxlCj4gICBtbWM6
IHNkaW86IE1vdmUgU0RJTyBJRHMgZnJvbSBhdGg2a2wgZHJpdmVyIHRvIGNvbW1vbiBpbmNsdWRl
IGZpbGUKPiAgIG1tYzogc2RpbzogTW92ZSBTRElPIElEcyBmcm9tIGF0aDEwayBkcml2ZXIgdG8g
Y29tbW9uIGluY2x1ZGUgZmlsZQo+ICAgbW1jOiBzZGlvOiBNb3ZlIFNESU8gSURzIGZyb20gYjQz
LXNkaW8gZHJpdmVyIHRvIGNvbW1vbiBpbmNsdWRlIGZpbGUKPiAgIG1tYzogc2RpbzogRml4IEN5
cHJlc3MgU0RJTyBJRHMgbWFjcm9zIGluIGNvbW1vbiBpbmNsdWRlIGZpbGUKPiAgIG1tYzogc2Rp
bzogU29ydCBhbGwgU0RJTyBJRHMgaW4gY29tbW9uIGluY2x1ZGUgZmlsZQo+Cj4gIGRyaXZlcnMv
Ymx1ZXRvb3RoL2J0bXJ2bF9zZGlvLmMgICAgICAgICAgICAgICB8IDE4ICsrLS0KPiAgZHJpdmVy
cy9ibHVldG9vdGgvYnRtdGtzZGlvLmMgICAgICAgICAgICAgICAgIHwgIDQgKy0KPiAgZHJpdmVy
cy9tZWRpYS9tbWMvc2lhbm8vc21zc2Rpby5jICAgICAgICAgICAgIHwgMTAgKy0KPiAgZHJpdmVy
cy9tbWMvY29yZS9xdWlya3MuaCAgICAgICAgICAgICAgICAgICAgIHwgIDIgKy0KPiAgZHJpdmVy
cy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway9zZGlvLmMgICAgICAgIHwgMjUgKystLS0KPiAgZHJp
dmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway9zZGlvLmggICAgICAgIHwgIDggLS0KPiAgZHJp
dmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDZrbC9oaWYuaCAgICAgICAgIHwgIDYgLS0KPiAgZHJp
dmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDZrbC9zZGlvLmMgICAgICAgIHwgMTcgKystLQo+ICBk
cml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9iNDMvc2Rpby5jICAgICAgfCAgNCArLQo+ICAu
Li4vYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL2JjbXNkaC5jICAgICAgfCAgNiArLQo+ICAu
Li4vYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL3NkaW8uYyAgICAgICAgfCAgNCArLQo+ICAu
Li4vbmV0L3dpcmVsZXNzL21hcnZlbGwvbGliZXJ0YXMvaWZfc2Rpby5jICAgfCAgMiArLQo+ICBk
cml2ZXJzL25ldC93aXJlbGVzcy9tYXJ2ZWxsL213aWZpZXgvc2Rpby5jICAgfCAzOCArKy0tLS0t
LQo+ICBpbmNsdWRlL2xpbnV4L21tYy9zZGlvX2lkcy5oICAgICAgICAgICAgICAgICAgfCA5NCAr
KysrKysrKysrKysrKy0tLS0tCj4gIDE0IGZpbGVzIGNoYW5nZWQsIDEyMCBpbnNlcnRpb25zKCsp
LCAxMTggZGVsZXRpb25zKC0pCj4KPiAtLQo+IDIuMjAuMQo+CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9iNDMtZGV2Cg==
