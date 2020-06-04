Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 530821EECB6
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 22:59:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=midknkn70WHVGgJv921cVnC3M0RCHTilWbqZknvF3O8=; b=mqQTcwGWamok2a
	+LKh3RdOkclEQeCdQmgV9fKqbFN95wUGIW45crPDSq852vzkEtWSF7pZN9chVRuyNQLHjZFVh3re0
	mxa5Dw8pvlpq/LLUQIfH6ATzwmZxxS3Xr8W08nGBLtRMPuUbpvYKe0eveo8+4USF6EldRx/UvFlqg
	AOWKIJ9bkm+PpvATDoT69LEX0V7wYd2oihi9gixLDuoqqgAVIQ/eodIf0ZvuDi+ZHt/pCIOD+gDOe
	zN74cUVmd/v16ldbvAYCmRsZPQUXjp4m9C0tKnQjeQZ0CVGo+lpd7lq40Ptz1OXclgISzLqM6cWHl
	uFUN65fL0bK2sJs4DRow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgwws-00079W-4X; Thu, 04 Jun 2020 20:58:50 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgwwI-0006dQ-OO
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 20:58:17 +0000
Received: by mail-io1-xd42.google.com with SMTP id c8so7951125iob.6
 for <b43-dev@lists.infradead.org>; Thu, 04 Jun 2020 13:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=Qe+5VsgePcwf6ejrqCiKCctQ/WjhPUBGKBkCEYX6uA4=;
 b=odXbhUUcIf+wDeJdjDiEFXtAYFDHAH8SAaNwcJFDM9qyOS5kIxKELihPixhgMuWsuM
 P3ftGyZTm8N3iRqAE/zGh/6Tj/FwKzi+e312hNAri4dLyhuZsVZ6pvT0TGWVr82qZhqP
 xpzITULxMsu9HCeR/Fu8fY00Ujga47C2NYw0ZWpAq8nhchSjrc9Gx1hdB9IUk3cXGfsx
 VWi9Q6APAlhH+HlN+wzjZ2rOVsUqe/9ob+rhxSJYeRVHffy8QZ1CHAECUXaQz476rziC
 s3Xe2jQo9509hzQq9oZweKonvblBmfe30dX1ICjs/m7aTkmW94D1z6eVMJOHyrzwGabS
 qQKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=Qe+5VsgePcwf6ejrqCiKCctQ/WjhPUBGKBkCEYX6uA4=;
 b=JK0hP2I5DnAgTUSLlB5mvYBlbP3ckUcRj1CMyc51a/2hQRlNMVsX7thJ9A994tY5c1
 ZsSPSdEwj4WWdCKYPBpMA79S+H44KsX6QxghqdokBd0K0Z5K/+IPzFXwExjSYFTjBeEu
 myrdiMthBAa9rgY1mUFAuE4W4IilbKZNcEb4CyFDRSm1npwzkhmRXyBhIsutd9JyHMPS
 4oQ6brAYjSXYiEqW2pypFGRXHvVFcOVI++fCuawajlHjqWCRiOWD6Uu6ylwD7FduK+/5
 /YNEeYXOb/puppUbQSeplhlatwAGo0SfOPRkiX8OAFnaG01MW/4hG9YauiB5IHrp6bte
 /G0g==
X-Gm-Message-State: AOAM5332EHwJjKvb6nHW3bauo1ifS8GXbFpaUm+xs2YindapDt6lQyC9
 qypvCexeT8mbwyPPS0EjvCzw3QGhyWog46zvfe4=
X-Google-Smtp-Source: ABdhPJyHp6QCOAL+6a1wVmeMAZXhyv99uIVM4TXT2D1wSQJb1hxXPIfOtwEqduYsONFSiqzgwB7hE4xuQIiOkGIx+qI=
X-Received: by 2002:a02:ca18:: with SMTP id i24mr6012139jak.70.1591304293893; 
 Thu, 04 Jun 2020 13:58:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-6-keescook@chromium.org>
 <CAKwvOdm5zDide5RuppY_jG=r46=UMdVJBrkBqD5x=dOMTG9cZg@mail.gmail.com>
 <202006041318.B0EA9059C7@keescook>
In-Reply-To: <202006041318.B0EA9059C7@keescook>
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 4 Jun 2020 22:58:02 +0200
Message-ID: <CA+icZUX7HE6cVoyiKtvOe85F+npUzGy5wmScTNCKRVeCEy8Juw@mail.gmail.com>
Subject: Re: [PATCH 05/10] ide: Remove uninitialized_var() usage
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_135814_949655_171600F3 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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
 linux-wireless <linux-wireless@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-ide@vger.kernel.org, Network Development <netdev@vger.kernel.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, linux-spi@vger.kernel.org,
 linux-block@vger.kernel.org, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>, b43-dev@lists.infradead.org,
 Joe Perches <joe@perches.com>, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-clk@vger.kernel.org, drbd-dev@lists.linbit.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

On Thu, Jun 4, 2020 at 10:20 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Jun 04, 2020 at 12:29:17PM -0700, Nick Desaulniers wrote:
> > On Wed, Jun 3, 2020 at 4:32 PM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > > (or can in the future), and suppresses unrelated compiler warnings (e.g.
> > > "unused variable"). If the compiler thinks it is uninitialized, either
> > > simply initialize the variable or make compiler changes. As a precursor
> > > to removing[2] this[3] macro[4], just remove this variable since it was
> > > actually unused:
> > >
> > > drivers/ide/ide-taskfile.c:232:34: warning: unused variable 'flags' [-Wunused-variable]
> > >         unsigned long uninitialized_var(flags);
> > >                                         ^
> > >
> > > [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> > > [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> > > [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> > > [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> > >
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> >
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>
> Thanks for the reviews!
>
> > Fixes ce1e518190ea ("ide: don't disable interrupts during kmap_atomic()")
>
> I originally avoided adding Fixes tags because I didn't want these
> changes backported into a -stable without -Wmaybe-uninitialized
> disabled, but in these cases (variable removal), that actually does make
> sense. Thanks!
>

Fixes tag does not automatically mean it is "for-stable".

[1] says:

> Patches that fix a severe bug in a released kernel should be directed
> toward the stable maintainers by putting a line like this::
>
>   Cc: stable@vger.kernel.org

- Sedat -

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst#n299

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
