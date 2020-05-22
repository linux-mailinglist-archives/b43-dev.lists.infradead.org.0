Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1021DF0B5
	for <lists+b43-dev@lfdr.de>; Fri, 22 May 2020 22:41:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P7ALkgGwVebYl76Suwcd2z0xkRqV4ViTDyB3tu/phfA=; b=jL9gimJnAj6658
	2peEnw38mdUKBVFodFlgwuR5GALrl+PyHs3PVBY1wjedX0O8cx1JxiqsDlvbLIp1mm8jPEbdJYeIJ
	yeMgCLXUliokGkCtZ1CI4nz33WH1E+JsFcu0MIxOhX6M9RGFMz8uEbRTuNXS+81F6laiyWDEwV/66
	JYvmeSW47RLht2xYQeP+Jat0RLThieFeQLrbgq0IxqGQGzFFCJPK4inrFs9q2mHntf4iKp7MvbmRj
	bOEVOG+CafkFQL7fJq6pusmeeAlZkh6ktZkN+8nRsFBo0W9idsWF9sxJy2KcjBb0ZF3FqbdfPplmK
	3NsVkGKvNVG+9X+3jGAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcETT-0005vF-1D; Fri, 22 May 2020 20:40:59 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcET4-0005uv-DG
 for b43-dev@lists.infradead.org; Fri, 22 May 2020 20:40:35 +0000
Received: by mail-vs1-xe42.google.com with SMTP id v26so6823891vsa.1
 for <b43-dev@lists.infradead.org>; Fri, 22 May 2020 13:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=KFIo3mDu4y6EiEk0hm8xiQGnnT3v4pdhAa/7YGqK9eU=;
 b=rbYBd5GtuQNEC2yGKIiRfTH2zhWC8mZOVi+F0MvGPRqCfnYx6IoR8lU7nEjq6qSL8g
 6dpzfjh8Sc4fXNRCj1ClnAx1cem3B4jeBqPj59sv5eqJfmmfZB0Pt6xr3NOtM72W14Ew
 FKYTfZIqVnq7gyX3UN0d6AifqiRWwa6vSPbRf8ZmY1qhaIM9kjPWzKQRxFHUhu0l7lJG
 CWUnhAaAZ15j8RYie9r9x7CiVpny9IyRoEgdlxndS3sXaXiZlAR4FKwXfmN2tqd7jvcE
 +v0z6wD2h8MFvnGJtAGV2mQOeyvdqr5kezWoH1ABnGFD13f1D2f021044ui7i9CNToU5
 DZhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=KFIo3mDu4y6EiEk0hm8xiQGnnT3v4pdhAa/7YGqK9eU=;
 b=diwIqno/iwQoQAztNa/5VVJYPBFAB1DID162CAYyLQSS+2fPe8AXGLmmcs2aZTAuif
 SQhvSr24myQI+YSHVLuBF4JJgYWJv+Sc4HP5AsDzvruK+SPSvMjoJZPx/OjhRFyPyGoO
 MmCQzfs7evPOO6wvVbboedBQmVmx7O81GXrRAE/1dWKI1Sc3g0ss0u7YhZPdqIMhHHCH
 KKKBqKIMroHfIZoRivEGkj+uNVO0/h3hwH7vhZH6VAqdIRkJItiY7a8AYgER3HZogjLV
 rwSXMuZUTQ7gpt7MWCa9SKO/C0ZsikoAQgNzTxBXoOTabZ9Bpq+/CQfYFQPlEXlmQBm8
 eNDA==
X-Gm-Message-State: AOAM532lqd9q3MVdQ19PpUGQos/kNSnakEW0dMyCfpHfYg62VhZ+7Wam
 OEMyJgG7RKuL7Ficn1DEpQJl/kOpxDAI6Jj0nw==
X-Google-Smtp-Source: ABdhPJwOWAaYQ1ZHK6q1Pk8wdt9Jg9DJZyl7FRKh8ua8dLxz6x4lO4cscPtDRcZHRVAZe5Ym2gisJH4AvyApizOLXX8=
X-Received: by 2002:a67:f64a:: with SMTP id u10mr12511885vso.202.1590180033253; 
 Fri, 22 May 2020 13:40:33 -0700 (PDT)
MIME-Version: 1.0
References: <CALjTZvbLOr5zAYyp75Cs6Zo8mWNUVq3ZRJu56G1iHdiihFejWQ@mail.gmail.com>
 <CALjTZvauK0Hh+aoabcDX9kkQZ4zN2ZjPnB+aq7YrJ9+-4ihiAg@mail.gmail.com>
 <87fffd5d-242a-7195-c4cc-80260dbd53c5@lwfinger.net>
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
In-Reply-To: <f1f97888-e7f6-d272-6ed1-8c040d8a7c91@lwfinger.net>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Fri, 22 May 2020 21:40:22 +0100
Message-ID: <CALjTZvZV4kwLgoTijxsC2AYcxGeT1R_fsTdh3Gb=M03Rn_RsAg@mail.gmail.com>
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: Larry Finger <Larry.Finger@lwfinger.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_134034_449520_76715A1E 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org, =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>,
 Kalle Valo <kvalo@codeaurora.org>, b43-dev@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

T24gRnJpLCAyMiBNYXkgMjAyMCBhdCAxOTowMiwgTGFycnkgRmluZ2VyIDxMYXJyeS5GaW5nZXJA
bHdmaW5nZXIubmV0PiB3cm90ZToKPgo+IFJ1aSwKPgo+IERvZXMgdGhpcyBvbmUtbGluZQo+IHBh
dGNoIHdvcmsgZm9yIFdQQTMgd2l0aG91dCBzZXR0aW5nIHRoZSBub2h3Y3J5cHQgb3B0aW9uPwoK
T2ssIHNvIGl0ICJ3b3JrcyIsIGJ1dCBJIGRvbid0IGtub3cgd2hhdCBhY3R1YWxseSBoYXBwZW5l
ZCAoSSBkaWRuJ3QKZG8gYW55IHBlcmZvcm1hbmNlIHRlc3RpbmcgeWV0KS4gSSBnb3QgdGhpcyBy
ZWxldmFudCBvdXRwdXQgb24gbXkKa21zZ+KApgoKcnVpQG1jbnVnZ2V0On4kIGRtZXNnIHwgYXdr
ICcoLzgwMjExLyB8fCAvYjQzLyB8fCAvd2xhbjAvKScKWyAgICAwLjAwMDAwMF0gS2VybmVsIGNv
bW1hbmQgbGluZTogQk9PVF9JTUFHRT0vdm1saW51eC01LjcuMC1yYzYrCnJvb3Q9VVVJRD04NDli
YmVmMy0wMDdlLTQ5MWUtYjE4Ny05ZTI1OTY4MGMyZTIgcm8gbWl0aWdhdGlvbnM9b2ZmCmI0My5x
b3M9MCBiNDMudmVyYm9zZT0zIHVzYmhpZC5tb3VzZXBvbGw9MTYgcXVpZXQgc3BsYXNoClsgICAg
MC4wMzU3MDVdIGI0My1wY2ktYnJpZGdlIDAwMDE6MTA6MTIuMDogZW5hYmxpbmcgZGV2aWNlICgw
MDA0IC0+IDAwMDYpClsgICAgMC4yMTAyOTldIGI0My1wY2ktYnJpZGdlIDAwMDE6MTA6MTIuMDog
U29uaWNzIFNpbGljb24gQmFja3BsYW5lCmZvdW5kIG9uIFBDSSBkZXZpY2UgMDAwMToxMDoxMi4w
ClsgICAgMy4zNjE5MDhdIGI0My1waHkwOiBCcm9hZGNvbSA0MzE4IFdMQU4gZm91bmQgKGNvcmUg
cmV2aXNpb24gOSkKWyAgICAzLjQ1NDIzNV0gYjQzLXBoeTA6IEZvdW5kIFBIWTogQW5hbG9nIDMs
IFR5cGUgMiAoRyksIFJldmlzaW9uIDcKWyAgICAzLjQ1NDI1OV0gYjQzLXBoeTA6IEZvdW5kIFJh
ZGlvOiBNYW51ZiAweDE3RiwgSUQgMHgyMDUwLCBSZXZpc2lvbgo4LCBWZXJzaW9uIDAKWyAgICAz
LjQ4NTEyNV0gaWVlZTgwMjExIHBoeTA6IFNlbGVjdGVkIHJhdGUgY29udHJvbCBhbGdvcml0aG0g
J21pbnN0cmVsX2h0JwpbICAgMjguNjk3OTQ1XSBiNDMtcGh5MDogTG9hZGluZyBmaXJtd2FyZSB2
ZXJzaW9uIDY2Ni4yICgyMDExLTAyLTIzIDAxOjE1OjA3KQpbICAgMjguNzMwMzgxXSBiNDMtcGh5
MCBkZWJ1ZzogQ2hpcCBpbml0aWFsaXplZApbICAgMjguNzMxMzg5XSBiNDMtcGh5MCBkZWJ1Zzog
MzItYml0IERNQSBpbml0aWFsaXplZApbICAgMjguNzMxNDAwXSBiNDMtcGh5MCBkZWJ1ZzogUW9T
IGRpc2FibGVkClsgICAyOC43OTIyNzJdIGI0My1waHkwIGRlYnVnOiBXaXJlbGVzcyBpbnRlcmZh
Y2Ugc3RhcnRlZApbICAgMjguODIwMzE4XSBiNDMtcGh5MCBkZWJ1ZzogQWRkaW5nIEludGVyZmFj
ZSB0eXBlIDIKWyAgIDMzLjk0NDc3MV0gd2xhbjA6IGF1dGhlbnRpY2F0ZSB3aXRoIDA0OmYwOjIx
OjI0OjI4OjQ0ClsgICAzMy45NzA0NDldIHdsYW4wOiBzZW5kIGF1dGggdG8gMDQ6ZjA6MjE6MjQ6
Mjg6NDQgKHRyeSAxLzMpClsgICAzNC4wMjYyMjJdIHdsYW4wOiBhdXRoZW50aWNhdGUgd2l0aCAw
NDpmMDoyMToyNDoyODo0NApbICAgMzQuMDI2MjQxXSB3bGFuMDogc2VuZCBhdXRoIHRvIDA0OmYw
OjIxOjI0OjI4OjQ0ICh0cnkgMS8zKQpbICAgMzQuMDI4NTIyXSB3bGFuMDogYXV0aGVudGljYXRl
ZApbICAgMzQuMDQzMjU2XSB3bGFuMDogYXNzb2NpYXRlIHdpdGggMDQ6ZjA6MjE6MjQ6Mjg6NDQg
KHRyeSAxLzMpClsgICAzNC4wNDY5NDZdIHdsYW4wOiBSWCBBc3NvY1Jlc3AgZnJvbSAwNDpmMDoy
MToyNDoyODo0NCAoY2FwYWI9MHg0MzEKc3RhdHVzPTMwIGFpZD0xKQpbICAgMzQuMDQ2OTY0XSB3
bGFuMDogMDQ6ZjA6MjE6MjQ6Mjg6NDQgcmVqZWN0ZWQgYXNzb2NpYXRpb24KdGVtcG9yYXJpbHk7
IGNvbWViYWNrIGR1cmF0aW9uIDEwMDAgVFUgKDEwMjQgbXMpClsgICAzNS4xMjIwNTFdIHdsYW4w
OiBhc3NvY2lhdGUgd2l0aCAwNDpmMDoyMToyNDoyODo0NCAodHJ5IDIvMykKWyAgIDM1LjEyNTU0
N10gd2xhbjA6IFJYIEFzc29jUmVzcCBmcm9tIDA0OmYwOjIxOjI0OjI4OjQ0IChjYXBhYj0weDQz
MQpzdGF0dXM9MCBhaWQ9MSkKWyAgIDM1LjEyNTgwOF0gd2xhbjA6IGFzc29jaWF0ZWQKWyAgIDM1
LjI2ODI1Nl0gYjQzLXBoeTAgZGVidWc6IFVzaW5nIGhhcmR3YXJlIGJhc2VkIGVuY3J5cHRpb24g
Zm9yCmtleWlkeDogMCwgbWFjOiAwNDpmMDoyMToyNDoyODo0NApbICAgMzUuMjY4NzYyXSBiNDMt
cGh5MCBkZWJ1ZzogVXNpbmcgaGFyZHdhcmUgYmFzZWQgZW5jcnlwdGlvbiBmb3IKa2V5aWR4OiAy
LCBtYWM6IGZmOmZmOmZmOmZmOmZmOmZmClsgICAzNS4zNTg1ODZdIHdsYW4wOiBmYWlsZWQgdG8g
c2V0IGtleSAoNSwgZmY6ZmY6ZmY6ZmY6ZmY6ZmYpIHRvIGhhcmR3YXJlICgtMjIpClsgICAzNS4z
NTg5NzddIElQdjY6IEFERFJDT05GKE5FVERFVl9DSEFOR0UpOiB3bGFuMDogbGluayBiZWNvbWVz
IHJlYWR5ClsgICA4Ny4yODMyMjBdIHdsYW4wOiBmYWlsZWQgdG8gc2V0IGtleSAoNCwgZmY6ZmY6
ZmY6ZmY6ZmY6ZmYpIHRvIGhhcmR3YXJlICgtMjIpClsgICA4Ny4yODM1MjFdIGI0My1waHkwIGRl
YnVnOiBVc2luZyBoYXJkd2FyZSBiYXNlZCBlbmNyeXB0aW9uIGZvcgprZXlpZHg6IDEsIG1hYzog
ZmY6ZmY6ZmY6ZmY6ZmY6ZmYKcnVpQG1jbnVnZ2V0On4kCgpNZWFud2hpbGUsIGl3IGxpc3Qgc2hv
d3MgYWxsIHRoZSBwb3NzaWJsZSBzb2Z0d2FyZSBjeXBoZXJzOgoKICAgIFN1cHBvcnRlZCBDaXBo
ZXJzOgogICAgICAgICogV0VQNDAgKDAwLTBmLWFjOjEpCiAgICAgICAgKiBXRVAxMDQgKDAwLTBm
LWFjOjUpCiAgICAgICAgKiBUS0lQICgwMC0wZi1hYzoyKQogICAgICAgICogQ0NNUC0xMjggKDAw
LTBmLWFjOjQpCiAgICAgICAgKiBDQ01QLTI1NiAoMDAtMGYtYWM6MTApCiAgICAgICAgKiBHQ01Q
LTEyOCAoMDAtMGYtYWM6OCkKICAgICAgICAqIEdDTVAtMjU2ICgwMC0wZi1hYzo5KQogICAgICAg
ICogQ01BQyAoMDAtMGYtYWM6NikKICAgICAgICAqIENNQUMtMjU2ICgwMC0wZi1hYzoxMykKICAg
ICAgICAqIEdNQUMtMTI4ICgwMC0wZi1hYzoxMSkKICAgICAgICAqIEdNQUMtMjU2ICgwMC0wZi1h
YzoxMikKCldoYXQgSSdtIG5vdCBzdXJlIGlzIGlmIGI0MyBpcyBkb2luZyBhbGwgdGhlIGN5cGhl
cnMgaXQgc3VwcG9ydHMgaW4KaGFyZHdhcmUgYW5kIGZhbGxpbmcgYmFjayB0byBzb2Z0d2FyZSBq
dXN0IGZvciB0aGUgdW5zdXBwb3J0ZWQgb25lcywKb3IgaWYgaXQncyBkb2luZyBldmVyeXRoaW5n
IGluIHNvZnR3YXJlLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
