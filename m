Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0F41FA059
	for <lists+b43-dev@lfdr.de>; Mon, 15 Jun 2020 21:34:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hFWyMfILVNh56sj+Qttj4RljUimm/GymbQBT57+tmAA=; b=Utyi6GEK39+/Vh
	VfsR6VSabtvdcaWvtq8+hWXKgqEMDKNMOBGKwnyodNhvg8g7+24ia/hSJdbjHwAlM8c5tEbh8Jvyl
	km7ip7JtLA6xUvjuC3RaVaLyF1Z+nxag7kXt6JG7KtrEHIUk8heGHL2tG5Yu4s2mgiTgkRsSLirU5
	6bdLOe1ht/bk7GgwkzGeaKuwcdLWP8/g/UnfkTMRmzj4u4R9PeJ3rqwNPRZ2Fw0WRq1pDKomEuChn
	exd5c9o7ZykExbfPmDtyuzcN0qyvw9EjUUQ9Xer/3xTxU3Q/XdjkjIJYKhMk0MI0KjtCOw5Zo8ZqI
	EWnYe8atjw1flbld+kjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkuqq-0001lC-LP; Mon, 15 Jun 2020 19:33:00 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkuqj-0001kj-Jy
 for b43-dev@lists.infradead.org; Mon, 15 Jun 2020 19:32:55 +0000
Received: by mail-pl1-x641.google.com with SMTP id 35so1873362ple.0
 for <b43-dev@lists.infradead.org>; Mon, 15 Jun 2020 12:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ZjAXfZy5BudfnO86h+8mAf1S7F89/y7Ht34uQW17/+U=;
 b=QBeg3rvb86U6Tj0IyJR5u6BBRDaGksrhbixbVGEFMNAmYYAm2vi8ezn7Pzjsx+8Y/N
 0spIQQjXlTeZa6JYxyI0WQLYZewE/IOrv1eu80kZOYOGkcIsaJYdoUbYKY8F56IoVrW7
 todjyiaALbdigpVH6qkq1a3bhohRwm98ntcpI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZjAXfZy5BudfnO86h+8mAf1S7F89/y7Ht34uQW17/+U=;
 b=ZAMxJDsQhCmCum/nk4t555K+cfTFp++OMwCI175CR9a8CPPS9+A1MtMdzMfE43UdpV
 b6mTqPpQQcYTCNgJWK54ow9T2VkDI29Qqs4R0Xazbe+7Kl9/3GheAkY4dxwGxXDYOk3n
 XML11KLJI6+XtaFa9w3Lb3DXOZPTsVqzmQz33IdWeW7JMZKY1Kh8DZ2V+gaYPa2vq4cg
 MfiYPuu7FdW3Ft5jcK9Q/kh/gEc+g4qM2J72JLi9uYPqwMfegrE9owpCDybnHJAKqOex
 MEEdmWcNEJDps46J87RsrkoZesdDaKisoI4gJErAsVfjlEwqgWMvjqRtd7fCdEGxG03L
 uXCQ==
X-Gm-Message-State: AOAM533gVoMAt+9qn+jniohfcbUfSwpZJB3iajYaC770GRuVe3iJxuEv
 v+wWxqDIOe+5VGDI5hFGM3ETWw==
X-Google-Smtp-Source: ABdhPJxugszkh+55zcQ6ID8nCD+Y2mp2lHGMEtD9VsXD4kV92TrXKjIOZPR9BYw/ID9xL1GXxiQnCg==
X-Received: by 2002:a17:90b:23d2:: with SMTP id
 md18mr774459pjb.179.1592249571413; 
 Mon, 15 Jun 2020 12:32:51 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id n189sm14973604pfn.108.2020.06.15.12.32.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 12:32:50 -0700 (PDT)
Date: Mon, 15 Jun 2020 12:32:49 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH 05/10] ide: Remove uninitialized_var() usage
Message-ID: <202006151231.74D2315450@keescook>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-6-keescook@chromium.org>
 <CAKwvOdm5zDide5RuppY_jG=r46=UMdVJBrkBqD5x=dOMTG9cZg@mail.gmail.com>
 <202006041318.B0EA9059C7@keescook>
 <CAKwvOdk3Wc1gC0UMsFZsZqQ8n_bkPjNAJo5u3nfcyXcBaZCMHw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOdk3Wc1gC0UMsFZsZqQ8n_bkPjNAJo5u3nfcyXcBaZCMHw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_123253_680653_A185D001 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Saravana Kannan <saravanak@google.com>, linux-ide@vger.kernel.org,
 Network Development <netdev@vger.kernel.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
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

On Thu, Jun 04, 2020 at 01:29:44PM -0700, Nick Desaulniers wrote:
> On Thu, Jun 4, 2020 at 1:20 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Thu, Jun 04, 2020 at 12:29:17PM -0700, Nick Desaulniers wrote:
> > > On Wed, Jun 3, 2020 at 4:32 PM Kees Cook <keescook@chromium.org> wrote:
> > > >
> > > > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > > > (or can in the future), and suppresses unrelated compiler warnings (e.g.
> > > > "unused variable"). If the compiler thinks it is uninitialized, either
> > > > simply initialize the variable or make compiler changes. As a precursor
> > > > to removing[2] this[3] macro[4], just remove this variable since it was
> > > > actually unused:
> > > >
> > > > drivers/ide/ide-taskfile.c:232:34: warning: unused variable 'flags' [-Wunused-variable]
> > > >         unsigned long uninitialized_var(flags);
> > > >                                         ^
> > > >
> > > > [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> > > > [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> > > > [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> > > > [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> > > >
> > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > >
> > > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> >
> > Thanks for the reviews!
> >
> > > Fixes ce1e518190ea ("ide: don't disable interrupts during kmap_atomic()")
> >
> > I originally avoided adding Fixes tags because I didn't want these
> > changes backported into a -stable without -Wmaybe-uninitialized
> > disabled, but in these cases (variable removal), that actually does make
> > sense. Thanks!
> 
> Saravana showed me a cool trick for quickly finding commits that
> removed a particular identifier that I find faster than `git blame` or
> vim-fugitive for the purpose of Fixes tags:
> $ git log -S <string> <file>

Ah yes, I always have to look up "-S". Good reminder!

> I've added it to our wiki:
> https://github.com/ClangBuiltLinux/linux/wiki/Command-line-tips-and-tricks#for-finding-which-commit-may-have-removed-a-string-try.
> I should update the first tip; what was your suggestion for
> constraining the search to the current remote?

Ah cool. I've updated it now. It was really to narrow to a "known set of
tags", and Linus's tree's tags always start with "v".

-- 
Kees Cook

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
