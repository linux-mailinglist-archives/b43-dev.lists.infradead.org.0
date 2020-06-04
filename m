Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E81931EEC03
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 22:30:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5IZjCg6t83K+2WZNM28MqITLtW2R7wZWr+E4yFcCAQ=; b=syUKwlZqQavpaE
	/qvXcJmLneBKL7hWz3lyPySA5CuLygNtjIIOfKxvY8rL3J11OfmGLdSOF2CmCVBJkk+BJlozDKq44
	HMRo6P6HyTm5kbpDgsoJmO+WJOMajUsD7HDiqFBtwjc46uOjHQZvPjPDRgo5xHkKy1j5HAaAL/NHI
	XQsnqgjhQ3A3JkKE7a2znIGjVy/0lvC/+R7YihDPB727nPP+Y2qk3fNTTotAJVWavQUiSJSrf3lAg
	rSxFWS237BmPuonoNUGOPrE7OgcDv7ji95A2RGw0TTzCdfigffTWhgW4yscR/GBxoTfqx7CFz/tjP
	JwL7L3+SUqaiV7RrE4pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgwV0-0002cp-C8; Thu, 04 Jun 2020 20:30:02 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgwUv-0002c3-1u
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 20:29:58 +0000
Received: by mail-pg1-x541.google.com with SMTP id o8so4025085pgm.7
 for <b43-dev@lists.infradead.org>; Thu, 04 Jun 2020 13:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bnsaMm5xHsmGTKM8crY5633RBfnrE452zASAiUrFU6c=;
 b=N9f0DBz11v8qKCu5VA9JXvurX/AQtTOXbiTH5jmNKefXzNsIFm+M7WPzmoaUlp4aH2
 r+jMi/YmukLuVqYctzsJtxcn0mVNYhMsSNT9VA6N7PnsQg5yUlK9mfLk/5/Ruh0U/Pwu
 PDPRxMt4IzbnxQDI/neSyUM1ytXRkW/vLuLZKE80o7Nj5PUF2JyDsoKL+PvQ95dTnNfZ
 KgrObLpuy2lSQ1b3DD2riryZUDl8/MGtuP3prwyWT2YzcrBoR4Z0ygA8w4IwkVOIQfT2
 XknAaA0BFuOmwbwTbgOy7UCAxJmRzkJu3RwBQHvX6d2dQvm2RBoWXIh1YpGHB5SsL5b+
 hRAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bnsaMm5xHsmGTKM8crY5633RBfnrE452zASAiUrFU6c=;
 b=uHuGxjLK2eXbLjQhCFMIzR4WslwKii/dZGju6kKKevyl9MBpPSjZhsO4+OFHvJn2YY
 nbb7ZV6Jj6X8k+e6+U/BJ4F8kwWpfHZpVQ+I/xdx/KkL2E+hY01tSRzFwaECiW2nmzmG
 KpZjK2VbiGYTsdBbWNlvNnDh78vPyrIZRn85lJAS1nbWhWb+p70e+N2M3BfAIvIugxZV
 SeCsmudHZnuB+AEl7pwZgyySqIc2cSImzzGJ8y4xEZaqG54416aUehuEf//yzyM2Vymg
 LAgsvzvycKct7DuNLzPt+JZ6nXV9HSNgqZBQV8QwqkGbhkuK417sBa+56Lhpn3Ydf6YA
 uaZw==
X-Gm-Message-State: AOAM532vFVjE6GdfR9KujZRPUrzmzUbEMsk1Qhii4nQZ7RfmT08hGeWE
 Pb/tTGqYncG/FUkMibywdbm3okdItksj56ePBiJFFw==
X-Google-Smtp-Source: ABdhPJy84Bpyo9gVnHDmhNZ0Cl7JJ5pAaUOhbP1nHyEJIJ3dMgwhwkaPgsD+FnKg2zDZj7i1oTdj2nlsRsGHJYRwQ7w=
X-Received: by 2002:a63:f00d:: with SMTP id k13mr6286936pgh.263.1591302596138; 
 Thu, 04 Jun 2020 13:29:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-6-keescook@chromium.org>
 <CAKwvOdm5zDide5RuppY_jG=r46=UMdVJBrkBqD5x=dOMTG9cZg@mail.gmail.com>
 <202006041318.B0EA9059C7@keescook>
In-Reply-To: <202006041318.B0EA9059C7@keescook>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 4 Jun 2020 13:29:44 -0700
Message-ID: <CAKwvOdk3Wc1gC0UMsFZsZqQ8n_bkPjNAJo5u3nfcyXcBaZCMHw@mail.gmail.com>
Subject: Re: [PATCH 05/10] ide: Remove uninitialized_var() usage
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_132957_117714_61E40DEF 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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

On Thu, Jun 4, 2020 at 1:20 PM Kees Cook <keescook@chromium.org> wrote:
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

Saravana showed me a cool trick for quickly finding commits that
removed a particular identifier that I find faster than `git blame` or
vim-fugitive for the purpose of Fixes tags:
$ git log -S <string> <file>
I've added it to our wiki:
https://github.com/ClangBuiltLinux/linux/wiki/Command-line-tips-and-tricks#for-finding-which-commit-may-have-removed-a-string-try.
I should update the first tip; what was your suggestion for
constraining the search to the current remote?
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
