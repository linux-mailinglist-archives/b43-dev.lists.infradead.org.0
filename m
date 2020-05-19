Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D4C1DA29C
	for <lists+b43-dev@lfdr.de>; Tue, 19 May 2020 22:31:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lxkguGjLm0PvnZ0Syvlt1aS/U4jQlMSfHg0HWXN2EHY=; b=GouxDY1rMNMcpac76/l/QgWoT
	jKvS2aphuMaADKyXd0dLfdS8qx6tK8zkAqnAm6XAcTY8MLGHptAhDVJ5iiJ2ObIlk383zcwOT/f5e
	YhAs7FTqBMR9vTwtJyf3vcxxieHaiL48niG0M3GxHe7+J+qrPywUDnI6r+CviyNp0TTz6ydHpj56W
	59wUB+6GNRDkBGvQPvFuanzTaZ5Zg3qjQr/F7Bqr4A9POs/LNn2q7AN2/JeYeLDEtJeT2HboUnUbV
	fzl2eIkB5bSNoI/3egLDyJd7HMpKThkoUBF/N0kO1WVTgc8M3fmLU+rRtBN8zvyciy45pNu3iiB+e
	IfWxbsO6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb8t8-000772-CQ; Tue, 19 May 2020 20:30:58 +0000
Received: from mail-oo1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb8t4-00076h-5e
 for b43-dev@lists.infradead.org; Tue, 19 May 2020 20:30:55 +0000
Received: by mail-oo1-xc44.google.com with SMTP id q6so262015oot.0
 for <b43-dev@lists.infradead.org>; Tue, 19 May 2020 13:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=dx0ROIfpxPNxpTzcLqH6YhErM/7O6DqSZlLymfDPSIo=;
 b=WYdUMlfAn85zQF1ca45I1sZL/OfaHhFs1UoXqgtc5ACgv57eeN5NDPsfav+YQ0GzFL
 c/HNzO0ZL2MCO4xox5V7x8JtGo+lm36RMh+1F2enCXMZGPknn/bLYtIpf3O0WBB4b5v8
 ywfP1xs3bSdqrLs0o5EKY9syptqCDlOubfIwbNZcS+/fPUJeg/8yN8SSR7wxAlYrfdws
 G7OJW5ggbwiNnLEYoUuizMZ70gPxG1O5nmDusPxBo+dfYeScDL1QUFF1pPlbjm077woa
 b3Xxag+qiM/nSU06Ov86w/E86SgRIWq4FA07kgs233vkRAiJRsZ1FdztkDxMrTHA1jKh
 Ootw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dx0ROIfpxPNxpTzcLqH6YhErM/7O6DqSZlLymfDPSIo=;
 b=YICEHLV2PRtzDkNzRM2ob1z0XAlpheZKEBEgmdNoSGAN0xihzgfAVUc7GIahSJtOlO
 PL+IS6W7jTdDbmXjtoUmePhMuwbCGsBiH5ZDWlr8xjoEqsIVtFQ8qDtOGBGZJLbkXg6t
 gDMBxFeZHzkIW5kveTiV1MPChSs0J2JeXLQTV4pqoYObGDtIuLIEtUnCWJm6ljcNaxO1
 4eh75mRPEKmCVTIwHbPUVIJt6i8VQr42WcusbUAs+eRXpxILviTf85olg3uTDVYARcU7
 PPrt+vYMtZRN6jNof689LTuYvYiTchvfxz6k0NAzj5aOArVhBoognA5y03cGu+4S0aLa
 6Qwg==
X-Gm-Message-State: AOAM531etKkbJI8PQd4aHIjBqLAO1qEWHilT0pMX2EBaKVRHLaBtXgXH
 i9jBOzVPLLr2hS+/NSL+ZZEEwzsu
X-Google-Smtp-Source: ABdhPJzHcAbcaXHk5fmfXfKqjYuaBfLPnCFzw0+LTIiAsMX/7HPwnCD1XaxN2+z3ZnnfUelNORLqug==
X-Received: by 2002:a4a:3ed6:: with SMTP id t205mr765862oot.51.1589920252533; 
 Tue, 19 May 2020 13:30:52 -0700 (PDT)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id c12sm229955oib.22.2020.05.19.13.30.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 May 2020 13:30:52 -0700 (PDT)
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: Rui Salvaterra <rsalvaterra@gmail.com>, b43-dev@lists.infradead.org,
 linux-wireless@vger.kernel.org
References: <CALjTZvbLOr5zAYyp75Cs6Zo8mWNUVq3ZRJu56G1iHdiihFejWQ@mail.gmail.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <3483242e-c2ad-ec83-0c2c-ce952bc9b638@lwfinger.net>
Date: Tue, 19 May 2020 15:30:51 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CALjTZvbLOr5zAYyp75Cs6Zo8mWNUVq3ZRJu56G1iHdiihFejWQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_133054_277046_4B7FBA81 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [larry.finger[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

T24gNS8xOS8yMCA5OjE4IEFNLCBSdWkgU2FsdmF0ZXJyYSB3cm90ZToKPiBIaSwgZXZlcnlvbmUh
Cj4gCj4gSSd2ZSBiZWVuIHRyeWluZyB0byBjb25uZWN0IHRvIGEgV1BBMyAocGVyc29uYWwsIG5v
dCBlbnRlcnByaXNlKQo+IG5ldHdvcmsgYnV0LCBhcyBleHBlY3RlZCwgdGhlIGNvbm5lY3Rpb24g
YWx3YXlzIGZhaWxzIHdpdGggaGFyZHdhcmUKPiBlbmNyeXB0aW9uIChtb3N0IGxpa2VseSBkdWUg
dG8gbWFuZGF0b3J5IE1GUCwgd2hpY2ggdGhlIGhhcmR3YXJlIHdvbid0Cj4gZG8pLiBXaGF0IEkg
ZGlkbid0IGV4cGVjdCB3YXMgdG8gaGF2ZSB0aGUgZXhhY3Qgc2FtZSBwcm9ibGVtIHdoZW4KPiB1
c2luZyBzb2Z0d2FyZSBjcnlwdG8uIEkndmUgdHJpZWQgd2l0aCBvdGhlciBkZXZpY2VzLCBhbmQg
dGhleSB3b3JrCj4gZmluZS4gT25lIHRoaW5nIEkgbm90aWNlZCBpcyB0aGlzOiBmb3IgZXhhbXBs
ZSwgYSBSYWxpbmsgUlQyNzkwCj4gZGV2aWNlLCBvbiBhbm90aGVyIG1hY2hpbmUsIHNob3dzIHRo
ZSBmb2xsb3dpbmcgc3VwcG9ydGVkIGN5cGhlcnMgd2l0aAo+IGhhcmR3YXJlIGNyeXB0b+KApgo+
IAo+ICAgICAgICAgICogV0VQNDAgKDAwLTBmLWFjOjEpCj4gICAgICAgICAgKiBXRVAxMDQgKDAw
LTBmLWFjOjUpCj4gICAgICAgICAgKiBUS0lQICgwMC0wZi1hYzoyKQo+ICAgICAgICAgICogQ0NN
UC0xMjggKDAwLTBmLWFjOjQpCj4gICAgICAgICAgKiBDQ01QLTI1NiAoMDAtMGYtYWM6MTApCj4g
ICAgICAgICAgKiBHQ01QLTEyOCAoMDAtMGYtYWM6OCkKPiAgICAgICAgICAqIEdDTVAtMjU2ICgw
MC0wZi1hYzo5KQo+IAo+IOKApiBhbmQgd2l0aCBzb2Z0d2FyZSBjcnlwdG/igKYKPiAKPiAgICAg
ICAgICAqIFdFUDQwICgwMC0wZi1hYzoxKQo+ICAgICAgICAgICogV0VQMTA0ICgwMC0wZi1hYzo1
KQo+ICAgICAgICAgICogVEtJUCAoMDAtMGYtYWM6MikKPiAgICAgICAgICAqIENDTVAtMTI4ICgw
MC0wZi1hYzo0KQo+ICAgICAgICAgICogQ0NNUC0yNTYgKDAwLTBmLWFjOjEwKQo+ICAgICAgICAg
ICogR0NNUC0xMjggKDAwLTBmLWFjOjgpCj4gICAgICAgICAgKiBHQ01QLTI1NiAoMDAtMGYtYWM6
OSkKPiAgICAgICAgICAqIENNQUMgKDAwLTBmLWFjOjYpCj4gICAgICAgICAgKiBDTUFDLTI1NiAo
MDAtMGYtYWM6MTMpCj4gICAgICAgICAgKiBHTUFDLTEyOCAoMDAtMGYtYWM6MTEpCj4gICAgICAg
ICAgKiBHTUFDLTI1NiAoMDAtMGYtYWM6MTIpCj4gCj4g4oCmIHdoaWxlIGI0MyBzaG93cyBleGFj
dGx5IHRoZSBzYW1lIGluIGJvdGggbW9kZXPigKYKPiAKPiAgICAgICAgICAqIFdFUDQwICgwMC0w
Zi1hYzoxKQo+ICAgICAgICAgICogV0VQMTA0ICgwMC0wZi1hYzo1KQo+ICAgICAgICAgICogVEtJ
UCAoMDAtMGYtYWM6MikKPiAgICAgICAgICAqIENDTVAtMTI4ICgwMC0wZi1hYzo0KQo+ICAgICAg
ICAgICogQ0NNUC0yNTYgKDAwLTBmLWFjOjEwKQo+ICAgICAgICAgICogR0NNUC0xMjggKDAwLTBm
LWFjOjgpCj4gICAgICAgICAgKiBHQ01QLTI1NiAoMDAtMGYtYWM6OSkKPiAKPiBUaGlzIGlzIGEg
QkNNNDMxOCBkZXZpY2UgKFBDSSBJRCAxNGU0OjQzMTgpLCBidXQgSSBkb24ndCBrbm93IGlmCj4g
dGhhdCdzIHJlbGV2YW50Lgo+IElzIHRoaXMgYmVoYXZpb3VyIGV4cGVjdGVkPwo+IAo+IFRoYW5r
cyBpbiBhZHZhbmNlLAo+IFJ1aQo+IAoKUnVpLAoKIEZyb20gb3RoZXIgZHJpdmVycywgaXQgYXBw
ZWFycyB0aGF0IGhhbmRsaW5nIFdQQTMgbWlnaHQgYmUgYXMgc2ltcGxlIGFzIHNldHRpbmcgCk1G
UF9DQVBBQkxFIGluIHRoZSBoYXJkd2FyZSBjYXBhYmlsaXRpZXMuIFBsZWFzZSB0cnkgdGhpcyBw
YXRjaDoKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9iNDMvbWFp
bi5jIApiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29tL2I0My9tYWluLmMKaW5kZXggMzlk
YTFhNGMzMGFjLi5lOTQ0ZmUyZTlhYzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNz
L2Jyb2FkY29tL2I0My9tYWluLmMKKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20v
YjQzL21haW4uYwpAQCAtNDE2Miw4ICs0MTYyLDExIEBAIHN0YXRpYyBpbnQgYjQzX29wX3NldF9r
ZXkoc3RydWN0IGllZWU4MDIxMV9odyAqaHcsIGVudW0gCnNldF9rZXlfY21kIGNtZCwKICAgICAg
ICAgaW50IGVycjsKICAgICAgICAgc3RhdGljIGNvbnN0IHU4IGJjYXN0X2FkZHJbRVRIX0FMRU5d
ID0geyAweGZmLCAweGZmLCAweGZmLCAweGZmLCAweGZmLCAKMHhmZiB9OwoKLSAgICAgICBpZiAo
bW9kcGFyYW1fbm9od2NyeXB0KQorICAgICAgIGlmIChtb2RwYXJhbV9ub2h3Y3J5cHQpIHsKKyAg
ICAgICAgICAgICAgIC8qIFVzZXIgZGlzYWJsZWQgSFctY3J5cHRvIC0gZW5hYmxlIE1GUCAoV1BB
MykgKi8KKyAgICAgICAgICAgICAgIGllZWU4MDIxMV9od19zZXQoaHcsIE1GUF9DQVBBQkxFKTsK
ICAgICAgICAgICAgICAgICByZXR1cm4gLUVOT1NQQzsgLyogVXNlciBkaXNhYmxlZCBIVy1jcnlw
dG8gKi8KKyAgICAgICB9CgogICAgICAgICBpZiAoKHZpZi0+dHlwZSA9PSBOTDgwMjExX0lGVFlQ
RV9BREhPQyB8fAogICAgICAgICAgICAgIHZpZi0+dHlwZSA9PSBOTDgwMjExX0lGVFlQRV9NRVNI
X1BPSU5UKSAmJgoKSSBoYXZlIG5vIHdheSBvZiB0ZXN0aW5nIG90aGVyIHRoYW4gdG8gY29tcGls
ZS4KCkxhcnJ5CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
