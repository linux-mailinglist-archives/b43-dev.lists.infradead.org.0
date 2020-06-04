Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A361EED6A
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 23:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JradStykZMscVEDqDsbNaKGreGlwZbD1F4hu8DDJ/dE=; b=FYNGTqeGUbro0x
	RUI2WphVqfCTBBZ6gGLLIvPaaz8kvNCtSY4bYktJDOBgdPxXZ8dpTeVhzjItiDiQF7Gb4A+66ZtF/
	l/Pxwj7f44Gm8ZYDFRzO8z6tyGWx1f8MkIXWm2LyYsEL9dqm5HlHmSsRDVwPbn9JdGoQUBrhPglP1
	+3xKyR6a68Icuam0+kZzk9kOJw6inewczoPU2rUkPZhWLfKGBDnpMIn9GYJOfJ62WTeDB1Tqt+RBU
	1MlOSY2SAgJEI4Y44vC8J6TzNdi5C3W+pLA8ZjvnZRHbajf4qBKCWzqDq4B+3GtxfwalW0VyxTkR2
	jAns9EMYZ0F1EwX263+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgxa5-0001Yo-4B; Thu, 04 Jun 2020 21:39:21 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgxZz-0001S4-Pw
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 21:39:17 +0000
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1jgxZr-0001Jg-Vu; Thu, 04 Jun 2020 23:39:08 +0200
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id E240BFFBE0; Thu,  4 Jun 2020 23:39:05 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 01/10] x86/mm/numa: Remove uninitialized_var() usage
In-Reply-To: <202006040728.8797FAA4@keescook>
References: <20200603233203.1695403-2-keescook@chromium.org>
 <874krr8dps.fsf@nanos.tec.linutronix.de> <202006040728.8797FAA4@keescook>
Date: Thu, 04 Jun 2020 23:39:05 +0200
Message-ID: <87zh9i7bpi.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_143915_984938_282F12FC 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andy Whitcroft <apw@canonical.com>, clang-built-linux@googlegroups.com,
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

Kees Cook <keescook@chromium.org> writes:
>> > -#define NODE_NOT_IN_PAGE_FLAGS
>> > +#define NODE_NOT_IN_PAGE_FLAGS 1
>> 
>> but if we ever lose the 1 then the above will silently compile the code
>> within the IS_ENABLED() section out.
>
> That's true, yes. I considered two other ways to do this:
>
> 1) smallest patch, but more #ifdef:
> 2) medium size, weird style:
>
> and 3 is what I sent: biggest, but removes #ifdef
>
> Any preference?

From a readbility POV I surely prefer #3. i"m just wary. Add a big fat
comment to the define might mitigate that, hmm?

Thanks,

        tglx

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
