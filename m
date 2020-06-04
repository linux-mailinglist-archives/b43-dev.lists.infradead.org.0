Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4491EE728
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 16:59:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Wcr8EqvIijSqk3oT9Kj9KaF7iI8pb54PN7sA6IqM9o=; b=iB5wrqVJqp3eyo
	qNPSk53d3MYQHdHGw0VMxy9UEV5V9nhfy3NBOasCP8ywXl8SLYe/q6bhYbQBbGG0M8+7WmiPkKJ54
	iMhph5A2zyR7GpttFkpsrMb/TogwoW/eIyHVM8doyh2XTfG2PkYtVXiwXp8btmU5ctJfNOY6G1LtW
	SdgFh2Vuxe7laGKFvj4zQ08sSGBHi02MdhIyzw54SAvcHGXY+28JnMSJFLAdd56YOXCyIq81gQxhu
	mjC5FjNnuajpwff+33Hu+c2/0VNFNxW7JHM5sAQpL4iPLQrJ1HEff7qlqvuGggxPwJry77Rd5dyd8
	Yug/Y51qfMaRAkga0sDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgrLO-0001dS-4K; Thu, 04 Jun 2020 14:59:46 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgrLK-0001d9-Vz
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 14:59:44 +0000
Received: by mail-pf1-x442.google.com with SMTP id b5so3354910pfp.9
 for <b43-dev@lists.infradead.org>; Thu, 04 Jun 2020 07:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=xZR3lWkoYpLFg4eE+Etif6ukCUL5ApBdi/GoHnvWaEk=;
 b=TupHTdygAigywhS3pB8tAlBUKta4lXvoAYH4dzNzhrASd2l3DGn01fOXPA/fx+ddwx
 e63Z0EnMX9EmBApvSxhudimZg0Kyu1Ran7gh+CyYHPG3fZ0CjgSq6NhbXpLphCrF+Ouq
 t2GxHonz+RRUwsB+KYTkj8rNjo2/BKZIMEe8c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xZR3lWkoYpLFg4eE+Etif6ukCUL5ApBdi/GoHnvWaEk=;
 b=BrQWtBzqqcwzDiWS2klW8cqQV3SrZeBBXEceYiSt/Y4rt/Aiwt3AJyqqvLExc+Uo+E
 ZuRoYlsw8WXPlJZcsmSlLzoDERrylwjwFCyiyrAkYF6ga5fkOYwmAR54LY5+9vqUnrhG
 KFGPnNKpivnSIQsoWx7L0/9DMtba67Ys4Cp6Mhp0qIvemKU7L+DA5YXmUp3CiD+ax+up
 OJX05r2Ap4e9QOPcYr/ZBhCzuaCJS2j4q8Kk8cJFG0W7R3PJ2w2L2ncBe7MqNDjyX24V
 zwuIpUZApZlzszR6j8jJ++8r6+ai/wLxAKPpKNVYUBVarIwY13PpoJCwJx/Y3jqksY+z
 MWyw==
X-Gm-Message-State: AOAM5319hXB3/gHdcjYHVIM4pcQJC8Yb5SNyShnOVxSBHNXZEFKQ2KoX
 8zZMHYBLPjz5qTXMu164yFZxWQ==
X-Google-Smtp-Source: ABdhPJwvM5Okdp4t/lqPdqt9FJOxz3H8PoeKTiCxL62lJBkvY0bVXGWNEvmo0e7yAT0Y8leJzLPW1g==
X-Received: by 2002:a63:d544:: with SMTP id v4mr4979382pgi.60.1591282782325;
 Thu, 04 Jun 2020 07:59:42 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id w65sm4752697pfb.160.2020.06.04.07.59.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 07:59:41 -0700 (PDT)
Date: Thu, 4 Jun 2020 07:59:40 -0700
From: Kees Cook <keescook@chromium.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [PATCH 09/10] treewide: Remove uninitialized_var() usage
Message-ID: <202006040757.0DFC3F28E@keescook>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-10-keescook@chromium.org>
 <20200604132306.GO6578@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604132306.GO6578@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_075943_026402_69F82A43 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, Jun 04, 2020 at 10:23:06AM -0300, Jason Gunthorpe wrote:
> On Wed, Jun 03, 2020 at 04:32:02PM -0700, Kees Cook wrote:
> > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > (or can in the future), and suppresses unrelated compiler warnings
> > (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> > either simply initialize the variable or make compiler changes.
> > 
> > I preparation for removing[2] the[3] macro[4], remove all remaining
> > needless uses with the following script:
> > 
> > git grep '\buninitialized_var\b' | cut -d: -f1 | sort -u | \
> > 	xargs perl -pi -e \
> > 		's/\buninitialized_var\(([^\)]+)\)/\1/g;
> > 		 s:\s*/\* (GCC be quiet|to make compiler happy) \*/$::g;'
> > 
> > drivers/video/fbdev/riva/riva_hw.c was manually tweaked to avoid
> > pathological white-space.
> > 
> > No outstanding warnings were found building allmodconfig with GCC 9.3.0
> > for x86_64, i386, arm64, arm, powerpc, powerpc64le, s390x, mips, sparc64,
> > alpha, and m68k.
> 
> At least in the infiniband part I'm confident that old gcc versions
> will print warnings after this patch.
> 
> As the warnings are wrong, do we care? Should old gcc maybe just -Wno-
> the warning?

I *think* a lot of those are from -Wmaybe-uninitialized, but Linus just
turned that off unconditionally in v5.7:
78a5255ffb6a ("Stop the ad-hoc games with -Wno-maybe-initialized")

I'll try to double-check with some older gcc versions. My compiler
collection is mostly single-axis: lots of arches, not lots of versions. ;)

> Otherwise the IB bits look ok to me
> 
> Acked-by: Jason Gunthorpe <jgg@mellanox.com>

Thanks!

-- 
Kees Cook

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
