Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 791FB1EDA89
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 03:40:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HoSkKm71oUnnasbhAHhVguW/Xt/NUWI4wN+3uNNlWJs=; b=KNq+piu1VRSH8v
	j6Z/+Cn/RNfPQfYFjUwQBsKVSAO7ONLAzhMy8sAJP+irUm4R9OOOrlq1YqCs25tE+C6Ysr0HESt+4
	5T6U0gqsL+vSXgqOvwtBXE61iT9UPyn/4hxBxJAa3el9KTdNmc9mvAwCsyPQhzShJ6LIUIWrmQqGQ
	izAZJN0kuImAvn804rXb3yFEzkUH2WkBnL09JyRfIQzGU7At9m5IIEpoxaBQ7CdBKQNPTXpyq46uS
	VbhiRCZ0BnLFEA5dGvw/dpyMj5UMc+GcyKZjzKqHtRefrnxR9mznVbjib0VYu2kW3Eo6MmxkDHeAG
	Fly8Hu4djHx11POEN7Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgerk-0008IJ-5Z; Thu, 04 Jun 2020 01:40:20 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgerf-0008Gc-5L
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 01:40:17 +0000
Received: by mail-pj1-x1044.google.com with SMTP id nm22so373554pjb.4
 for <b43-dev@lists.infradead.org>; Wed, 03 Jun 2020 18:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=RZTkgHwXnV/Mmq7iR84jWoY6DwZ1rOj4qUQ+qrZYDwc=;
 b=D25kXdKhWQJ/MUHuNLgCYDZUO7VYifzgRU57sW3cCgSotuT36cS0gwMFjJehcx+vT7
 Qo+Rryfzbt2dW0wLdUcGj9Q0InUDL3Kms87BacBCRrJrfyyPbeQNxvn25asBf8woO+z3
 +P77gIynfVAOQsI2dG7+NHySk/5WZ7LfsfFJE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=RZTkgHwXnV/Mmq7iR84jWoY6DwZ1rOj4qUQ+qrZYDwc=;
 b=ug1Zni0gWiSRJrboGHzDcGl+Ha7gnRZartAg/yigSKTOr3wj2pmZP2fouofMzB9oTW
 otwktsBU2YiCcvgv712tX3foIcsRbqeFjhojYa1pYd9mZvTRXM9uX3YCel49XIEl0tSP
 RCdBTL84iP4QRn7PYE2dZENWDo3+u4CHE6FvIiIlEKPCxYZiqy2iGMqmv5Ye4p/posyz
 S9M+e5/TBYmzkJkcOxML7bS5vmBtb/OmjPPe4RVB+x8a86pBPFV/kVRab3XZ77l2r3qT
 OrsRRQvcej1yVAjmE8lKQpe8EQ5LqaDUaR7h5MgUUM7nsvk0/TiAY94oOZkNeG0PFlhx
 8Gcw==
X-Gm-Message-State: AOAM531vlAS5hSjfRkq4bB09GAydip/TdEZw9+BLxmA9Xm8ksIfnAWE8
 UxPl3p1SPPMAC5kGwRj6n3EOSA==
X-Google-Smtp-Source: ABdhPJyG3cK5GuU0RarjdGROX8AagUDp+h912sluu+H/wdjYIyX1M3u7CAMpBcEf90rpTZQM3JGTsw==
X-Received: by 2002:a17:90a:dd44:: with SMTP id
 u4mr2890350pjv.132.1591234811278; 
 Wed, 03 Jun 2020 18:40:11 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id o13sm2589124pgs.82.2020.06.03.18.40.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 18:40:10 -0700 (PDT)
Date: Wed, 3 Jun 2020 18:40:09 -0700
From: Kees Cook <keescook@chromium.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 08/10] checkpatch: Remove awareness of
 uninitialized_var() macro
Message-ID: <202006031838.55722640DC@keescook>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-9-keescook@chromium.org>
 <ff9087b0571e1fc499bd8a4c9fd99bfc0357f245.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ff9087b0571e1fc499bd8a4c9fd99bfc0357f245.camel@perches.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_184015_226868_3E4FC347 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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
Cc: clang-built-linux@googlegroups.com, linux-ide@vger.kernel.org,
 netdev@vger.kernel.org, x86@kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-block@vger.kernel.org, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 linux-mm@kvack.org, Alexander Potapenko <glider@google.com>,
 b43-dev@lists.infradead.org, Andy Whitcroft <apw@canonical.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-clk@vger.kernel.org,
 drbd-dev@lists.linbit.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

On Wed, Jun 03, 2020 at 05:02:29PM -0700, Joe Perches wrote:
> On Wed, 2020-06-03 at 16:32 -0700, Kees Cook wrote:
> > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > (or can in the future), and suppresses unrelated compiler warnings
> > (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> > either simply initialize the variable or make compiler changes.
> > 
> > In preparation for removing[2] the[3] macro[4], effectively revert
> > commit 16b7f3c89907 ("checkpatch: avoid warning about uninitialized_var()")
> > and remove all remaining mentions of uninitialized_var().
> > 
> > [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> > [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> > [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> > [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> 
> nack.  see below.
> 
> I'd prefer a simple revert, but it shouldn't
> be done here.

What do you mean? (I can't understand this and "fine by me" below?)

> 
> > diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> []
> > @@ -4075,7 +4074,7 @@ sub process {
> >  		}
> >  
> >  # check for function declarations without arguments like "int foo()"
> > -		if ($line =~ /(\b$Type\s*$Ident)\s*\(\s*\)/) {
> > +		if ($line =~ /(\b$Type\s+$Ident)\s*\(\s*\)/) {
> 
> This isn't right because $Type includes a possible trailing *
> where there isn't a space between $Type and $Ident

Ah, hm, that was changed in the mentioned commit:

-               if ($line =~ /(\b$Type\s+$Ident)\s*\(\s*\)/) {
+               if ($line =~ /(\b$Type\s*$Ident)\s*\(\s*\)/) {

> 
> e.g.:	int *bar(void);
> 
> Other than that, fine by me...

Thanks for looking it over! I'll adjust it however you'd like. :)

-- 
Kees Cook

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
