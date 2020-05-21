Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B647B1DD2F0
	for <lists+b43-dev@lfdr.de>; Thu, 21 May 2020 18:18:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x1wTMlAxFu3jTc7Wrc/fk+fRLEokH/tehfKfP4HDyIc=; b=Hz2HVMgaZEkuym
	dgNsRK3luz/Xyc8tGtrCwMeknN3c0eB/gEl26vrD24eHuB5oC0Hvw+qk07zcDdOx9pRPVWoQzO1vq
	17XHWQmqaykPWBC9fIrd0JUYJzI/j30fIMbjzpjCHkOL0WFoc/KwB5EAo8YqNmgqzWjxDTYoeYL9c
	AbAr7KVapW6XRPZbsxcRiPHaIUNJ9a/mTiDIq/T0kqzl3NYpq6jG2mRklEKL2I+1eDjllBjDd5MEq
	PbacGHePUKDOFhPp3nH005dL4KFmWkhLuGUZef/l24R87FXwgKy6+2rOxPnZXY2R06mATFgobg4Uz
	9g1GT8ml9NBRIeRr0Dkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbntP-0007Yc-4s; Thu, 21 May 2020 16:17:59 +0000
Received: from mail-vs1-xe2a.google.com ([2607:f8b0:4864:20::e2a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbntL-0007Xv-Ja
 for b43-dev@lists.infradead.org; Thu, 21 May 2020 16:17:56 +0000
Received: by mail-vs1-xe2a.google.com with SMTP id y13so4335331vsk.8
 for <b43-dev@lists.infradead.org>; Thu, 21 May 2020 09:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ji0OpoGJ8VjDjArAd8rvFq/AM62rv6No+vAMV/IpQ54=;
 b=f8iYwCZQgameHd5sQp4y+KJSlzey2PMBeKBY9oFN19K4KO91g9jnfyqbWfAdSM6YMx
 uPQYYwhJCUnXyHg9kffoRSJdOGP1YPJfZmmA91jWbw8nBm5bgUb6N7Es7bjRfw8c44vi
 KtIe0W9TZnBfOtRQ+2B/PX7dn+AlVCRYhtjMVW4A/i+Wmc6BP7nD4G9IZozOY+B6asQ2
 fUsIudDBnwif4fsTCKUjo+SO6revAeQDMgv+n4ku3+4ALqbkQDbCL5qy4/cQSMpYB5yx
 QKxrH9rmmcYRfgyU792BP3mkqopkZ2+tD0mj/gyY1yRyiKJNuKUe0x0XMowdP5c75RAG
 BBmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ji0OpoGJ8VjDjArAd8rvFq/AM62rv6No+vAMV/IpQ54=;
 b=jVvUOES66VEolBckTmhbfVGicn750XJtM9u+vLdlEzbf9DjmXFdQ9f2octF6uYKnz7
 m8jKOlVZOWhZsfSEovVOVqrXJzGBa92pAeBBkjAYi0ysgPQO8Z3I608fhOdarYpzJRh4
 rcS7nkaW9D16Y/jtyRWBOcyojsqAZhT0h5wvjZWyTdnoleVZQ6vhukb40WAmJIioR6GB
 DudE0YP0EMSW6c3afP5ew85D/xq5eH85V2cUQtIhZk9QMGG+vA+MPF7n6DvU6u2wMJwe
 Bc5B3zIOIeeoYDUPfrQQ9r07LyfiJGZdKVJpDWOpsUzTCMLocCyoAoS5e30abQhTpfKg
 xY0A==
X-Gm-Message-State: AOAM531y9n9Slt5+IQ32oKt2Fvt+FABFjwf0MAA2Mf1iLRqHaMfVnD9H
 MflVIHZs1ZWi+mHOkWQJmiLC0wMI7LOMmWRucehjeebyZt6I
X-Google-Smtp-Source: ABdhPJxgLaIPBr9Nn2R3gn18Ddkt5IhjKdKYh+uuBM2LzjTDta2rVDGpWTJj9RoObI3S0SRqyx32dURzsuS2nFTnQZQ=
X-Received: by 2002:a67:f64a:: with SMTP id u10mr7885413vso.202.1590077874373; 
 Thu, 21 May 2020 09:17:54 -0700 (PDT)
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
 <CALjTZvZcfT-aURMa=j-1ksWyVdu42bLEsGOaq+Hw39ioiPFKAA@mail.gmail.com>
In-Reply-To: <CALjTZvZcfT-aURMa=j-1ksWyVdu42bLEsGOaq+Hw39ioiPFKAA@mail.gmail.com>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Thu, 21 May 2020 17:17:43 +0100
Message-ID: <CALjTZvY3_wjAx9DOEgYxpc4_fG-HWh_=O7veFxeEoygPzTJptw@mail.gmail.com>
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>, 
 Larry Finger <Larry.Finger@lwfinger.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_091755_657889_639501BD 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e2a listed in]
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
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Hi, guys,

On Thu, 21 May 2020 at 15:52, Rui Salvaterra <rsalvaterra@gmail.com> wrote:
>
> It's not exactly a modern Wi-Fi card either, and being 802.11g might
> actually help limiting the CPU overhead.

Yeah, as I expected, it's neither great nor terrible. I fired up iperf
to do some quick and dirty testing: with WPA2 (hardware crypto) I get
around 13 % CPU, with WPA3 (software crypto), around 34 %. The
throughput is pretty much the same.

Cheers,
Rui

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
