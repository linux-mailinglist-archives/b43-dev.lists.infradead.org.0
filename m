Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A39C21EDB6C
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 04:53:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HeKDWhpB9oxlR9hz1T/QBa6PYdY7INywxflyPftuAmw=; b=LGv/LgKQlryFcL
	T2JkckpTp5gX9PzCPO0ZFA5H0jP+jfuGlnzmgQQo8Qs0Pom8XfyXoj8pLtQtXpHo6wvrnHqPCsNey
	jBM+pGRgHn+uv1/xSGqmKMzBRijvHMpxhKqnfoYsldlbO6Zqbxc7M8LDAm/l7OOPZZOmtqMfo5p6k
	ZyFRJ+qJy7t+nt8+ABoAkr7X73vO0NgAkb6upfhS2qBsA9zU+DOGw2LV85JoUr1a3U0UyuaVUAGEG
	LW8BOZEb9vE7DogNoE4YcgoU7eGd26/NsCb9ZsExNJaoxis9ysDkkthdxD7vY6IZfeSQMvY3M1a0u
	yLe75Zmd2Sy7Ub/DaRNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgg0u-0004y5-Uc; Thu, 04 Jun 2020 02:53:52 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgg0q-0004x6-C4
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 02:53:49 +0000
Received: by mail-io1-xd43.google.com with SMTP id o5so4663699iow.8
 for <b43-dev@lists.infradead.org>; Wed, 03 Jun 2020 19:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=iPa6WDxkXnezV97Gv8ktsN2vMvnblioziS1zAvyim80=;
 b=gV3DINCKuZMpDCcJsHDr9sszAXGMneIMI9KCtZ/1A8KL8Ro8YmZMB8pbOf6XvwEEzL
 3s/WZ64Ad1THwC1yIcoFtMfrjuy9MChcgCUeVc2yt6Fhqv5YnQlKfybyJa868B56C64R
 SpWLnoPhud5yWqrZVnmnqlgYyhjIfWw9LqP/fxle2AdjsoTo956wTTJnEH2/k/fpJpV8
 AlEmkB8V6/jcUVOOJnMZ+E5Zm/eCneQHSejIbdNntpH48J0GSb9f7+yK1rM1n2Ds+iYc
 oegcVR8oOw7YMCXmQJAWTc+Zqvl8pQBXc+Tu4Mxm/lQXO2FR+n8tx0M6aLA2yfHxQbwF
 EZTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=iPa6WDxkXnezV97Gv8ktsN2vMvnblioziS1zAvyim80=;
 b=CPLqkRWJL5eE7FGjyLW+Gmdw5QOabtuPWMQuDQwB+ohru9IoWTe6QG6lw0K5gnQoh7
 ZLGCkUX9J4EDQ650pAtFzV+GrNqDSDTbL/XL2cCuo/b7PYtAVg7njNEd18eaYwU9sCcp
 mRcadUBHbw0/z/PBEQfKT8qkPmAu+/k02HpNefT8pS/eVEo4EJOpxV4Vq6TBhyUnMWqA
 ghTG0ntvUYWJGYV2wddq71BYFcGiBtMb2niGz7/axs+mhNlnF7FGEEPgO7cty/vn/VcU
 IBZ8Axx/cHYyOw3nOpNrGNS1yNFhkh5KROEZDipfrx5N0sIA7CUgjFp8lMUguivyihOB
 tXmg==
X-Gm-Message-State: AOAM530ecvsT6mC9cOd/5kS6bmp588kCIIJ8UfLZB6l1fGpLHy1LxWv2
 I1zX1I0V0R8kV2liiCEoXnlKmhukB7P0HiXWoNY=
X-Google-Smtp-Source: ABdhPJySRKD1t147Rxyby0Eo8wAO+qnFmJBtx6pTIjJ6uS6L8CSs9GvotZtKdMSuFL1kS3zXMhEH8p9JZsy+Uo4RRkU=
X-Received: by 2002:a05:6602:1616:: with SMTP id
 x22mr2465452iow.70.1591239226196; 
 Wed, 03 Jun 2020 19:53:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-9-keescook@chromium.org>
 <ff9087b0571e1fc499bd8a4c9fd99bfc0357f245.camel@perches.com>
 <202006031838.55722640DC@keescook>
 <6f921002478544217903ee4bfbe3c400e169687f.camel@perches.com>
 <202006031944.9551FAA68E@keescook>
In-Reply-To: <202006031944.9551FAA68E@keescook>
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 4 Jun 2020 04:53:34 +0200
Message-ID: <CA+icZUVg24VrpPgMdfsgPa+Wckci9XkzKUdtwhVB3ZW96uZOWw@mail.gmail.com>
Subject: Re: [PATCH 08/10] checkpatch: Remove awareness of uninitialized_var()
 macro
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_195348_427316_5273CF38 
X-CRM114-Status: GOOD (  27.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
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

Hi Kees,

can you push that change also to kees/linux.git#kspp/uninit/v5.7/macro ?

Thanks in advance.

Regards,
- Sedat -

[1] https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=kspp/uninit/v5.7/macro

On Thu, Jun 4, 2020 at 4:44 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Wed, Jun 03, 2020 at 06:47:13PM -0700, Joe Perches wrote:
> > On Wed, 2020-06-03 at 18:40 -0700, Kees Cook wrote:
> > > On Wed, Jun 03, 2020 at 05:02:29PM -0700, Joe Perches wrote:
> > > > On Wed, 2020-06-03 at 16:32 -0700, Kees Cook wrote:
> > > > > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > > > > (or can in the future), and suppresses unrelated compiler warnings
> > > > > (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> > > > > either simply initialize the variable or make compiler changes.
> > > > >
> > > > > In preparation for removing[2] the[3] macro[4], effectively revert
> > > > > commit 16b7f3c89907 ("checkpatch: avoid warning about uninitialized_var()")
> > > > > and remove all remaining mentions of uninitialized_var().
> > > > >
> > > > > [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> > > > > [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> > > > > [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> > > > > [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> > > >
> > > > nack.  see below.
> > > >
> > > > I'd prefer a simple revert, but it shouldn't
> > > > be done here.
> > >
> > > What do you mean? (I can't understand this and "fine by me" below?)
> >
> > I did write "other than that"...
> >
> > I mean that the original commit fixed 2 issues,
> > one with the uninitialized_var addition, and
> > another with the missing void function declaration.
> >
> > I think I found the missing void function bit because
> > the uninitialized_var use looked like a function so I
> > fixed both things at the same time.
> >
> > If you change it, please just remove the bit that
> > checks for uninitialized_var.
>
> Ah! Gotcha. Thanks; I will update it.
>
> -Kees
>
> >
> > Thanks, Joe
> >
> > > > > diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> > > > []
> > > > > @@ -4075,7 +4074,7 @@ sub process {
> > > > >                 }
> > > > >
> > > > >  # check for function declarations without arguments like "int foo()"
> > > > > -               if ($line =~ /(\b$Type\s*$Ident)\s*\(\s*\)/) {
> > > > > +               if ($line =~ /(\b$Type\s+$Ident)\s*\(\s*\)/) {
> > > >
> > > > This isn't right because $Type includes a possible trailing *
> > > > where there isn't a space between $Type and $Ident
> > >
> > > Ah, hm, that was changed in the mentioned commit:
> > >
> > > -               if ($line =~ /(\b$Type\s+$Ident)\s*\(\s*\)/) {
> > > +               if ($line =~ /(\b$Type\s*$Ident)\s*\(\s*\)/) {
> > >
> > > > e.g.:     int *bar(void);
> > > >
> > > > Other than that, fine by me...
> > >
> > > Thanks for looking it over! I'll adjust it however you'd like. :)
> > >
> >
>
> --
> Kees Cook
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006031944.9551FAA68E%40keescook.

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
