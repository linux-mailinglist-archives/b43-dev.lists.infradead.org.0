Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9EF1E0761
	for <lists+b43-dev@lfdr.de>; Mon, 25 May 2020 08:57:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qTnhaTDcsUKQFcUmL6lUu9jdhgVBr5l7cY21fdmH3do=; b=XnMOEWUVuHxwW2
	UOWHgk4qJ1R8aLk0ZA/y6j+Y82aMaC+c9h2Lrk+Jlml7FJgWYZKC1Ows3nHdDCxXEo7Eq1YrPuTmW
	05OMqnV6NP/gRnktXvnaiqLoxLsr6ZX+3sMSGf+HuqeI4yIC7PMmCiqyebW+bkEan+BsePkI7hd7R
	12Mat25H5VZ1f4If3/FPgatNO8xbcMTHXrm0v1dCnF/QzoRvhSjIXrEGJ1r9//YvboSRMuuwVvJKS
	V3czaqPoeCzHebwRGo0tmISB6pJ69x/uSrruD+tCQCA1ykUCf2kHZs3p1g6fOqpqBTZR/+YxAkGCl
	QFU5/f/xbBPDuVCqdBwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd72m-0005cs-Va; Mon, 25 May 2020 06:57:04 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd72M-0005bi-S1
 for b43-dev@lists.infradead.org; Mon, 25 May 2020 06:56:40 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590389798; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=Me3GjJcJUW2Ik2X6lU5cKB4Pphg+XjttBxGjgK4qBO8=;
 b=sgIsE7QYuVoCS+bSyN3dHVKPRu5qXHF0fC9TmFsbrBwwp33wlst9as+i4mjbxCI1lAPvJRCB
 hp4opacTmFU4Ga477zDylmr2X/FNcNDR94MypQCrDLhCwSkYwi7KOsxzua9o+dQSmHmXMWwL
 h8qEXYF3n4v9dBffjmB5PqmzVHo=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyIxODVhOSIsICJiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ecb6c23.7fad270cb998-smtp-out-n03;
 Mon, 25 May 2020 06:56:35 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 724D5C43391; Mon, 25 May 2020 06:56:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id EC1F4C433C9;
 Mon, 25 May 2020 06:56:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org EC1F4C433C9
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: =?utf-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
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
 <20200522121910.254aefc1@wiggum> <87a720gpfb.fsf@tynnyri.adurom.net>
 <CALjTZvYiFfqN3UMSM89Pg1rB9fJga+L1hVkBriEDeaej7oXcPw@mail.gmail.com>
 <f1f97888-e7f6-d272-6ed1-8c040d8a7c91@lwfinger.net>
 <CALjTZvZV4kwLgoTijxsC2AYcxGeT1R_fsTdh3Gb=M03Rn_RsAg@mail.gmail.com>
 <8252e6a1-b83c-64eb-2503-2686374216ae@lwfinger.net>
 <CACna6rzHyyTRUL-Qat0URMoRQpn7HHT9fiZH9jSKRrKA1Meoqg@mail.gmail.com>
Date: Mon, 25 May 2020 09:56:30 +0300
In-Reply-To: <CACna6rzHyyTRUL-Qat0URMoRQpn7HHT9fiZH9jSKRrKA1Meoqg@mail.gmail.com>
 (=?utf-8?Q?=22Rafa=C5=82_Mi=C5=82ecki=22's?= message of "Sat, 23 May 2020
 23:17:14 +0200")
Message-ID: <87o8qca4f5.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_235638_972832_697D7287 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [104.130.122.26 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Rui Salvaterra <rsalvaterra@gmail.com>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 b43-dev <b43-dev@lists.infradead.org>,
 Michael =?utf-8?Q?B=C3=BCsch?= <m@bues.ch>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

UmFmYcWCIE1pxYJlY2tpIDx6YWplYzVAZ21haWwuY29tPiB3cml0ZXM6Cgo+IE9uIEZyaSwgMjIg
TWF5IDIwMjAgYXQgMjM6MDYsIExhcnJ5IEZpbmdlciA8TGFycnkuRmluZ2VyQGx3ZmluZ2VyLm5l
dD4gd3JvdGU6Cj4+IE9uIDUvMjIvMjAgMzo0MCBQTSwgUnVpIFNhbHZhdGVycmEgd3JvdGU6Cj4+
ID4gT24gRnJpLCAyMiBNYXkgMjAyMCBhdCAxOTowMiwgTGFycnkgRmluZ2VyIDxMYXJyeS5GaW5n
ZXJAbHdmaW5nZXIubmV0PiB3cm90ZToKPj4gPj4KPj4gPj4gUnVpLAo+PiA+Pgo+PiA+PiBEb2Vz
IHRoaXMgb25lLWxpbmUKPj4gPj4gcGF0Y2ggd29yayBmb3IgV1BBMyB3aXRob3V0IHNldHRpbmcg
dGhlIG5vaHdjcnlwdCBvcHRpb24/Cj4+ID4KPj4gPiBPaywgc28gaXQgIndvcmtzIiwgYnV0IEkg
ZG9uJ3Qga25vdyB3aGF0IGFjdHVhbGx5IGhhcHBlbmVkIChJIGRpZG4ndAo+PiA+IGRvIGFueSBw
ZXJmb3JtYW5jZSB0ZXN0aW5nIHlldCkuIEkgZ290IHRoaXMgcmVsZXZhbnQgb3V0cHV0IG9uIG15
Cj4+ID4ga21zZ+KApgo+PiA+Cj4+ID4gcnVpQG1jbnVnZ2V0On4kIGRtZXNnIHwgYXdrICcoLzgw
MjExLyB8fCAvYjQzLyB8fCAvd2xhbjAvKScKPj4gPiBbICAgIDAuMDAwMDAwXSBLZXJuZWwgY29t
bWFuZCBsaW5lOiBCT09UX0lNQUdFPS92bWxpbnV4LTUuNy4wLXJjNisKPj4gPiByb290PVVVSUQ9
ODQ5YmJlZjMtMDA3ZS00OTFlLWIxODctOWUyNTk2ODBjMmUyIHJvIG1pdGlnYXRpb25zPW9mZgo+
PiA+IGI0My5xb3M9MCBiNDMudmVyYm9zZT0zIHVzYmhpZC5tb3VzZXBvbGw9MTYgcXVpZXQgc3Bs
YXNoCj4+ID4gWyAgICAwLjAzNTcwNV0gYjQzLXBjaS1icmlkZ2UgMDAwMToxMDoxMi4wOiBlbmFi
bGluZyBkZXZpY2UgKDAwMDQgLT4gMDAwNikKPj4gPiBbICAgIDAuMjEwMjk5XSBiNDMtcGNpLWJy
aWRnZSAwMDAxOjEwOjEyLjA6IFNvbmljcyBTaWxpY29uIEJhY2twbGFuZQo+PiA+IGZvdW5kIG9u
IFBDSSBkZXZpY2UgMDAwMToxMDoxMi4wCj4+ID4gWyAgICAzLjM2MTkwOF0gYjQzLXBoeTA6IEJy
b2FkY29tIDQzMTggV0xBTiBmb3VuZCAoY29yZSByZXZpc2lvbiA5KQo+PiA+IFsgICAgMy40NTQy
MzVdIGI0My1waHkwOiBGb3VuZCBQSFk6IEFuYWxvZyAzLCBUeXBlIDIgKEcpLCBSZXZpc2lvbiA3
Cj4+ID4gWyAgICAzLjQ1NDI1OV0gYjQzLXBoeTA6IEZvdW5kIFJhZGlvOiBNYW51ZiAweDE3Riwg
SUQgMHgyMDUwLCBSZXZpc2lvbgo+PiA+IDgsIFZlcnNpb24gMAo+PiA+IFsgICAgMy40ODUxMjVd
IGllZWU4MDIxMSBwaHkwOiBTZWxlY3RlZCByYXRlIGNvbnRyb2wgYWxnb3JpdGhtICdtaW5zdHJl
bF9odCcKPj4gPiBbICAgMjguNjk3OTQ1XSBiNDMtcGh5MDogTG9hZGluZyBmaXJtd2FyZSB2ZXJz
aW9uIDY2Ni4yICgyMDExLTAyLTIzIDAxOjE1OjA3KQo+PiA+IFsgICAyOC43MzAzODFdIGI0My1w
aHkwIGRlYnVnOiBDaGlwIGluaXRpYWxpemVkCj4+ID4gWyAgIDI4LjczMTM4OV0gYjQzLXBoeTAg
ZGVidWc6IDMyLWJpdCBETUEgaW5pdGlhbGl6ZWQKPj4gPiBbICAgMjguNzMxNDAwXSBiNDMtcGh5
MCBkZWJ1ZzogUW9TIGRpc2FibGVkCj4+ID4gWyAgIDI4Ljc5MjI3Ml0gYjQzLXBoeTAgZGVidWc6
IFdpcmVsZXNzIGludGVyZmFjZSBzdGFydGVkCj4+ID4gWyAgIDI4LjgyMDMxOF0gYjQzLXBoeTAg
ZGVidWc6IEFkZGluZyBJbnRlcmZhY2UgdHlwZSAyCj4+ID4gWyAgIDMzLjk0NDc3MV0gd2xhbjA6
IGF1dGhlbnRpY2F0ZSB3aXRoIDA0OmYwOjIxOjI0OjI4OjQ0Cj4+ID4gWyAgIDMzLjk3MDQ0OV0g
d2xhbjA6IHNlbmQgYXV0aCB0byAwNDpmMDoyMToyNDoyODo0NCAodHJ5IDEvMykKPj4gPiBbICAg
MzQuMDI2MjIyXSB3bGFuMDogYXV0aGVudGljYXRlIHdpdGggMDQ6ZjA6MjE6MjQ6Mjg6NDQKPj4g
PiBbICAgMzQuMDI2MjQxXSB3bGFuMDogc2VuZCBhdXRoIHRvIDA0OmYwOjIxOjI0OjI4OjQ0ICh0
cnkgMS8zKQo+PiA+IFsgICAzNC4wMjg1MjJdIHdsYW4wOiBhdXRoZW50aWNhdGVkCj4+ID4gWyAg
IDM0LjA0MzI1Nl0gd2xhbjA6IGFzc29jaWF0ZSB3aXRoIDA0OmYwOjIxOjI0OjI4OjQ0ICh0cnkg
MS8zKQo+PiA+IFsgICAzNC4wNDY5NDZdIHdsYW4wOiBSWCBBc3NvY1Jlc3AgZnJvbSAwNDpmMDoy
MToyNDoyODo0NCAoY2FwYWI9MHg0MzEKPj4gPiBzdGF0dXM9MzAgYWlkPTEpCj4+ID4gWyAgIDM0
LjA0Njk2NF0gd2xhbjA6IDA0OmYwOjIxOjI0OjI4OjQ0IHJlamVjdGVkIGFzc29jaWF0aW9uCj4+
ID4gdGVtcG9yYXJpbHk7IGNvbWViYWNrIGR1cmF0aW9uIDEwMDAgVFUgKDEwMjQgbXMpCj4+ID4g
WyAgIDM1LjEyMjA1MV0gd2xhbjA6IGFzc29jaWF0ZSB3aXRoIDA0OmYwOjIxOjI0OjI4OjQ0ICh0
cnkgMi8zKQo+PiA+IFsgICAzNS4xMjU1NDddIHdsYW4wOiBSWCBBc3NvY1Jlc3AgZnJvbSAwNDpm
MDoyMToyNDoyODo0NCAoY2FwYWI9MHg0MzEKPj4gPiBzdGF0dXM9MCBhaWQ9MSkKPj4gPiBbICAg
MzUuMTI1ODA4XSB3bGFuMDogYXNzb2NpYXRlZAo+PiA+IFsgICAzNS4yNjgyNTZdIGI0My1waHkw
IGRlYnVnOiBVc2luZyBoYXJkd2FyZSBiYXNlZCBlbmNyeXB0aW9uIGZvcgo+PiA+IGtleWlkeDog
MCwgbWFjOiAwNDpmMDoyMToyNDoyODo0NAo+PiA+IFsgICAzNS4yNjg3NjJdIGI0My1waHkwIGRl
YnVnOiBVc2luZyBoYXJkd2FyZSBiYXNlZCBlbmNyeXB0aW9uIGZvcgo+PiA+IGtleWlkeDogMiwg
bWFjOiBmZjpmZjpmZjpmZjpmZjpmZgo+PiA+IFsgICAzNS4zNTg1ODZdIHdsYW4wOiBmYWlsZWQg
dG8gc2V0IGtleSAoNSwgZmY6ZmY6ZmY6ZmY6ZmY6ZmYpIHRvIGhhcmR3YXJlICgtMjIpCj4+ID4g
WyAgIDM1LjM1ODk3N10gSVB2NjogQUREUkNPTkYoTkVUREVWX0NIQU5HRSk6IHdsYW4wOiBsaW5r
IGJlY29tZXMgcmVhZHkKPj4gPiBbICAgODcuMjgzMjIwXSB3bGFuMDogZmFpbGVkIHRvIHNldCBr
ZXkgKDQsIGZmOmZmOmZmOmZmOmZmOmZmKSB0byBoYXJkd2FyZSAoLTIyKQo+PiA+IFsgICA4Ny4y
ODM1MjFdIGI0My1waHkwIGRlYnVnOiBVc2luZyBoYXJkd2FyZSBiYXNlZCBlbmNyeXB0aW9uIGZv
cgo+PiA+IGtleWlkeDogMSwgbWFjOiBmZjpmZjpmZjpmZjpmZjpmZgo+PiA+IHJ1aUBtY251Z2dl
dDp+JAo+PiA+Cj4+ID4gTWVhbndoaWxlLCBpdyBsaXN0IHNob3dzIGFsbCB0aGUgcG9zc2libGUg
c29mdHdhcmUgY3lwaGVyczoKPj4gPgo+PiA+ICAgICAgU3VwcG9ydGVkIENpcGhlcnM6Cj4+ID4g
ICAgICAgICAgKiBXRVA0MCAoMDAtMGYtYWM6MSkKPj4gPiAgICAgICAgICAqIFdFUDEwNCAoMDAt
MGYtYWM6NSkKPj4gPiAgICAgICAgICAqIFRLSVAgKDAwLTBmLWFjOjIpCj4+ID4gICAgICAgICAg
KiBDQ01QLTEyOCAoMDAtMGYtYWM6NCkKPj4gPiAgICAgICAgICAqIENDTVAtMjU2ICgwMC0wZi1h
YzoxMCkKPj4gPiAgICAgICAgICAqIEdDTVAtMTI4ICgwMC0wZi1hYzo4KQo+PiA+ICAgICAgICAg
ICogR0NNUC0yNTYgKDAwLTBmLWFjOjkpCj4+ID4gICAgICAgICAgKiBDTUFDICgwMC0wZi1hYzo2
KQo+PiA+ICAgICAgICAgICogQ01BQy0yNTYgKDAwLTBmLWFjOjEzKQo+PiA+ICAgICAgICAgICog
R01BQy0xMjggKDAwLTBmLWFjOjExKQo+PiA+ICAgICAgICAgICogR01BQy0yNTYgKDAwLTBmLWFj
OjEyKQo+PiA+Cj4+ID4gV2hhdCBJJ20gbm90IHN1cmUgaXMgaWYgYjQzIGlzIGRvaW5nIGFsbCB0
aGUgY3lwaGVycyBpdCBzdXBwb3J0cyBpbgo+PiA+IGhhcmR3YXJlIGFuZCBmYWxsaW5nIGJhY2sg
dG8gc29mdHdhcmUganVzdCBmb3IgdGhlIHVuc3VwcG9ydGVkIG9uZXMsCj4+ID4gb3IgaWYgaXQn
cyBkb2luZyBldmVyeXRoaW5nIGluIHNvZnR3YXJlLgo+Pgo+PiBJdCB3aWxsIGRvIHN1cHBvcnRl
ZCBjaXBoZXJzIGluIGhhcmR3YXJlLCBhbmQgdW5zdXBwb3J0ZWQgdXNpbmcgc29mdHdhcmUuIFRo
ZQo+PiBwYXRjaCB0ZWxscyBtYWM4MDIxMSB0aGF0IHdlIHdpbGwgYWNjZXB0IHRoZSBuZXdlciBj
aXBoZXJzLCB0aGVuIGluIHRoZQo+PiBzZXRfa2V5KCkgY2FsbGJhY2ssIHdlIHRlbGwgaXQgd2hl
dGhlciB0aGUgY3VycmVudCB0eXBlIHdpbGwgYmUgaGFuZGxlZCBpbgo+PiBoYXJkd2FyZS4gT3Bl
cmF0aW9ucyB3aWxsIGJlIHRyYW5zcGFyZW50LiBJIHdpbGwga2VlcCB0aGUgbm9od2NyeXB0IG9w
dGlvbiBqdXN0Cj4+IGluIGNhc2Ugc29tZW9uZSBoYXMgYSBoYXJkd2FyZSBtYWxmdW5jdGlvbiB0
aGF0IHByb2hpYml0cyBoYXJkd2FyZSB1c2UgZm9yIGFsbAo+PiBjaXBoZXJzLCBidXQgaXQgd2ls
bCBub3QgYmUgbmVlZGVkIGluIGNhc2VzIGxpa2UgeW91cnMuIFBlcmZvcm1hbmNlIHdpbGwgYmUg
YXMKPj4geW91IGRpZCBlYXJsaWVyLgo+Cj4gTmljZSB3b3JrIExhcnJ5LCB0aGFuayB5b3UhCgpJ
bmRlZWQsIHRoaXMgaXMgYSBwZXJmZWN0IHNvbHV0aW9uLgoKLS0gCmh0dHBzOi8vd2lyZWxlc3Mu
d2lraS5rZXJuZWwub3JnL2VuL2RldmVsb3BlcnMvZG9jdW1lbnRhdGlvbi9zdWJtaXR0aW5ncGF0
Y2hlcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYjQz
LWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
