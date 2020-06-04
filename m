Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 137511EEAEA
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 21:10:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ATLcpOQQMq2KC/g/J8Z9p6PNhAqdIeQ+IL85WfiBsuw=; b=nh0m63YZgRC08i
	hoRG+58C8PMkfLXJebnijH3MxopjsLgQkZO75jo3UnVP8HuaqeJF3VPRNTwKfWvwm01xtkqeabfAs
	m9V5Gdg1afHPXmUgRFKV7iB6zJR+dbK/WbUlwhEsQk0tSxif5jXGSsueow8ixNzvGLbqNqp9cP9i0
	K5FLr4ekLAXoJi3LyptvvLgyvKzd6bumCOkMhKp56//i/pTjLUiNR216l2dcxxvynx4OZUxX0NCnP
	G83sUSs59V8wbMeKw+SjqJIhtf5+RhUS3uAzJh5nMcGvGWaNacMPNJDeZNsm96xVuXhNULLUphEX+
	ZG4nhR8d5FqiDFZZ8EiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgvFN-0006ie-Pw; Thu, 04 Jun 2020 19:09:49 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgvFI-0006fJ-SI
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 19:09:47 +0000
Received: by mail-ot1-f66.google.com with SMTP id 69so5665709otv.2
 for <b43-dev@lists.infradead.org>; Thu, 04 Jun 2020 12:09:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X+qiK8YjhEONxTpdjX70xl6++OY/MUPwZ+Do1G1LJJ8=;
 b=ZRDWpFDe22XRnjpow7NknAPnLeQfa+08+Sd7iRy/5Q/x24pX0bCz8N5iw9/u9KEVjw
 a68hf/ba604E1qsygYm9N9JJjE1tKegJ1qgfxRsE10RgaPGEKgWRnyPzlaJeqB0oxCAL
 q1hvDc4JeqTK2sCTVW3Wqp5VYbxO/ohvoTJlJVKJo/oX4Oj7dfKrmalPAduJducwnxiE
 yKTB8+DRz4i41ZIdq3LSoWTq8d+k1s+kJSTQ5f0u9n8T4a0/dccDkLS9yexjSrzW0Ael
 U0Q3BwB7c1r4SlHSE5JvL1DAR6hc171QXHcCi3/Z6zOYovdV4X+lHH/ns4579FjC4mEm
 uy5Q==
X-Gm-Message-State: AOAM531GvLfDXpqKiz5bj5a9ZehpOoQ0h3uHSZWq2xSbJ3M7mSm5GZhG
 pAEDu/cEZ/0fhUkwSLQo7tBQL+EVixvatnnYqAo=
X-Google-Smtp-Source: ABdhPJzhyOhHvYlAI9At8dx2VdKyrIdrlXCUe7od4PVsnRA3/MLtv6c1HELqb/95gRjonFKD9uvMPOkwcy/FsbOWC+M=
X-Received: by 2002:a05:6830:141a:: with SMTP id
 v26mr4936016otp.250.1591297783928; 
 Thu, 04 Jun 2020 12:09:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-10-keescook@chromium.org>
 <20200604132306.GO6578@ziepe.ca> <202006040757.0DFC3F28E@keescook>
In-Reply-To: <202006040757.0DFC3F28E@keescook>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 4 Jun 2020 21:09:32 +0200
Message-ID: <CAMuHMdVuzvvHt3j+L+_BSPFs5RgaP3rkknEUmRvTAs5nZ9SGPA@mail.gmail.com>
Subject: Re: [PATCH 09/10] treewide: Remove uninitialized_var() usage
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_120944_917732_5FD959E9 
X-CRM114-Status: GOOD (  16.41  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Andy Whitcroft <apw@canonical.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 netdev <netdev@vger.kernel.org>, the arch/x86 maintainers <x86@kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>, linux-block@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>, Linux MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>, b43-dev@lists.infradead.org,
 linux-ide@vger.kernel.org, Joe Perches <joe@perches.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Lars Ellenberg <drbd-dev@lists.linbit.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Hi Kees,

On Thu, Jun 4, 2020 at 5:01 PM Kees Cook <keescook@chromium.org> wrote:
> On Thu, Jun 04, 2020 at 10:23:06AM -0300, Jason Gunthorpe wrote:
> > On Wed, Jun 03, 2020 at 04:32:02PM -0700, Kees Cook wrote:
> > > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > > (or can in the future), and suppresses unrelated compiler warnings
> > > (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> > > either simply initialize the variable or make compiler changes.
> > >
> > > I preparation for removing[2] the[3] macro[4], remove all remaining
> > > needless uses with the following script:
> > >
> > > git grep '\buninitialized_var\b' | cut -d: -f1 | sort -u | \
> > >     xargs perl -pi -e \
> > >             's/\buninitialized_var\(([^\)]+)\)/\1/g;
> > >              s:\s*/\* (GCC be quiet|to make compiler happy) \*/$::g;'
> > >
> > > drivers/video/fbdev/riva/riva_hw.c was manually tweaked to avoid
> > > pathological white-space.
> > >
> > > No outstanding warnings were found building allmodconfig with GCC 9.3.0
> > > for x86_64, i386, arm64, arm, powerpc, powerpc64le, s390x, mips, sparc64,
> > > alpha, and m68k.
> >
> > At least in the infiniband part I'm confident that old gcc versions
> > will print warnings after this patch.
> >
> > As the warnings are wrong, do we care? Should old gcc maybe just -Wno-
> > the warning?
>
> I *think* a lot of those are from -Wmaybe-uninitialized, but Linus just
> turned that off unconditionally in v5.7:
> 78a5255ffb6a ("Stop the ad-hoc games with -Wno-maybe-initialized")
>
> I'll try to double-check with some older gcc versions. My compiler
> collection is mostly single-axis: lots of arches, not lots of versions. ;)

Nope, support for the good old gcc 4.1 was removed a while ago.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
