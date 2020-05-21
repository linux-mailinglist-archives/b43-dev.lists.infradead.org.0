Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA10E1DD083
	for <lists+b43-dev@lfdr.de>; Thu, 21 May 2020 16:53:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WykX5uW3ABxJK0H22yqYiZV81I3/J5D6s3ZY9N7SWoQ=; b=eHqJkCcqSQH4VD
	ZopkO1lrjTYJK8RV9+C7ueMUQcQfcSAe07l+3k+4tCx4XDZswlaz7hCavw9zDjuXQyElkauCy33MK
	Y0e755tntyDZDSdgGjeXc5RNYzBWEJ6t3a66Zim86+xkNDCzX+Gf3v1DaPiRi2itYiOlLy7hpd/wT
	4Hvn3FlpM3J+POjcdPBCsXKbpuiL+vltk4A2wNdUvu4giB6+ojm3R+kNbgOZlF/e1SuJqD1Dt0Oe8
	GVAJTdfN8wIWPz7zl3Haq0cEgnJ97Mu51mZBinDRvYhr/eSMkcJKGI0i2RijW+CD4bjGnop9efGEg
	evFF5mJVdIcs/I8cePww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbmZB-0008Vi-QO; Thu, 21 May 2020 14:53:01 +0000
Received: from mail-vs1-xe2d.google.com ([2607:f8b0:4864:20::e2d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbmZ7-0008VK-2b
 for b43-dev@lists.infradead.org; Thu, 21 May 2020 14:52:58 +0000
Received: by mail-vs1-xe2d.google.com with SMTP id v26so4186682vsa.1
 for <b43-dev@lists.infradead.org>; Thu, 21 May 2020 07:52:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=RaeuoJY8rKJQZCpKfSeifeRXidvsPBfJGfbnhauOBT4=;
 b=j/cJiiIWCZF+CLCG557cgpB7S12zg5Y7Md3P8u29+6wkyFpmP4/x+70LqLWp8gk5iH
 WWPGApvZDrJtDmXux7vFzW+rBGvgKajnXhtP0GIsD4qgS49iY0s81aJrPoYP9sPLtHwo
 TLQiD178g4nt13KzUsGvUqGTAt25MVWQIiA9tRVXRl3KtBU5aZJjRQrMqfgFDBqdZX7G
 PHhX6wNWbvzVWe92fnzcMEcbG60/7bYH/PmAYm6LBzBnzPMkoKYoPfTi34Y2T8bp0BwB
 grdanHaTEWXt//KYzVKoj2EMrhqr1Hz1aorRsqhzN4mSav+qONMGQxgS4Pr/xxEgm6Z0
 NOeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=RaeuoJY8rKJQZCpKfSeifeRXidvsPBfJGfbnhauOBT4=;
 b=mtlJVBySe8v6zmR+npc/bq2PfW5+9GRvauR88uiOW8B8tQkZ+KXPoel1Cn55kBmdEQ
 tumheHW7Rr8yp5AYYQUs3thKlN7e2lt6tGYfjdiozXhB2xw1Fy4A8JxnYgsJOmXCfIRv
 37UwI7h1zlJ13NahOjsJTJEI6TgmH4BrQ2EzyySYEUFTDs6As1Dm+4b1pY5yc4GG4dFG
 8ZxMYW8XC4RyM/BaQ2XF6JgeZJLyHix6XkfCj64mYOz8/gY8NspA03cXuzkYERtTU0A3
 v+1vyKM+kZTFvjfo4AETV8Nq8BwaNW8Y5Poo334au9PbpBMW+thyMgQSsnkKXCNS5R3u
 lrbA==
X-Gm-Message-State: AOAM532Ex+Xw+gYGBIPV4IZcD6iKjm6PhhY+TsVULOVfR4b/ehujs+Vn
 v/iYIXsTn8nllQxYXZ6IV0gqMIAR3oFbFEMoyLfv+viSyg==
X-Google-Smtp-Source: ABdhPJw8L6W6noPkSqdeXkoEln2rm5zlJ/HmGdSylKKuyuY4yn+6gCna5F8QaxEeia5/HnkA5KpPnIpl+A5PdXJg8tk=
X-Received: by 2002:a67:f313:: with SMTP id p19mr3805235vsf.63.1590072775920; 
 Thu, 21 May 2020 07:52:55 -0700 (PDT)
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
 <CALjTZvan46UTwcUxOSN=RiE6XHm-29Ln8B6wiv40V_RVxWewtA@mail.gmail.com>
 <20200521134011.656381ad@wiggum>
In-Reply-To: <20200521134011.656381ad@wiggum>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Thu, 21 May 2020 15:52:44 +0100
Message-ID: <CALjTZvZcfT-aURMa=j-1ksWyVdu42bLEsGOaq+Hw39ioiPFKAA@mail.gmail.com>
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_075257_136495_4AE4DF21 
X-CRM114-Status: UNSURE (   7.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e2d listed in]
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

T24gVGh1LCAyMSBNYXkgMjAyMCBhdCAxMjo0MCwgTWljaGFlbCBCw7xzY2ggPG1AYnVlcy5jaD4g
d3JvdGU6Cj4KPiBUaGF0J3Mgbm90IGV4YWN0bHkgYSBtb2Rlcm4gQ1BVLCBidXQgbWVhc3VyZW1l
bnRzIHdvdWxkIGJlIHVzZWZ1bAo+IGFueXdheS4KCkl0J3Mgbm90IGV4YWN0bHkgYSBtb2Rlcm4g
V2ktRmkgY2FyZCBlaXRoZXIsIGFuZCBiZWluZyA4MDIuMTFnIG1pZ2h0CmFjdHVhbGx5IGhlbHAg
bGltaXRpbmcgdGhlIENQVSBvdmVyaGVhZC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0
My1kZXYK
