Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E6A1E5CE8
	for <lists+b43-dev@lfdr.de>; Thu, 28 May 2020 12:16:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=89gKE8Hmx2+TiL8nFOhYzLJELmvdFd8zsu71YxvRqt4=; b=rWru/eBhPJ+Xvh
	+/JrPyO0qH2NfDMvOvLX388e/pTguTFyBt3KqXE+8MSRp93yf2DuGFF3Twxs3orTnGHswvfm3VbLR
	QQvVtrB2Cv5fqlO2gnILNBy/bgz5P5M5HiNFC9LdcoYOzDcctx7AlYAvH/bOJCCgXNnJ2dCkqAkXg
	J4V519kxyYkDRROZO6habyF1HYg8Q7pDAuxfVthrNk+BSFRlfAn9ql9r9Yb8NWis+EqovFZmvhD/7
	x2+s52XlGphIJOHCHry1U23qqzBZvbm+GbvuGzEZTyAoO5T3ipoDFxoRcRov97GPC+IjKNr3OViHs
	UsysdozlLAhzewlRJ0dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeFZB-0005hk-MJ; Thu, 28 May 2020 10:15:13 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeFYf-0005gV-BE
 for b43-dev@lists.infradead.org; Thu, 28 May 2020 10:14:42 +0000
Received: by mail-vk1-xa43.google.com with SMTP id m23so265124vko.2
 for <b43-dev@lists.infradead.org>; Thu, 28 May 2020 03:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=CX+u123nVjVuRZW6zRvLQzHDlGFq6dyKso1AdFfB1VU=;
 b=ylyyWluJV1udCPHKbUpBa9gzteEE9rpam5yb+9Qo5ZwIaIvYSKHGX3rwW8Qu1yRVbs
 s71Mhpbn4QTKCa9jPCBH3htvR2tWok5/1SRIeN1hxVVWT5gP564EBK2f09DGMHTsm88k
 E/1/Mm9s9RRLFrSj/olPzuvMcy35QUUaEA3viA62YTJSswW4ihcjUcj0j3CqjQk1t0Tw
 fOD6/+BDIpMYgME2I6zR07nY/c/eQBKM+cPSdHE+aeP51ba14fhxbL0ogMP3G7O7Ngvi
 MEJknki2sFvjerUF1dfNz5OXK1ad6hNSCiQ1ajt5pWLA71kvbSH7LxLetwkAl3aAifv+
 ZtRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CX+u123nVjVuRZW6zRvLQzHDlGFq6dyKso1AdFfB1VU=;
 b=ii4hHxlQFzTvoDbRRX3fcyEEcI4uB1z+Hfux/0BG+sLLx+WvXjxXHMYfDTUHwztiMU
 jgvTQ4qaQpkHZGKhyOQQBibuxuDX0Q7k/VvyH5oScV6Y6LOqJyfpfgfcHT5myDFAeO+h
 yyfDY+6jC/vwf/NJn3lKkgE/O70F3K9FhFeR42DRbHwZ3waoxl4/OIWzB27AJdkzF41K
 Vz63Eq2d2XxHp3x2HTd0cjsCy41f52GHssKcqzAfY4+VxKgcCgbe9aIS67AEpemEsn20
 rOk5bOvB1PMlECZvRPvkgUFutpyFht0aIvHEDAKOPsyyDxxdoOq/u76F1PPt/4pZ4rAX
 Ucww==
X-Gm-Message-State: AOAM533Q3o8wX3meiSbN94tMKwCuyQtDtmIFOmnJhTBsS6MvibJSlCZ4
 s/8astvFzRiLl68mDaEfOiEqXTH9/VIC6PZHqLbx0g==
X-Google-Smtp-Source: ABdhPJzK0sB7xaJ5Xvcd9jk++euAwMqH3Mxp+8vmK46elIBGi117Z0Erqx3b1G/MIRgbK/NHLsfYjW544ZgBjhty6p4=
X-Received: by 2002:a1f:fc06:: with SMTP id a6mr1441822vki.101.1590660877077; 
 Thu, 28 May 2020 03:14:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200522144412.19712-1-pali@kernel.org>
 <CAPDyKFqwrtJy2Ss0_KcBtpGP78d_BePTGJp01KtfuOaQqiwiHg@mail.gmail.com>
In-Reply-To: <CAPDyKFqwrtJy2Ss0_KcBtpGP78d_BePTGJp01KtfuOaQqiwiHg@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 28 May 2020 12:13:59 +0200
Message-ID: <CAPDyKFrT0bp+HHPZemFEVjhNXbWB_P2NWQxVU43rexzdYB3reg@mail.gmail.com>
Subject: Re: [PATCH 00/11] mmc: sdio: Move SDIO IDs from drivers to common
 include file
To: =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_031441_390492_8C40855A 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

T24gTW9uLCAyNSBNYXkgMjAyMCBhdCAwOToxNSwgVWxmIEhhbnNzb24gPHVsZi5oYW5zc29uQGxp
bmFyby5vcmc+IHdyb3RlOgo+Cj4gT24gRnJpLCAyMiBNYXkgMjAyMCBhdCAxNjo0NSwgUGFsaSBS
b2jDoXIgPHBhbGlAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPgo+ID4gTW9zdCBTRElPIElEcyBhcmUg
ZGVmaW5lZCBpbiB0aGUgY29tbW9uIGluY2x1ZGUgZmlsZSBsaW51eC9tbWMvc2Rpb19pZHMuaC4K
PiA+IEJ1dCBzb21lIGRyaXZlcnMgZGVmaW5lIElEcyBsb2NhbGx5IG9yIGRvIG5vdCB1c2UgZXhp
c3RpbmcgbWFjcm9zIGZyb20gdGhlCj4gPiBjb21tb24gaW5jbHVkZSBmaWxlLgo+ID4KPiA+IFRo
aXMgcGF0Y2ggc2VyaWVzIGZpeGVzIGFib3ZlIGluY29uc2lzdGVuY3kuIEl0IGRlZmluZXMgbWlz
c2luZyBtYWNybyBuYW1lcwo+ID4gYW5kIG1vdmVzIGFsbCByZW1haW5pbmcgU0RJTyBJRHMgZnJv
bSBkcml2ZXJzIHRvIHRoZSBjb21tb24gaW5jbHVkZSBmaWxlLgo+ID4gQWxzbyBzb21lIG1hY3Jv
IG5hbWVzIGFyZSBjaGFuZ2VkIHRvIGZvbGxvdyBleGlzdGluZyBuYW1pbmcgY29udmVudGlvbnMu
Cj4KPiBUaGFua3MgLSBhIG5pY2UgY2xlYW51cCEKPgo+IEkgZ3Vlc3MgdGhpcyBpcyBiZXN0IHF1
ZXVlZCB2aWEgbXkgbW1jIHRyZWUsIHVubGVzcyBibHVldG9vdGgvd2lyZWxlc3MKPiBtYWludGFp
bmVycyB0aGluayB0aGVyZSBhcmUgc29tZSBwcm9ibGVtcyB3aXRoIHRoYXQuIEkgd2lsbCB3YWl0
IGZvcgo+IGFuIGFjayBmcm9tIHRoZW0gYmVmb3JlIGFwcGx5aW5nLgoKSXQncyBnZXR0aW5nIGxh
dGUgZm9yIHY1LjgsIHNvIEkgZGVjaWRlZCB0byBxdWV1ZSB0aGlzIHVwIGFzIGl0J3MKcmF0aGVy
IHRyaXZpYWwgY2hhbmdlcy4gSWYgYW55b25lIGhhcyBhbiBvYmplY3Rpb24sIHBsZWFzZSBsZXQg
bWUKa25vdy4KClRoYW5rcyEKCktpbmQgcmVnYXJkcwpVZmZlCgoKPgo+IEtpbmQgcmVnYXJkcwo+
IFVmZmUKPgo+ID4KPiA+IFBhbGkgUm9ow6FyICgxMSk6Cj4gPiAgIG1tYzogc2RpbzogRml4IG1h
Y3JvIG5hbWUgZm9yIE1hcnZlbGwgZGV2aWNlIHdpdGggSUQgMHg5MTM0Cj4gPiAgIG1tYzogc2Rp
bzogQ2hhbmdlIG1hY3JvIG5hbWVzIGZvciBNYXJ2ZWxsIDg2ODggbW9kdWxlcwo+ID4gICBtbWM6
IHNkaW86IE1vdmUgU0RJTyBJRHMgZnJvbSBtd2lmaWV4IGRyaXZlciB0byBjb21tb24gaW5jbHVk
ZSBmaWxlCj4gPiAgIG1tYzogc2RpbzogTW92ZSBTRElPIElEcyBmcm9tIGJ0bXJ2bCBkcml2ZXIg
dG8gY29tbW9uIGluY2x1ZGUgZmlsZQo+ID4gICBtbWM6IHNkaW86IE1vdmUgU0RJTyBJRHMgZnJv
bSBidG10a3NkaW8gZHJpdmVyIHRvIGNvbW1vbiBpbmNsdWRlIGZpbGUKPiA+ICAgbW1jOiBzZGlv
OiBNb3ZlIFNESU8gSURzIGZyb20gc21zc2RpbyBkcml2ZXIgdG8gY29tbW9uIGluY2x1ZGUgZmls
ZQo+ID4gICBtbWM6IHNkaW86IE1vdmUgU0RJTyBJRHMgZnJvbSBhdGg2a2wgZHJpdmVyIHRvIGNv
bW1vbiBpbmNsdWRlIGZpbGUKPiA+ICAgbW1jOiBzZGlvOiBNb3ZlIFNESU8gSURzIGZyb20gYXRo
MTBrIGRyaXZlciB0byBjb21tb24gaW5jbHVkZSBmaWxlCj4gPiAgIG1tYzogc2RpbzogTW92ZSBT
RElPIElEcyBmcm9tIGI0My1zZGlvIGRyaXZlciB0byBjb21tb24gaW5jbHVkZSBmaWxlCj4gPiAg
IG1tYzogc2RpbzogRml4IEN5cHJlc3MgU0RJTyBJRHMgbWFjcm9zIGluIGNvbW1vbiBpbmNsdWRl
IGZpbGUKPiA+ICAgbW1jOiBzZGlvOiBTb3J0IGFsbCBTRElPIElEcyBpbiBjb21tb24gaW5jbHVk
ZSBmaWxlCj4gPgo+ID4gIGRyaXZlcnMvYmx1ZXRvb3RoL2J0bXJ2bF9zZGlvLmMgICAgICAgICAg
ICAgICB8IDE4ICsrLS0KPiA+ICBkcml2ZXJzL2JsdWV0b290aC9idG10a3NkaW8uYyAgICAgICAg
ICAgICAgICAgfCAgNCArLQo+ID4gIGRyaXZlcnMvbWVkaWEvbW1jL3NpYW5vL3Ntc3NkaW8uYyAg
ICAgICAgICAgICB8IDEwICstCj4gPiAgZHJpdmVycy9tbWMvY29yZS9xdWlya3MuaCAgICAgICAg
ICAgICAgICAgICAgIHwgIDIgKy0KPiA+ICBkcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBr
L3NkaW8uYyAgICAgICAgfCAyNSArKy0tLQo+ID4gIGRyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9h
dGgxMGsvc2Rpby5oICAgICAgICB8ICA4IC0tCj4gPiAgZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRo
L2F0aDZrbC9oaWYuaCAgICAgICAgIHwgIDYgLS0KPiA+ICBkcml2ZXJzL25ldC93aXJlbGVzcy9h
dGgvYXRoNmtsL3NkaW8uYyAgICAgICAgfCAxNyArKy0tCj4gPiAgZHJpdmVycy9uZXQvd2lyZWxl
c3MvYnJvYWRjb20vYjQzL3NkaW8uYyAgICAgIHwgIDQgKy0KPiA+ICAuLi4vYnJvYWRjb20vYnJj
bTgwMjExL2JyY21mbWFjL2JjbXNkaC5jICAgICAgfCAgNiArLQo+ID4gIC4uLi9icm9hZGNvbS9i
cmNtODAyMTEvYnJjbWZtYWMvc2Rpby5jICAgICAgICB8ICA0ICstCj4gPiAgLi4uL25ldC93aXJl
bGVzcy9tYXJ2ZWxsL2xpYmVydGFzL2lmX3NkaW8uYyAgIHwgIDIgKy0KPiA+ICBkcml2ZXJzL25l
dC93aXJlbGVzcy9tYXJ2ZWxsL213aWZpZXgvc2Rpby5jICAgfCAzOCArKy0tLS0tLQo+ID4gIGlu
Y2x1ZGUvbGludXgvbW1jL3NkaW9faWRzLmggICAgICAgICAgICAgICAgICB8IDk0ICsrKysrKysr
KysrKysrLS0tLS0KPiA+ICAxNCBmaWxlcyBjaGFuZ2VkLCAxMjAgaW5zZXJ0aW9ucygrKSwgMTE4
IGRlbGV0aW9ucygtKQo+ID4KPiA+IC0tCj4gPiAyLjIwLjEKPiA+CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMt
ZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9iNDMtZGV2Cg==
