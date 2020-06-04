Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7861EE79D
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 17:22:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5MM+lgqE9RNBFEQ2UFiPyAULu6Uqq/pAUbGmTtiIzB0=; b=b61qZ1TuTzu8sl
	wr6GYQfjw1M+PYYYZlkBGhTfYQlhqyZCWCGhMOJvzFVUeIlm4cjpT3e87ihVVm9AF/Gfz4O5Caz5v
	csP2BdRtKwPMGkPvtuae+UfpU7kEiKFGPEmx4nKZ0i5aIP3eDqPAe0Jfh+IUcbdIMTjQPa8fG9uzm
	wAUFvjwxU67AHPyVPWky92orBcfA/7CcnpxoT6HDfP/8EM5ULb3Y1sldeaiIfnziNy5Ir0dBIs53X
	YI+TDXeNg+TWzHz0I6KXYgASj1jw9yLxIGPJPlerB7Sng5c9VALDz0LIW4iW3X/x4X90junGIbhli
	R6QmtgPFc8DhO4b+B7Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgrhU-0001Ui-PI; Thu, 04 Jun 2020 15:22:36 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgrhR-0001Tr-1S
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 15:22:34 +0000
Received: by mail-lj1-x241.google.com with SMTP id b6so7831708ljj.1
 for <b43-dev@lists.infradead.org>; Thu, 04 Jun 2020 08:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Hll+dJXiojyLXcK519mMreswBK6PHaxvzDLgh0p26WU=;
 b=L2DmN0uXC2KyUjBXJZi+YdM6TZcgHaAo/hwU1tP/L4478bcM5q0UoroK+b7mXP2R4P
 CY4dtFPVvkSyAVNSadDFjTzPdwsP+D6eUqcI3kZvGZ6ajCkMMqMOFbgr3IfT104hlH1u
 lRWeEsjQCwyQyAj9FSqtUsV2OVn1GCiiakgSfTvZ8K2MYTUl7u0hUTkpplg3e1KrWY/9
 snhpOMwvfzp6FxIPzFqDy43iUYePSSShfDdso4J4gku4w5tWVs2i8FRQHbva/jSkg7vd
 YZLPjLfOXFlhjCK9IXDlSvavi8M3D5kpvb1fwEUGzSEYis+R9Un5BXefFLYIPHMBjNN1
 WgrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Hll+dJXiojyLXcK519mMreswBK6PHaxvzDLgh0p26WU=;
 b=GMcDhPVIBcE6RpIpNTzb5Q/H6b3HVHJVqSkjFBFhFJ3IIwcvQNSKOlw7hEI89xSnLi
 2If5IIFP6Cobios0CdwM2xP81SzpFxwyoR7oxcGtMdljpN179PtqHLTyg5XFi5oc3Y9m
 DoW44ee83FaOVz9S4+JrVPXKAyDq/Z58Rp+wM0BnKjxKzWnsqyaf/5hQJwEBYrsNRglt
 nD/MQ+N+PPcsWZH0mrFh7vvWbu7o5DqY8xYIacR17mKr5q5Smubwmuy7DEX+AHTWedsD
 4JbXlQ4u5aBzIm1VAkr/ZSdLEmitn7T7Il8vjIM0yE/mXS4zcvtloAJseSpELChZZyaj
 gyVQ==
X-Gm-Message-State: AOAM5321gvI/x498jOqPintj1YGD4m3L6fe2Pz+CuY/7KJugsyJzrCRk
 H9qFPrK9mgpH44EJeqjad4hA2MElP8tHU+B1EYA=
X-Google-Smtp-Source: ABdhPJxQH/KP1voSsxjAeba8kcNASoNK9+7gLFDlFHUbaiNIt96Mc8wIex8PnUIxUMkLvQS6umX4ZEAcM7RZRhjcGv4=
X-Received: by 2002:a2e:a544:: with SMTP id e4mr2625204ljn.264.1591284147467; 
 Thu, 04 Jun 2020 08:22:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-2-keescook@chromium.org>
 <874krr8dps.fsf@nanos.tec.linutronix.de>
 <CANiq72kLqvriYmMkdD3yU+xJwbn-68Eiu-fTNtC+Lb+1ZRM75g@mail.gmail.com>
 <202006040745.525ECD1@keescook>
In-Reply-To: <202006040745.525ECD1@keescook>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 4 Jun 2020 17:22:15 +0200
Message-ID: <CANiq72mHhzfPMGbBn=NZfqLeejPG+t=GN++NJ-L0hg-2x4UPag@mail.gmail.com>
Subject: Re: [PATCH 01/10] x86/mm/numa: Remove uninitialized_var() usage
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_082233_083403_E5FA7FDF 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [miguel.ojeda.sandonis[at]gmail.com]
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
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-ide@vger.kernel.org, Network Development <netdev@vger.kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-spi@vger.kernel.org,
 linux-block@vger.kernel.org, Andy Whitcroft <apw@canonical.com>,
 Linux-MM <linux-mm@kvack.org>, Alexander Potapenko <glider@google.com>,
 b43-dev@lists.infradead.org, Joe Perches <joe@perches.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-clk@vger.kernel.org,
 drbd-dev@lists.linbit.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

On Thu, Jun 4, 2020 at 4:56 PM Kees Cook <keescook@chromium.org> wrote:
>
> Er? That's not what it looked like to me:
>
> #define IS_BUILTIN(option) __is_defined(option)
> #define IS_ENABLED(option) __or(IS_BUILTIN(option), IS_MODULE(option))
>
> But just to be sure, I just tested in with a real build:
>
> [    3.242160] IS_ENABLED(TEST_UNDEF) false
> [    3.242691] __is_defined(TEST_UNDEF) false
> [    3.243240] IS_ENABLED(TEST_VALUE_EMPTY) false
> [    3.243794] __is_defined(TEST_VALUE_EMPTY) false
> [    3.244353] IS_ENABLED(TEST_VALUE_1) true
> [    3.244848] __is_defined(TEST_VALUE_1) true
>
> and nope, it only works with a defined value present.

You are right, it follows the Kconfig logic, returning false for
defined-but-to-0 too.

We should probably add an `IS_DEFINED()` macro kernel-wide for this
(and add it to the `coding-guidelines.rst` since `IS_ENABLED()` is
mentioned there, with a warning not to mix it with `__is_defined()`
which looks it was only intended as an implementation detail for
`include/linux/kconfig.h`).

CC'ing Masahiro by the way.

Cheers,
Miguel

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
