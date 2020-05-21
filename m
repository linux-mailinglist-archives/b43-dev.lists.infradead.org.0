Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9516C1DCC23
	for <lists+b43-dev@lfdr.de>; Thu, 21 May 2020 13:31:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a/UAdnu8P2xVQgK1sgKqDAVp/e1vesglYcUksaNr4I4=; b=tAePEhg4YKoay9
	MgDWXVOjXGNKDL3h3L6/PPvnAyAJCWwzaz+lAuKyJv/B0tvzAx7r+67QstFsB4dGeKwJ5vrFIsj/e
	KcWfAhIcD2NiBQ3IcsiHGY/v2dTUpZJnXt65WeLmnutvVQPZz47a1manxqFI5iqAOzoLbw63mBmFl
	Y4wMYpzhcx9h7ppFe0SDeIJxaUc21EzkRmXu2PIdY3cgl/D7AZsaW3R6rCfmPNxpQnaIl8dd9g3u3
	nqJqB2+MllJkLWKLFGSOnIBmrjGwB0GJJp8zGMbQs43N+RWwI/kUnFJwgZQ4Yyt2Niu7MDvIkZAld
	JWssLfrzB+3RY8cs5YNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbjPf-0001yn-Ou; Thu, 21 May 2020 11:30:59 +0000
Received: from mail-ua1-x931.google.com ([2607:f8b0:4864:20::931])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbjPc-0001yR-9F
 for b43-dev@lists.infradead.org; Thu, 21 May 2020 11:30:57 +0000
Received: by mail-ua1-x931.google.com with SMTP id g7so2441051uap.7
 for <b43-dev@lists.infradead.org>; Thu, 21 May 2020 04:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=aehwiST4ehzo26Jl3FBKR3m0MpWLLtTbM7BjtOibyho=;
 b=n5UVYu+aFoDFVnVlEBazmytP/7vZCEoSG+hZtnoM31lTSfVchsILahln31MU56atHh
 6W5T62LhTyFc1dt1wHu+yTKlb7MBKmhyyJFdw6r6bwvy9DuYu2iqlm7XiF5+VVQzfqfd
 49Wc/HWIdqFUKLqy+FxsELobFDbvB5Dfnn3gnSTrZS5hoW4LJVHzDRypYV8lFVCwSu8c
 1EoJm98WwxjXpKdiMlF9eo91kGhtUm0vP1cRpJJDUuOWNGQynZnMkf6IZa4v0TG3TyNl
 ZniGaLeB7Zfq+qbdD1I2VcH0Nsd6QonohhMAPEM8JyPIX4eObfRXt2/BX3feQNwNbkDl
 kn3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=aehwiST4ehzo26Jl3FBKR3m0MpWLLtTbM7BjtOibyho=;
 b=jmhCjn4gpDoKP1I+GXWlfdzkF4jcbGxWXHJ+yq/Fbg4TQaFnDwci3qkKgwsHj+2yG5
 hh18ObDqBRuNDQXrbXQbMnvhT5Q0DVNBYiZ4KCvSmI15oQ2oMRCz9YkcaaqY4Jaz4VLI
 rL2abDUJgDmd5OLaXUJU59xgMRwbZxKtUTK0UohdzOeq/k5WymaLsaHAoAr+uqB8+EJ3
 /v/+E512POsn6/jgohTdDQKYunjho0jb/UaDabN3McPzc6Btv8ObckjbpgsT51u/O9YE
 OgqxISuK4u9Snc0U4pj0eO4K9gigzDy5Qqm/p8sAIFo2896PRwPgUBH439u9VashQShp
 cg1A==
X-Gm-Message-State: AOAM531ZaiQO/gzIjINGlwZIHmm/aow/joYxZ7WrHysg9v/P2W2irFQE
 2FYXxJdcaontvvswRq2athskKd/oHVATOKiygg==
X-Google-Smtp-Source: ABdhPJwuV5Rz/iSKQJ9lJMqvDJE6j1dXtQM2k2zl+tC/taFs0nU6jxvngG752dnh9v0j+K0zICfl3zVxudON5exuVW8=
X-Received: by 2002:ab0:25:: with SMTP id 34mr3292186uai.63.1590060654791;
 Thu, 21 May 2020 04:30:54 -0700 (PDT)
MIME-Version: 1.0
References: <CALjTZvbLOr5zAYyp75Cs6Zo8mWNUVq3ZRJu56G1iHdiihFejWQ@mail.gmail.com>
 <3483242e-c2ad-ec83-0c2c-ce952bc9b638@lwfinger.net>
 <CALjTZvatxQ2BvUeZGcTFijBf1PiLizJuDdENxg2b=tPQL_NAzQ@mail.gmail.com>
 <CALjTZvYSJOx0xeMVkN6dHcGTdgW9O9NVbgXPKK4d6-31VX+0JQ@mail.gmail.com>
 <29f5e3de-a32c-6292-9197-19dcc57fa6a3@lwfinger.net>
 <CALjTZvaroTrgK9=W8uTwq9YcYayfuEU31BUc0qNYJr+08hevfg@mail.gmail.com>
 <CALjTZvaPi2FL-epk-Vd2wOLye2O0J8G5aZPsqzHXt2b7u=HyuQ@mail.gmail.com>
 <263e247c-3bf9-6d42-996b-bc513efe4b71@lwfinger.net>
 <CALjTZvauK0Hh+aoabcDX9kkQZ4zN2ZjPnB+aq7YrJ9+-4ihiAg@mail.gmail.com>
 <87fffd5d-242a-7195-c4cc-80260dbd53c5@lwfinger.net>
 <CALjTZvYCFNSQ6HMN4owkiGTVrYaiU8R-P1KXgvkwGqcOo8uMuw@mail.gmail.com>
 <CALjTZvYMF_ERBfzkhaHvsTu6kt7MW+L_979sOVs8hcH7zF_Nyg@mail.gmail.com>
 <20200521124608.4b5c78f2@wiggum>
In-Reply-To: <20200521124608.4b5c78f2@wiggum>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Thu, 21 May 2020 12:30:43 +0100
Message-ID: <CALjTZvan46UTwcUxOSN=RiE6XHm-29Ln8B6wiv40V_RVxWewtA@mail.gmail.com>
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_043056_320594_250E4FD1 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:931 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

SGksIE1pY2hhZWwsCgpPbiBUaHUsIDIxIE1heSAyMDIwIGF0IDExOjQ2LCBNaWNoYWVsIELDvHNj
aCA8bUBidWVzLmNoPiB3cm90ZToKPgo+IEdyZWF0LiBUaGFuayB5b3UgZm9yIHRlc3RpbmcuCj4K
PiBTaG91bGQgd2UgY29uc2lkZXIgZGVmYXVsdGluZyBod2NyeXB0byB0byBvZmY/CgpJTUhPLCBu
b3Qgd2l0aG91dCB0ZXN0aW5nLiBTZWUgYmVsb3cuIDopCgo+IEkgd29uZGVyIHdoYXQgdGhlIHBl
cmZvcm1hbmNlIHBlbmFsdHkgaXMsIGlmIGFueSwgb24gdG9kYXkncyBDUFVzCj4gdGhhdCBoYXZl
IHNvbWUgSFctY3J5cHRvIGVtYmVkZGVkLiBPZiBjb3Vyc2UgdGhhdCBkZXBlbmRzIG9uIHdoZXRo
ZXIgd2UKPiBhY3R1YWxseSB1c2UgdGhhdCBoZXJlLgo+Cj4gQ291bGQgd2UgaGF2ZSBzb21lIGJl
bmNobWFya3MgKHRocm91Z2hwdXQgYW5kIENQVSBsb2FkIHdpc2UpPwoKSSdtIHByZXBhcmluZyB0
byBkbyBzb21lIHBlcmZvcm1hbmNlIHRlc3RzIGFzIHdlIHNwZWFrLiBOb3RoaW5nIHRvbwplbGFi
b3JhdGUsIGp1c3QgdHJhbnNmZXJyaW5nIGEgZmlsZSBvdmVyIE5GUyBhbmQgaGF2aW5nIGEgbG9v
ayBhdCB0aGUKQ1BVIHVzYWdlLCB3aXRoIGJvdGggaGFyZHdhcmUgY3J5cHRvIGVuYWJsZWQvZGlz
YWJsZWQgKHdoaWxlIEkKaW5pdGlhbGx5IHRob3VnaHQgb2YgZG9pbmcgaXQgb3ZlciBTRlRQLCB0
aGUgY3J5cHRvIG92ZXJoZWFkIHdpbGwKc3VyZWx5IG92ZXJ3aGVsbSB0aGlzIHN5c3RlbSkuIERv
IHlvdSBzdWdnZXN0IGEgbW9yZSBzY2llbnRpZmljYWxseQphY2NlcHRhYmxlIHRlc3Q/CkFsc28g
bm90ZSB0aGF0IHRoaXMgYSBQb3dlclBDIGxhcHRvcCAoaUJvb2sgRzQpLiBUaGlzIG1lYW5zIGl0
J3MgdXNpbmcKdGhlIGdlbmVyaWMgQyBjcnlwdG8gYWxnb3JpdGhtcywgdGhlcmUgYXJlIG5vIFNJ
TUQgKFZNWC9BbHRpVmVjKQppbXBsZW1lbnRhdGlvbnMgb2YgQUVTIGFuZCBmcmllbmRzIG9uIFBv
d2VyUEMsIGF0IGxlYXN0IGZyb20gd2hhdCBJJ3ZlCnNlZW4gaW4gdGhlIGtjb25maWcuCgpUaGFu
a3MsClJ1aQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
YjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
