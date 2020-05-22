Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7471DF053
	for <lists+b43-dev@lfdr.de>; Fri, 22 May 2020 22:04:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tgrh9dDKKAMsAt1zeIGbfHJFmqSjr93sb62vO85+bTY=; b=s7a/971627BFjJ
	9xsxLYuVdBlJNDdupX7ZhdVN8gX68icKLX6vxT7Vc1Oywy8JOve2gnFIurv5r6d6B1sOgZiFgY2j6
	LFhY3W+D3an8GT4PPgSGzwRvaHwK2Yne5RreR+7K8VoI4ttXimK3ea4C3iea6qb8h8vE4ctTPFBio
	nS12mMVzRUvUmBVLkYPZtTkpv79foo/hsxxSq33fCWZKxY7wfU3VbHJn98QL56ETDXwKFYyyGDTE1
	Y0pRLaMwlNF4NuVLYCxstoWeIlB7W+QhqJzDZsdXqU0lnB99BajbhPeabLGfpMFMRGffhflGyEEDz
	b/Fz3PPpgHPZqMUWuetw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcDuG-0007gL-R1; Fri, 22 May 2020 20:04:36 +0000
Received: from mail-vs1-xe29.google.com ([2607:f8b0:4864:20::e29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcDuD-0007fQ-OE
 for b43-dev@lists.infradead.org; Fri, 22 May 2020 20:04:35 +0000
Received: by mail-vs1-xe29.google.com with SMTP id 1so6733824vsl.9
 for <b43-dev@lists.infradead.org>; Fri, 22 May 2020 13:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2j/2zVr3Y5MsRPnNj6wzL4hndd2iqr5mTiIwqASoAFw=;
 b=vVws4061OjMe6FdcHEsMVjvZ1Xk9IDu6m0brw3U+OG7p+bH6eN9VyYQjRhIG7uw4iX
 ILXDishHNbELZNvsC0Xgj25FcFuX/x8IoM8G80dypaOWGyRAM0MgXV16lYZZgej7z4MV
 VbyLdf/AzywlrZzOUIjroUFns4QFmzi8fi/CdW3LD+V+xAlRggCPTnfvUvBc9Tv0xQYD
 u+DJ5BGj7wpb8akIXkJOCT6bi2+UftMlCeebkkNxjNFC2ynuexCSGPprMW62nqEEWdeL
 8dW478aGvM2+klWLcCCvTl23QTalnMP5d1NMv0heTF0wWOMa3W6Dnt/577KFVl+cBRaC
 wIWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2j/2zVr3Y5MsRPnNj6wzL4hndd2iqr5mTiIwqASoAFw=;
 b=LSGvG0s8UC2sNDnZR1g9NFyI3lxHcPSYSJkOe1Z+x/pcJFzLeCz1KgiYWPu/9iLOOh
 aqLHUl+xyiH8qqiMoNlp/0qWch7dyJ7ZgqwFSXSoWdYslwMX9TnjcffaZDyGxKPFwci6
 XKDt+hvY+zqs4JjIsSGQTvyWFxqjPIT230JVva7MnzxAaA967/3s6q12QDApAgF+NHSY
 jNCei3sNDO7tXaMeRtcGbF+l9bVBl2aPBnEnuHGncpMGCpZJioLhWs0TVMoPCICCN12x
 WmqFVHz8jGZTqqwGddWtpV3JZ42aHmKCIyuVrL90LFTLc3kln/Fyy09EwhQv0T79BEFc
 1z6w==
X-Gm-Message-State: AOAM532ljPRHa20RFzdGG0VMjnouts4xOGOslz5VI943tdVrQIPqa1mJ
 QdtsvEey48vI+/9zl3wfn/5E591aVDI3y0LWdA==
X-Google-Smtp-Source: ABdhPJyfYTVpaGTnajqYIrwJCW/hUvYVLvHG73X8BDHxBe+38JDMl1iVBQyevtFO4/yt05dFAR82murtRC636v0B9SM=
X-Received: by 2002:a05:6102:1171:: with SMTP id
 k17mr11816269vsg.45.1590177867757; 
 Fri, 22 May 2020 13:04:27 -0700 (PDT)
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
Date: Fri, 22 May 2020 21:04:16 +0100
Message-ID: <CALjTZvY7yuw4Hy9timfF4HnAMPFoFHP7O-MbwZ35BUwOPDh-LA@mail.gmail.com>
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: Larry Finger <Larry.Finger@lwfinger.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_130433_805938_DA8C2D76 
X-CRM114-Status: UNSURE (   7.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e29 listed in]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Hi again, Larry,

On Fri, 22 May 2020 at 19:02, Larry Finger <Larry.Finger@lwfinger.net> wrote:
>
> Rui,
>
> Does this one-line
> patch work for WPA3 without setting the nohwcrypt option?
>

Interesting. I'm skeptical that it could, yet intrigued that it may
(I'm pretty sure CMAC is a requirement). The patch was mangled, so I
just edited the file manually. Compiling.

Thanks,
Rui

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
