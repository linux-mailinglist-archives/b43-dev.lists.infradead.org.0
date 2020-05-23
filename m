Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D84A71DFB20
	for <lists+b43-dev@lfdr.de>; Sat, 23 May 2020 23:18:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ju7M9eJeYprzXciH76mAEWKZd2ziZAHq9+4qyTTFrTc=; b=PrrwAHCmZcZReE
	cNu/QOtHKpy+3UwCixAcVEI1QlGIWXUyMW4a1oba4NgMw52aSg5rmFMjGYdAY7i/nr88/dUza8ziv
	Wx1+mT8boWT9Ee5hVUrIzGBsE83/pfxtVSQYsEXWqWxm5soIMD0wo4TjCr/WofRM9I+ZfVfGTEMCu
	bsRX+Wc0Qgttb4lSn2jMz9ZQKvoIYUpGllMQu/X01PwArrHn76IS2pUDiBgAdtefgS2vESu0+khYw
	8lUeaEnCEyuqLfKs46/3vRL8hmaMJDp7E5FQX7eYCbnZ3kWKxgamCxx7YXZ4/36P9fwpNy8MCyuLo
	E//SqeBN4JviisYqpJ5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcbWq-0003DP-Ff; Sat, 23 May 2020 21:18:00 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcbWK-0003Cs-8i
 for b43-dev@lists.infradead.org; Sat, 23 May 2020 21:17:30 +0000
Received: by mail-yb1-xb44.google.com with SMTP id l17so6493676ybk.1
 for <b43-dev@lists.infradead.org>; Sat, 23 May 2020 14:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=JLqHLg7jE9fD4cf0fKA2yrUDcwGrJXd29V4hmwSHA4w=;
 b=D3rlJd4tBakt7gdP+KhCrJ6Q+mHtayhT77WNPO5+s82D09DRxyy3xXJKweKuQPAEBx
 r6kJOU+gTd15l5VJHuh5ormCORW/mtkuntnUncxglvCkI1IiiRqR/n1T+NXmjdCgeYTN
 zfFkA1RwqHUgZOY8+7yIcfLNtK7VMGbPP5+5iRjE0S+9wBR6Bg+wkBL38K4hfxPmQPSN
 xbNH7yPz+wRcMbkXVJBJJ/LEwu4QoPdu/9MBtB9C2M04X8FlnncviEfYo8OHygtcimiJ
 hPGKPzAxynJNOXo10WJ+3SH+kgwiUgMVH5k80gljwIjBbsbpOQQFF9nANt9t2JzdpNyK
 u15A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=JLqHLg7jE9fD4cf0fKA2yrUDcwGrJXd29V4hmwSHA4w=;
 b=CwSl2G4QjIcrYRUj7M/Gsx5NHhdSGKWx/VqKQv4QL0c7ojOL4tVkFc8A68UXosd9hF
 MEBBMHVtICzQYOJK2AWCLZBk0ci8fqnhlVdtMnaNyhHKQhMIPItgC3zBjcUrqhdb1vvG
 iOQzPQ/1u3y1c1ueaDXOtjsUlQAb4sroxo6v6eCoT9K/hXKE2XbjpKbPcMdWmnQlZ5AU
 sxeQlTsVRg2wmEHPkK8mgV2v4a74bYyQHV7Gae/++B3ur0q4bup/MIao+IWDsndjXToX
 fs29YnTfKaPuGtPtTNoHT0tOQAkGtuzi3kkIOlfUE+SJ2BMQ+OawbYAJjWCQ0IDW8wZw
 Odow==
X-Gm-Message-State: AOAM533lcf3Y9t4Ujn1vZ+NHT/ERIDR7dMsTuslCAIdLnsBEUvGq2fZq
 +7/87nMCVUHfqNHrO7oXpvdkOlJfOrGrqBHKtwU=
X-Google-Smtp-Source: ABdhPJw0nU40qpJozklxfYHRHqCXIE2KFOUme45GrOcQdg5i5Slz+6pgK9lW+GI/wt2bfFTV84Xs5S6Fvf/mDwfjt6Q=
X-Received: by 2002:a25:c1c5:: with SMTP id
 r188mr32692127ybf.240.1590268645891; 
 Sat, 23 May 2020 14:17:25 -0700 (PDT)
MIME-Version: 1.0
References: <CALjTZvbLOr5zAYyp75Cs6Zo8mWNUVq3ZRJu56G1iHdiihFejWQ@mail.gmail.com>
 <CALjTZvYCFNSQ6HMN4owkiGTVrYaiU8R-P1KXgvkwGqcOo8uMuw@mail.gmail.com>
 <CALjTZvYMF_ERBfzkhaHvsTu6kt7MW+L_979sOVs8hcH7zF_Nyg@mail.gmail.com>
 <20200521124608.4b5c78f2@wiggum>
 <CALjTZvan46UTwcUxOSN=RiE6XHm-29Ln8B6wiv40V_RVxWewtA@mail.gmail.com>
 <20200521134011.656381ad@wiggum>
 <CALjTZvZcfT-aURMa=j-1ksWyVdu42bLEsGOaq+Hw39ioiPFKAA@mail.gmail.com>
 <CALjTZvY3_wjAx9DOEgYxpc4_fG-HWh_=O7veFxeEoygPzTJptw@mail.gmail.com>
 <2b22b778-2f89-9c42-93a0-5c165de26f35@lwfinger.net>
 <CALjTZva70Ni-s5VjRZL5BPswEtz5VZsX+dvE6rq2ztLJQ9v3kA@mail.gmail.com>
 <CALjTZvbvE_cDg9mfszscSBowznp1UpxqiN1LQfbgeCOYatKMNg@mail.gmail.com>
 <f6152cd7-1043-dde2-7fc1-634d8b07a231@lwfinger.net>
 <20200522121910.254aefc1@wiggum>
 <87a720gpfb.fsf@tynnyri.adurom.net>
 <CALjTZvYiFfqN3UMSM89Pg1rB9fJga+L1hVkBriEDeaej7oXcPw@mail.gmail.com>
 <f1f97888-e7f6-d272-6ed1-8c040d8a7c91@lwfinger.net>
 <CALjTZvZV4kwLgoTijxsC2AYcxGeT1R_fsTdh3Gb=M03Rn_RsAg@mail.gmail.com>
 <8252e6a1-b83c-64eb-2503-2686374216ae@lwfinger.net>
In-Reply-To: <8252e6a1-b83c-64eb-2503-2686374216ae@lwfinger.net>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 23 May 2020 23:17:14 +0200
Message-ID: <CACna6rzHyyTRUL-Qat0URMoRQpn7HHT9fiZH9jSKRrKA1Meoqg@mail.gmail.com>
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: Larry Finger <Larry.Finger@lwfinger.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_141728_325254_32C16602 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: b43-dev <b43-dev@lists.infradead.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 Kalle Valo <kvalo@codeaurora.org>, =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>,
 Rui Salvaterra <rsalvaterra@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

T24gRnJpLCAyMiBNYXkgMjAyMCBhdCAyMzowNiwgTGFycnkgRmluZ2VyIDxMYXJyeS5GaW5nZXJA
bHdmaW5nZXIubmV0PiB3cm90ZToKPiBPbiA1LzIyLzIwIDM6NDAgUE0sIFJ1aSBTYWx2YXRlcnJh
IHdyb3RlOgo+ID4gT24gRnJpLCAyMiBNYXkgMjAyMCBhdCAxOTowMiwgTGFycnkgRmluZ2VyIDxM
YXJyeS5GaW5nZXJAbHdmaW5nZXIubmV0PiB3cm90ZToKPiA+Pgo+ID4+IFJ1aSwKPiA+Pgo+ID4+
IERvZXMgdGhpcyBvbmUtbGluZQo+ID4+IHBhdGNoIHdvcmsgZm9yIFdQQTMgd2l0aG91dCBzZXR0
aW5nIHRoZSBub2h3Y3J5cHQgb3B0aW9uPwo+ID4KPiA+IE9rLCBzbyBpdCAid29ya3MiLCBidXQg
SSBkb24ndCBrbm93IHdoYXQgYWN0dWFsbHkgaGFwcGVuZWQgKEkgZGlkbid0Cj4gPiBkbyBhbnkg
cGVyZm9ybWFuY2UgdGVzdGluZyB5ZXQpLiBJIGdvdCB0aGlzIHJlbGV2YW50IG91dHB1dCBvbiBt
eQo+ID4ga21zZ+KApgo+ID4KPiA+IHJ1aUBtY251Z2dldDp+JCBkbWVzZyB8IGF3ayAnKC84MDIx
MS8gfHwgL2I0My8gfHwgL3dsYW4wLyknCj4gPiBbICAgIDAuMDAwMDAwXSBLZXJuZWwgY29tbWFu
ZCBsaW5lOiBCT09UX0lNQUdFPS92bWxpbnV4LTUuNy4wLXJjNisKPiA+IHJvb3Q9VVVJRD04NDli
YmVmMy0wMDdlLTQ5MWUtYjE4Ny05ZTI1OTY4MGMyZTIgcm8gbWl0aWdhdGlvbnM9b2ZmCj4gPiBi
NDMucW9zPTAgYjQzLnZlcmJvc2U9MyB1c2JoaWQubW91c2Vwb2xsPTE2IHF1aWV0IHNwbGFzaAo+
ID4gWyAgICAwLjAzNTcwNV0gYjQzLXBjaS1icmlkZ2UgMDAwMToxMDoxMi4wOiBlbmFibGluZyBk
ZXZpY2UgKDAwMDQgLT4gMDAwNikKPiA+IFsgICAgMC4yMTAyOTldIGI0My1wY2ktYnJpZGdlIDAw
MDE6MTA6MTIuMDogU29uaWNzIFNpbGljb24gQmFja3BsYW5lCj4gPiBmb3VuZCBvbiBQQ0kgZGV2
aWNlIDAwMDE6MTA6MTIuMAo+ID4gWyAgICAzLjM2MTkwOF0gYjQzLXBoeTA6IEJyb2FkY29tIDQz
MTggV0xBTiBmb3VuZCAoY29yZSByZXZpc2lvbiA5KQo+ID4gWyAgICAzLjQ1NDIzNV0gYjQzLXBo
eTA6IEZvdW5kIFBIWTogQW5hbG9nIDMsIFR5cGUgMiAoRyksIFJldmlzaW9uIDcKPiA+IFsgICAg
My40NTQyNTldIGI0My1waHkwOiBGb3VuZCBSYWRpbzogTWFudWYgMHgxN0YsIElEIDB4MjA1MCwg
UmV2aXNpb24KPiA+IDgsIFZlcnNpb24gMAo+ID4gWyAgICAzLjQ4NTEyNV0gaWVlZTgwMjExIHBo
eTA6IFNlbGVjdGVkIHJhdGUgY29udHJvbCBhbGdvcml0aG0gJ21pbnN0cmVsX2h0Jwo+ID4gWyAg
IDI4LjY5Nzk0NV0gYjQzLXBoeTA6IExvYWRpbmcgZmlybXdhcmUgdmVyc2lvbiA2NjYuMiAoMjAx
MS0wMi0yMyAwMToxNTowNykKPiA+IFsgICAyOC43MzAzODFdIGI0My1waHkwIGRlYnVnOiBDaGlw
IGluaXRpYWxpemVkCj4gPiBbICAgMjguNzMxMzg5XSBiNDMtcGh5MCBkZWJ1ZzogMzItYml0IERN
QSBpbml0aWFsaXplZAo+ID4gWyAgIDI4LjczMTQwMF0gYjQzLXBoeTAgZGVidWc6IFFvUyBkaXNh
YmxlZAo+ID4gWyAgIDI4Ljc5MjI3Ml0gYjQzLXBoeTAgZGVidWc6IFdpcmVsZXNzIGludGVyZmFj
ZSBzdGFydGVkCj4gPiBbICAgMjguODIwMzE4XSBiNDMtcGh5MCBkZWJ1ZzogQWRkaW5nIEludGVy
ZmFjZSB0eXBlIDIKPiA+IFsgICAzMy45NDQ3NzFdIHdsYW4wOiBhdXRoZW50aWNhdGUgd2l0aCAw
NDpmMDoyMToyNDoyODo0NAo+ID4gWyAgIDMzLjk3MDQ0OV0gd2xhbjA6IHNlbmQgYXV0aCB0byAw
NDpmMDoyMToyNDoyODo0NCAodHJ5IDEvMykKPiA+IFsgICAzNC4wMjYyMjJdIHdsYW4wOiBhdXRo
ZW50aWNhdGUgd2l0aCAwNDpmMDoyMToyNDoyODo0NAo+ID4gWyAgIDM0LjAyNjI0MV0gd2xhbjA6
IHNlbmQgYXV0aCB0byAwNDpmMDoyMToyNDoyODo0NCAodHJ5IDEvMykKPiA+IFsgICAzNC4wMjg1
MjJdIHdsYW4wOiBhdXRoZW50aWNhdGVkCj4gPiBbICAgMzQuMDQzMjU2XSB3bGFuMDogYXNzb2Np
YXRlIHdpdGggMDQ6ZjA6MjE6MjQ6Mjg6NDQgKHRyeSAxLzMpCj4gPiBbICAgMzQuMDQ2OTQ2XSB3
bGFuMDogUlggQXNzb2NSZXNwIGZyb20gMDQ6ZjA6MjE6MjQ6Mjg6NDQgKGNhcGFiPTB4NDMxCj4g
PiBzdGF0dXM9MzAgYWlkPTEpCj4gPiBbICAgMzQuMDQ2OTY0XSB3bGFuMDogMDQ6ZjA6MjE6MjQ6
Mjg6NDQgcmVqZWN0ZWQgYXNzb2NpYXRpb24KPiA+IHRlbXBvcmFyaWx5OyBjb21lYmFjayBkdXJh
dGlvbiAxMDAwIFRVICgxMDI0IG1zKQo+ID4gWyAgIDM1LjEyMjA1MV0gd2xhbjA6IGFzc29jaWF0
ZSB3aXRoIDA0OmYwOjIxOjI0OjI4OjQ0ICh0cnkgMi8zKQo+ID4gWyAgIDM1LjEyNTU0N10gd2xh
bjA6IFJYIEFzc29jUmVzcCBmcm9tIDA0OmYwOjIxOjI0OjI4OjQ0IChjYXBhYj0weDQzMQo+ID4g
c3RhdHVzPTAgYWlkPTEpCj4gPiBbICAgMzUuMTI1ODA4XSB3bGFuMDogYXNzb2NpYXRlZAo+ID4g
WyAgIDM1LjI2ODI1Nl0gYjQzLXBoeTAgZGVidWc6IFVzaW5nIGhhcmR3YXJlIGJhc2VkIGVuY3J5
cHRpb24gZm9yCj4gPiBrZXlpZHg6IDAsIG1hYzogMDQ6ZjA6MjE6MjQ6Mjg6NDQKPiA+IFsgICAz
NS4yNjg3NjJdIGI0My1waHkwIGRlYnVnOiBVc2luZyBoYXJkd2FyZSBiYXNlZCBlbmNyeXB0aW9u
IGZvcgo+ID4ga2V5aWR4OiAyLCBtYWM6IGZmOmZmOmZmOmZmOmZmOmZmCj4gPiBbICAgMzUuMzU4
NTg2XSB3bGFuMDogZmFpbGVkIHRvIHNldCBrZXkgKDUsIGZmOmZmOmZmOmZmOmZmOmZmKSB0byBo
YXJkd2FyZSAoLTIyKQo+ID4gWyAgIDM1LjM1ODk3N10gSVB2NjogQUREUkNPTkYoTkVUREVWX0NI
QU5HRSk6IHdsYW4wOiBsaW5rIGJlY29tZXMgcmVhZHkKPiA+IFsgICA4Ny4yODMyMjBdIHdsYW4w
OiBmYWlsZWQgdG8gc2V0IGtleSAoNCwgZmY6ZmY6ZmY6ZmY6ZmY6ZmYpIHRvIGhhcmR3YXJlICgt
MjIpCj4gPiBbICAgODcuMjgzNTIxXSBiNDMtcGh5MCBkZWJ1ZzogVXNpbmcgaGFyZHdhcmUgYmFz
ZWQgZW5jcnlwdGlvbiBmb3IKPiA+IGtleWlkeDogMSwgbWFjOiBmZjpmZjpmZjpmZjpmZjpmZgo+
ID4gcnVpQG1jbnVnZ2V0On4kCj4gPgo+ID4gTWVhbndoaWxlLCBpdyBsaXN0IHNob3dzIGFsbCB0
aGUgcG9zc2libGUgc29mdHdhcmUgY3lwaGVyczoKPiA+Cj4gPiAgICAgIFN1cHBvcnRlZCBDaXBo
ZXJzOgo+ID4gICAgICAgICAgKiBXRVA0MCAoMDAtMGYtYWM6MSkKPiA+ICAgICAgICAgICogV0VQ
MTA0ICgwMC0wZi1hYzo1KQo+ID4gICAgICAgICAgKiBUS0lQICgwMC0wZi1hYzoyKQo+ID4gICAg
ICAgICAgKiBDQ01QLTEyOCAoMDAtMGYtYWM6NCkKPiA+ICAgICAgICAgICogQ0NNUC0yNTYgKDAw
LTBmLWFjOjEwKQo+ID4gICAgICAgICAgKiBHQ01QLTEyOCAoMDAtMGYtYWM6OCkKPiA+ICAgICAg
ICAgICogR0NNUC0yNTYgKDAwLTBmLWFjOjkpCj4gPiAgICAgICAgICAqIENNQUMgKDAwLTBmLWFj
OjYpCj4gPiAgICAgICAgICAqIENNQUMtMjU2ICgwMC0wZi1hYzoxMykKPiA+ICAgICAgICAgICog
R01BQy0xMjggKDAwLTBmLWFjOjExKQo+ID4gICAgICAgICAgKiBHTUFDLTI1NiAoMDAtMGYtYWM6
MTIpCj4gPgo+ID4gV2hhdCBJJ20gbm90IHN1cmUgaXMgaWYgYjQzIGlzIGRvaW5nIGFsbCB0aGUg
Y3lwaGVycyBpdCBzdXBwb3J0cyBpbgo+ID4gaGFyZHdhcmUgYW5kIGZhbGxpbmcgYmFjayB0byBz
b2Z0d2FyZSBqdXN0IGZvciB0aGUgdW5zdXBwb3J0ZWQgb25lcywKPiA+IG9yIGlmIGl0J3MgZG9p
bmcgZXZlcnl0aGluZyBpbiBzb2Z0d2FyZS4KPiBJdCB3aWxsIGRvIHN1cHBvcnRlZCBjaXBoZXJz
IGluIGhhcmR3YXJlLCBhbmQgdW5zdXBwb3J0ZWQgdXNpbmcgc29mdHdhcmUuIFRoZQo+IHBhdGNo
IHRlbGxzIG1hYzgwMjExIHRoYXQgd2Ugd2lsbCBhY2NlcHQgdGhlIG5ld2VyIGNpcGhlcnMsIHRo
ZW4gaW4gdGhlCj4gc2V0X2tleSgpIGNhbGxiYWNrLCB3ZSB0ZWxsIGl0IHdoZXRoZXIgdGhlIGN1
cnJlbnQgdHlwZSB3aWxsIGJlIGhhbmRsZWQgaW4KPiBoYXJkd2FyZS4gT3BlcmF0aW9ucyB3aWxs
IGJlIHRyYW5zcGFyZW50LiBJIHdpbGwga2VlcCB0aGUgbm9od2NyeXB0IG9wdGlvbiBqdXN0Cj4g
aW4gY2FzZSBzb21lb25lIGhhcyBhIGhhcmR3YXJlIG1hbGZ1bmN0aW9uIHRoYXQgcHJvaGliaXRz
IGhhcmR3YXJlIHVzZSBmb3IgYWxsCj4gY2lwaGVycywgYnV0IGl0IHdpbGwgbm90IGJlIG5lZWRl
ZCBpbiBjYXNlcyBsaWtlIHlvdXJzLiBQZXJmb3JtYW5jZSB3aWxsIGJlIGFzCj4geW91IGRpZCBl
YXJsaWVyLgoKTmljZSB3b3JrIExhcnJ5LCB0aGFuayB5b3UhCgotLSAKUmFmYcWCCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcg
bGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
