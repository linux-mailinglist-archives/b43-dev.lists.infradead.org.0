Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D331DF0E9
	for <lists+b43-dev@lfdr.de>; Fri, 22 May 2020 23:06:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+AyjfPvT+6CRVFGamZbl+N3oYqOMruXf6LVv+4rBnoA=; b=a8l/CcAi0i+oasJF9hNxT33cL
	qp2lIX5urZ/bGHxftI3aISe1Za8K8K8JnBOtp8orE3S7lfrHLE12f4FqOQHoYypYL3LNtZqjCx9me
	JJClGN5Y9wGzWwLiXak3N9M186d8q9wZxy7A0jH9GFvjiCsA4I54F/aDHRyGJHRC7Zfil9cPczbcU
	IQXz62gqyhckTCT5DmUt3Bnkz/j7p1VQ0hNFiVwj3zAuZpI0IYuAce6eXByAXQEYm3506qiI1jDPW
	OsiAkY6Gu8KFOaiY+ppKgEZgIZbOlCB+U3sRVi+adJqt/GTFBECjS/dIUx0ABQtnL1U5JIPnibl2q
	hzRLi0jBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcEsG-0003go-V6; Fri, 22 May 2020 21:06:36 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcEsC-0003g5-Lf
 for b43-dev@lists.infradead.org; Fri, 22 May 2020 21:06:34 +0000
Received: by mail-ot1-x341.google.com with SMTP id h7so9305276otr.3
 for <b43-dev@lists.infradead.org>; Fri, 22 May 2020 14:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=DueuK3vWul+3EpOAZh9VPG7ANORPr8gGvdYxsT8vMV0=;
 b=Hri1J4FsCUSsZzIUNkOKz9SajAxjhibEDpxmO+3r4AQuQPJ4K9V+gqEcRCZI5iPL9e
 +79qCw0+6JyL1qhMcx2w0Zj3cf0KZAzO6CwrYzJTBHGVzhpomThEkrIuI9AIo42d39+u
 umThnSNrhOnHUDZVeX82gfXM3FCT9t/RmjSQB99Mk89UJiTxSEIvjxK59Te0v79c8hGL
 2TpS5Q77pCY5m44sGphkOxPy4sAzWi3ajY05242W6p5FnA74nOg+5z0XleWXGeiB8FX9
 FXoBdavMrjU1WodBH922jHroSSK/hXpHvqbhIA1+IcStohfzTpaQT+iVOY56jgH4LKRf
 ywrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DueuK3vWul+3EpOAZh9VPG7ANORPr8gGvdYxsT8vMV0=;
 b=ngK77nF5uQrvsJL1hnuBFc4bfHtLiKI/z25FgcfMR0VUmUlWI3nrxdW9dgqOtP1h4w
 fdA19PRTrMCRMbCYdxkoYIR0pCRYXLA88T5TfncFCBUL/tBx1BG5d5OCC/ndwKA9zDYg
 zhDi1JTlPAY7wl0ITMz9FVJSrW/PKEIlLz7/8PGbo2ytB3GmPu3gcLC+9538NopD4oAW
 JcXkbT6FgFLBJ8p7s5ExWUDee3Ax5fZM7bjny6QZu2Gk5VN9nrPPEtTzt6b23hjb2tZP
 hn8w1CCsvBzU/y41u6uyozrOpTwQ5ynlZ4t/G4e0c3fz6nl7XN0u/SMzTaTtcIw2HkPw
 jnPA==
X-Gm-Message-State: AOAM531gqOTyydZJRTu6yrkg0prhncr0qbEPvbVV8fO/IsWtK2sWj6Vg
 D0VqF8cHd1ophdOkEATXfu4YFtkT
X-Google-Smtp-Source: ABdhPJyplkmaLgm8ThcrKCegncWiUWa6h8WRPxPnBEYL9LqbKwn5VVfi6uRbR3NLiYg7mMEEnXEPCg==
X-Received: by 2002:a05:6830:118d:: with SMTP id
 u13mr11996765otq.362.1590181588757; 
 Fri, 22 May 2020 14:06:28 -0700 (PDT)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id l8sm2770632otr.7.2020.05.22.14.06.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 14:06:28 -0700 (PDT)
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: Rui Salvaterra <rsalvaterra@gmail.com>
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
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <8252e6a1-b83c-64eb-2503-2686374216ae@lwfinger.net>
Date: Fri, 22 May 2020 16:06:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CALjTZvZV4kwLgoTijxsC2AYcxGeT1R_fsTdh3Gb=M03Rn_RsAg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_140632_730894_04205422 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [larry.finger[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-wireless@vger.kernel.org, =?UTF-8?Q?Michael_B=c3=bcsch?= <m@bues.ch>,
 Kalle Valo <kvalo@codeaurora.org>, b43-dev@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

T24gNS8yMi8yMCAzOjQwIFBNLCBSdWkgU2FsdmF0ZXJyYSB3cm90ZToKPiBPbiBGcmksIDIyIE1h
eSAyMDIwIGF0IDE5OjAyLCBMYXJyeSBGaW5nZXIgPExhcnJ5LkZpbmdlckBsd2Zpbmdlci5uZXQ+
IHdyb3RlOgo+Pgo+PiBSdWksCj4+Cj4+IERvZXMgdGhpcyBvbmUtbGluZQo+PiBwYXRjaCB3b3Jr
IGZvciBXUEEzIHdpdGhvdXQgc2V0dGluZyB0aGUgbm9od2NyeXB0IG9wdGlvbj8KPiAKPiBPaywg
c28gaXQgIndvcmtzIiwgYnV0IEkgZG9uJ3Qga25vdyB3aGF0IGFjdHVhbGx5IGhhcHBlbmVkIChJ
IGRpZG4ndAo+IGRvIGFueSBwZXJmb3JtYW5jZSB0ZXN0aW5nIHlldCkuIEkgZ290IHRoaXMgcmVs
ZXZhbnQgb3V0cHV0IG9uIG15Cj4ga21zZ+KApgo+IAo+IHJ1aUBtY251Z2dldDp+JCBkbWVzZyB8
IGF3ayAnKC84MDIxMS8gfHwgL2I0My8gfHwgL3dsYW4wLyknCj4gWyAgICAwLjAwMDAwMF0gS2Vy
bmVsIGNvbW1hbmQgbGluZTogQk9PVF9JTUFHRT0vdm1saW51eC01LjcuMC1yYzYrCj4gcm9vdD1V
VUlEPTg0OWJiZWYzLTAwN2UtNDkxZS1iMTg3LTllMjU5NjgwYzJlMiBybyBtaXRpZ2F0aW9ucz1v
ZmYKPiBiNDMucW9zPTAgYjQzLnZlcmJvc2U9MyB1c2JoaWQubW91c2Vwb2xsPTE2IHF1aWV0IHNw
bGFzaAo+IFsgICAgMC4wMzU3MDVdIGI0My1wY2ktYnJpZGdlIDAwMDE6MTA6MTIuMDogZW5hYmxp
bmcgZGV2aWNlICgwMDA0IC0+IDAwMDYpCj4gWyAgICAwLjIxMDI5OV0gYjQzLXBjaS1icmlkZ2Ug
MDAwMToxMDoxMi4wOiBTb25pY3MgU2lsaWNvbiBCYWNrcGxhbmUKPiBmb3VuZCBvbiBQQ0kgZGV2
aWNlIDAwMDE6MTA6MTIuMAo+IFsgICAgMy4zNjE5MDhdIGI0My1waHkwOiBCcm9hZGNvbSA0MzE4
IFdMQU4gZm91bmQgKGNvcmUgcmV2aXNpb24gOSkKPiBbICAgIDMuNDU0MjM1XSBiNDMtcGh5MDog
Rm91bmQgUEhZOiBBbmFsb2cgMywgVHlwZSAyIChHKSwgUmV2aXNpb24gNwo+IFsgICAgMy40NTQy
NTldIGI0My1waHkwOiBGb3VuZCBSYWRpbzogTWFudWYgMHgxN0YsIElEIDB4MjA1MCwgUmV2aXNp
b24KPiA4LCBWZXJzaW9uIDAKPiBbICAgIDMuNDg1MTI1XSBpZWVlODAyMTEgcGh5MDogU2VsZWN0
ZWQgcmF0ZSBjb250cm9sIGFsZ29yaXRobSAnbWluc3RyZWxfaHQnCj4gWyAgIDI4LjY5Nzk0NV0g
YjQzLXBoeTA6IExvYWRpbmcgZmlybXdhcmUgdmVyc2lvbiA2NjYuMiAoMjAxMS0wMi0yMyAwMTox
NTowNykKPiBbICAgMjguNzMwMzgxXSBiNDMtcGh5MCBkZWJ1ZzogQ2hpcCBpbml0aWFsaXplZAo+
IFsgICAyOC43MzEzODldIGI0My1waHkwIGRlYnVnOiAzMi1iaXQgRE1BIGluaXRpYWxpemVkCj4g
WyAgIDI4LjczMTQwMF0gYjQzLXBoeTAgZGVidWc6IFFvUyBkaXNhYmxlZAo+IFsgICAyOC43OTIy
NzJdIGI0My1waHkwIGRlYnVnOiBXaXJlbGVzcyBpbnRlcmZhY2Ugc3RhcnRlZAo+IFsgICAyOC44
MjAzMThdIGI0My1waHkwIGRlYnVnOiBBZGRpbmcgSW50ZXJmYWNlIHR5cGUgMgo+IFsgICAzMy45
NDQ3NzFdIHdsYW4wOiBhdXRoZW50aWNhdGUgd2l0aCAwNDpmMDoyMToyNDoyODo0NAo+IFsgICAz
My45NzA0NDldIHdsYW4wOiBzZW5kIGF1dGggdG8gMDQ6ZjA6MjE6MjQ6Mjg6NDQgKHRyeSAxLzMp
Cj4gWyAgIDM0LjAyNjIyMl0gd2xhbjA6IGF1dGhlbnRpY2F0ZSB3aXRoIDA0OmYwOjIxOjI0OjI4
OjQ0Cj4gWyAgIDM0LjAyNjI0MV0gd2xhbjA6IHNlbmQgYXV0aCB0byAwNDpmMDoyMToyNDoyODo0
NCAodHJ5IDEvMykKPiBbICAgMzQuMDI4NTIyXSB3bGFuMDogYXV0aGVudGljYXRlZAo+IFsgICAz
NC4wNDMyNTZdIHdsYW4wOiBhc3NvY2lhdGUgd2l0aCAwNDpmMDoyMToyNDoyODo0NCAodHJ5IDEv
MykKPiBbICAgMzQuMDQ2OTQ2XSB3bGFuMDogUlggQXNzb2NSZXNwIGZyb20gMDQ6ZjA6MjE6MjQ6
Mjg6NDQgKGNhcGFiPTB4NDMxCj4gc3RhdHVzPTMwIGFpZD0xKQo+IFsgICAzNC4wNDY5NjRdIHds
YW4wOiAwNDpmMDoyMToyNDoyODo0NCByZWplY3RlZCBhc3NvY2lhdGlvbgo+IHRlbXBvcmFyaWx5
OyBjb21lYmFjayBkdXJhdGlvbiAxMDAwIFRVICgxMDI0IG1zKQo+IFsgICAzNS4xMjIwNTFdIHds
YW4wOiBhc3NvY2lhdGUgd2l0aCAwNDpmMDoyMToyNDoyODo0NCAodHJ5IDIvMykKPiBbICAgMzUu
MTI1NTQ3XSB3bGFuMDogUlggQXNzb2NSZXNwIGZyb20gMDQ6ZjA6MjE6MjQ6Mjg6NDQgKGNhcGFi
PTB4NDMxCj4gc3RhdHVzPTAgYWlkPTEpCj4gWyAgIDM1LjEyNTgwOF0gd2xhbjA6IGFzc29jaWF0
ZWQKPiBbICAgMzUuMjY4MjU2XSBiNDMtcGh5MCBkZWJ1ZzogVXNpbmcgaGFyZHdhcmUgYmFzZWQg
ZW5jcnlwdGlvbiBmb3IKPiBrZXlpZHg6IDAsIG1hYzogMDQ6ZjA6MjE6MjQ6Mjg6NDQKPiBbICAg
MzUuMjY4NzYyXSBiNDMtcGh5MCBkZWJ1ZzogVXNpbmcgaGFyZHdhcmUgYmFzZWQgZW5jcnlwdGlv
biBmb3IKPiBrZXlpZHg6IDIsIG1hYzogZmY6ZmY6ZmY6ZmY6ZmY6ZmYKPiBbICAgMzUuMzU4NTg2
XSB3bGFuMDogZmFpbGVkIHRvIHNldCBrZXkgKDUsIGZmOmZmOmZmOmZmOmZmOmZmKSB0byBoYXJk
d2FyZSAoLTIyKQo+IFsgICAzNS4zNTg5NzddIElQdjY6IEFERFJDT05GKE5FVERFVl9DSEFOR0Up
OiB3bGFuMDogbGluayBiZWNvbWVzIHJlYWR5Cj4gWyAgIDg3LjI4MzIyMF0gd2xhbjA6IGZhaWxl
ZCB0byBzZXQga2V5ICg0LCBmZjpmZjpmZjpmZjpmZjpmZikgdG8gaGFyZHdhcmUgKC0yMikKPiBb
ICAgODcuMjgzNTIxXSBiNDMtcGh5MCBkZWJ1ZzogVXNpbmcgaGFyZHdhcmUgYmFzZWQgZW5jcnlw
dGlvbiBmb3IKPiBrZXlpZHg6IDEsIG1hYzogZmY6ZmY6ZmY6ZmY6ZmY6ZmYKPiBydWlAbWNudWdn
ZXQ6fiQKPiAKPiBNZWFud2hpbGUsIGl3IGxpc3Qgc2hvd3MgYWxsIHRoZSBwb3NzaWJsZSBzb2Z0
d2FyZSBjeXBoZXJzOgo+IAo+ICAgICAgU3VwcG9ydGVkIENpcGhlcnM6Cj4gICAgICAgICAgKiBX
RVA0MCAoMDAtMGYtYWM6MSkKPiAgICAgICAgICAqIFdFUDEwNCAoMDAtMGYtYWM6NSkKPiAgICAg
ICAgICAqIFRLSVAgKDAwLTBmLWFjOjIpCj4gICAgICAgICAgKiBDQ01QLTEyOCAoMDAtMGYtYWM6
NCkKPiAgICAgICAgICAqIENDTVAtMjU2ICgwMC0wZi1hYzoxMCkKPiAgICAgICAgICAqIEdDTVAt
MTI4ICgwMC0wZi1hYzo4KQo+ICAgICAgICAgICogR0NNUC0yNTYgKDAwLTBmLWFjOjkpCj4gICAg
ICAgICAgKiBDTUFDICgwMC0wZi1hYzo2KQo+ICAgICAgICAgICogQ01BQy0yNTYgKDAwLTBmLWFj
OjEzKQo+ICAgICAgICAgICogR01BQy0xMjggKDAwLTBmLWFjOjExKQo+ICAgICAgICAgICogR01B
Qy0yNTYgKDAwLTBmLWFjOjEyKQo+IAo+IFdoYXQgSSdtIG5vdCBzdXJlIGlzIGlmIGI0MyBpcyBk
b2luZyBhbGwgdGhlIGN5cGhlcnMgaXQgc3VwcG9ydHMgaW4KPiBoYXJkd2FyZSBhbmQgZmFsbGlu
ZyBiYWNrIHRvIHNvZnR3YXJlIGp1c3QgZm9yIHRoZSB1bnN1cHBvcnRlZCBvbmVzLAo+IG9yIGlm
IGl0J3MgZG9pbmcgZXZlcnl0aGluZyBpbiBzb2Z0d2FyZS4KSXQgd2lsbCBkbyBzdXBwb3J0ZWQg
Y2lwaGVycyBpbiBoYXJkd2FyZSwgYW5kIHVuc3VwcG9ydGVkIHVzaW5nIHNvZnR3YXJlLiBUaGUg
CnBhdGNoIHRlbGxzIG1hYzgwMjExIHRoYXQgd2Ugd2lsbCBhY2NlcHQgdGhlIG5ld2VyIGNpcGhl
cnMsIHRoZW4gaW4gdGhlIApzZXRfa2V5KCkgY2FsbGJhY2ssIHdlIHRlbGwgaXQgd2hldGhlciB0
aGUgY3VycmVudCB0eXBlIHdpbGwgYmUgaGFuZGxlZCBpbiAKaGFyZHdhcmUuIE9wZXJhdGlvbnMg
d2lsbCBiZSB0cmFuc3BhcmVudC4gSSB3aWxsIGtlZXAgdGhlIG5vaHdjcnlwdCBvcHRpb24ganVz
dCAKaW4gY2FzZSBzb21lb25lIGhhcyBhIGhhcmR3YXJlIG1hbGZ1bmN0aW9uIHRoYXQgcHJvaGli
aXRzIGhhcmR3YXJlIHVzZSBmb3IgYWxsIApjaXBoZXJzLCBidXQgaXQgd2lsbCBub3QgYmUgbmVl
ZGVkIGluIGNhc2VzIGxpa2UgeW91cnMuIFBlcmZvcm1hbmNlIHdpbGwgYmUgYXMgCnlvdSBkaWQg
ZWFybGllci4KClRoYW5rcyBmb3IgdGVzdGluZy4KCkxhcnJ5CgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1k
ZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2I0My1kZXYK
