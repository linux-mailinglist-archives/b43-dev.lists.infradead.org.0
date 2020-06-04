Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B40DC1EDAAF
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 03:47:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rxwJwr/O/pDZMpdOmDFUQNOH1EyoujwigRs7qnnP0HE=; b=Nhi4Fnh/XHoAgI
	8OIdxrH0nJwrbyyp/lgQxRzvcmotINXOy8ESDzFcs/qd8PZUeSMNQqsQRECtMHpCKpKUJnp7HxT3b
	ZjesO/QHyDBx96lpryfaL/CvU/iYblw1clpAoevnrXu5x5fE35s0EJz4iOzPp4uFDHpiuK3PUFq97
	Al5auhrqq/Xe5sHNZYu1qV6wegNUa8B6sx38Wv7NuL2VZOIq6vQkSVfjztQArllfGE04qgTQGMdYV
	szd91a/K/3IlqqV7853df0tGe1GGXlbY9y9mxpKWpytOfl2mIrZqPTPkNGxNZ06Y0DEPB7eHs8IyS
	89wXCeSSY6meQsymZjAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgeyO-0003Ue-QP; Thu, 04 Jun 2020 01:47:12 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgeyK-0003TR-Sp
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 01:47:10 +0000
Received: by mail-il1-x141.google.com with SMTP id h3so4494002ilh.13
 for <b43-dev@lists.infradead.org>; Wed, 03 Jun 2020 18:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=0zAwzlZ1ZoyuyLwQ6ZCqaX3xkKXNzrbPMJM4RJOKE8Y=;
 b=RiWcHHKI56Z9AZJowOntF5u936U9IEK51bruLTnBwtpgY6flTWIj7E32dZiyi3E36V
 F9QFJ/DmaUt+6FtK9nVE7a362kXFNuXajbhWSZBN9kFlVl70OLrAqz2esEBdKBuFivro
 A9qssu5UloM2CAKZ+ub72N81xeKxH3DcJhLjQf6jDWZU5B2Y4dvhVxkrm4K+6NMXuKvM
 4laXIIAPQYAEaPgbIcTRbPHOmlzTu37C//5RJFQLwS95rQtZdmMD2VsAtg/VFDAfrgVs
 Orrn68scYzWQTCkVVNsNrdl4RozvHffrZrf07y1uPq3vyzyrAsZwGdABLmoft0K/4uYw
 UrLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=0zAwzlZ1ZoyuyLwQ6ZCqaX3xkKXNzrbPMJM4RJOKE8Y=;
 b=L4OKORia9jnZPXzax0mmroL6z7OJJRiIbUdQXGwoJZddBDkK9oAqAMcLFEzo6GYvFC
 0HzIFk0kV5RpVS+iQQgNe+qYuOX6WmDjvsUgI3em6AwhP1AtbyJTxihAEpj+x6sd3Rwe
 80wKqznkh7uPFl72HsbAA2+PvKr2ZUPGGVq8dLIogSFuzhPB4yOWxR2lEH1KdQAEJs4o
 FaoaWdwUGAjqp3WgYFLk8Z1KdeerptdKYOfSrXmQoYP1CkWN9yqrO8s9GVD+grENFL6U
 O3Yqz4Ksi5++Fe+pqREVEQhTGWEiculknUCHJvKPDPYKilcwcKg8wS57+kGEE6HePFNI
 hVOg==
X-Gm-Message-State: AOAM532m0DrjmsgGWB7zBVpzWZrnMIUH/emAlp7GpEj2aJ4/vgVmb12n
 wDAdgmJ2lkYj3gC/ebSlpXbHzCXW80mMBXreyEnTdnY4
X-Google-Smtp-Source: ABdhPJwmJLrHb81Eed1PmI9X9+VIktXvpC8BtsUPwROhoUZmxaC0zsnS0ewMB1G6ol0WVWmpdiNXo0KKpak7zpoVROg=
X-Received: by 2002:a92:498d:: with SMTP id k13mr2205901ilg.226.1591235226690; 
 Wed, 03 Jun 2020 18:47:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-1-keescook@chromium.org>
 <CA+icZUVZwjM9o7aNXAkYu8K2BQAajw=60varP4g+NizCqu5gRw@mail.gmail.com>
 <202006031840.E2F0D15D8B@keescook>
In-Reply-To: <202006031840.E2F0D15D8B@keescook>
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 4 Jun 2020 03:46:56 +0200
Message-ID: <CA+icZUUsfZpuwfyEcbBKOf7AJF0-Ao8b1kUscpMJ+-ZdfZotsg@mail.gmail.com>
Subject: Re: [PATCH 00/10] Remove uninitialized_var() macro
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_184708_984937_2824D27F 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sedat.dilek[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: sedat.dilek@gmail.com
Cc: Andy Whitcroft <apw@canonical.com>,
 Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
 linux-ide@vger.kernel.org, netdev@vger.kernel.org, x86@kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-block@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, b43-dev@lists.infradead.org,
 Joe Perches <joe@perches.com>, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-clk@vger.kernel.org, drbd-dev@lists.linbit.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

On Thu, Jun 4, 2020 at 3:44 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Jun 04, 2020 at 03:23:28AM +0200, Sedat Dilek wrote:
> > what is the base for your patchset?
>
> Hi! This was actually on Linus's latest tree (which is basically -next),
> mostly because I figured this might be a bit of an RFC but if it was
> clean enough, it might actually make the merge window (I can dream).
>
> > I would like to test on top of Linux v5.7.
> >
> > Can you place the series in your Git tree for easy fetching, please?
>
> Sure! https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git in
> the kspp/uninit/v5.7/macro branch. There were three small differences.
> I'm doing the "all my cross compilers allmodconfig" build run now, but
> figured I'd push it for you now so you didn't have to wait.
>

Hi Kees!

Thanks :-).

Regards,
- Sedat -

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
