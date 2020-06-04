Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A45B1EDB58
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 04:45:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PcwsQ1D67xSaxCqbrWX90l/OFyKRX1HN43JEoqT+Rjc=; b=BOpJ7ommQxSHrR
	rOZa+jpr+Ch8ZN1NTKGp5xdLFEwvf2DGNZfVYLTiC3gnR4NvUHpMt7gKszcyQVnmHFyk1F44XAPiu
	uMubmyXmsSWnVUeY9YioDhE0GaVEal/0hnW/kMLKRvNFx6yA+m6mzaVhRtP+VHKNwO2a7lWMjPmFt
	isdKjeTIugL0WSuYax4ov8OtqSEU9RrePM5idwFVNLSG93cWoIqbZEd+OGZQEjKTveP0zU8KCGoRw
	cWfvbX6MrwHByhcjdGyd9D8bcQlcLXpL47/9QR9K8nmLMKVQwGYmHqpXFOb14GPovjMsNYK0d+83f
	9kiO27Tv0Vx9RPmjy4Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgfsK-0007Fx-MV; Thu, 04 Jun 2020 02:45:00 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgfsG-0007F9-EZ
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 02:44:58 +0000
Received: by mail-pj1-x1043.google.com with SMTP id s88so447052pjb.5
 for <b43-dev@lists.infradead.org>; Wed, 03 Jun 2020 19:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=NJuDdLVQU9WLVc7Nj2WL3ekqw3GERe/Y3vOpHmHCX0Q=;
 b=OAFQ8jI87ZswNf70zyd8MKAqfVTIv4fRHLBkUjQMzBpQKKSwhTPoeh+eTEftSsoQ3Z
 HAfupEeEgEm2Pz8TJLNYEZLBTGUokCA2YuqCmi90nZNcwF3edAJEhQH1SzU247DcPAha
 17bHofqx0OK4rg5aVzrI04rDxImgVclAv6egg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=NJuDdLVQU9WLVc7Nj2WL3ekqw3GERe/Y3vOpHmHCX0Q=;
 b=U7wa/1fEETwX1xIXdhFDxqI68nXfbJwKlb7Mxrq8d55/gVI1BMtd1bn5kgn64MJmQG
 AkAkqV/S/LeV1p6QeLqBmCvtI6sopMemFsLOH9HuHQY2hCIe7rfiidEavGg/+KcMuq+Q
 +eCuwTpatMtoT5lXq8UUXmlcKFjS1XUxcPAJV99oaRLlqdhLf8fi7vLopTcqWyyy3Jui
 Rn9omItsVInqwowFn02voJjnsmUhGOb+ydjO0ituU/cTQ3+I+2AzCa97WjFtAviIiT65
 80RqD5NYawLwzAanMg8YPc+VidVe3/sS9/yI6kmi+kLi1DmCp99+rl6DmPU+QLSnJSkG
 +3JA==
X-Gm-Message-State: AOAM533xAkUCcL/zhnwplOoXALg5WcQKGFXsloYUZQbZq18ZwXKUS/4d
 BiLdCdJHZuJvQ0G7YqwKIQsVlA==
X-Google-Smtp-Source: ABdhPJySxWma3GbjobWM5fu0OzUyfUL6/aSJ2YRQ1+d5LPdQ7FnjaDErNGW25ctBsWEbTRZ3ftZi5w==
X-Received: by 2002:a17:902:848a:: with SMTP id
 c10mr2705871plo.124.1591238695641; 
 Wed, 03 Jun 2020 19:44:55 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id x18sm2934984pfr.106.2020.06.03.19.44.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 19:44:54 -0700 (PDT)
Date: Wed, 3 Jun 2020 19:44:53 -0700
From: Kees Cook <keescook@chromium.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 08/10] checkpatch: Remove awareness of
 uninitialized_var() macro
Message-ID: <202006031944.9551FAA68E@keescook>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-9-keescook@chromium.org>
 <ff9087b0571e1fc499bd8a4c9fd99bfc0357f245.camel@perches.com>
 <202006031838.55722640DC@keescook>
 <6f921002478544217903ee4bfbe3c400e169687f.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6f921002478544217903ee4bfbe3c400e169687f.camel@perches.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_194456_493062_4B6F5B36 
X-CRM114-Status: GOOD (  21.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
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

On Wed, Jun 03, 2020 at 06:47:13PM -0700, Joe Perches wrote:
> On Wed, 2020-06-03 at 18:40 -0700, Kees Cook wrote:
> > On Wed, Jun 03, 2020 at 05:02:29PM -0700, Joe Perches wrote:
> > > On Wed, 2020-06-03 at 16:32 -0700, Kees Cook wrote:
> > > > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > > > (or can in the future), and suppresses unrelated compiler warnings
> > > > (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> > > > either simply initialize the variable or make compiler changes.
> > > > 
> > > > In preparation for removing[2] the[3] macro[4], effectively revert
> > > > commit 16b7f3c89907 ("checkpatch: avoid warning about uninitialized_var()")
> > > > and remove all remaining mentions of uninitialized_var().
> > > > 
> > > > [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> > > > [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> > > > [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> > > > [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> > > 
> > > nack.  see below.
> > > 
> > > I'd prefer a simple revert, but it shouldn't
> > > be done here.
> > 
> > What do you mean? (I can't understand this and "fine by me" below?)
> 
> I did write "other than that"...
> 
> I mean that the original commit fixed 2 issues,
> one with the uninitialized_var addition, and
> another with the missing void function declaration.
> 
> I think I found the missing void function bit because
> the uninitialized_var use looked like a function so I
> fixed both things at the same time.
> 
> If you change it, please just remove the bit that
> checks for uninitialized_var.

Ah! Gotcha. Thanks; I will update it.

-Kees

> 
> Thanks, Joe
> 
> > > > diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> > > []
> > > > @@ -4075,7 +4074,7 @@ sub process {
> > > >  		}
> > > >  
> > > >  # check for function declarations without arguments like "int foo()"
> > > > -		if ($line =~ /(\b$Type\s*$Ident)\s*\(\s*\)/) {
> > > > +		if ($line =~ /(\b$Type\s+$Ident)\s*\(\s*\)/) {
> > > 
> > > This isn't right because $Type includes a possible trailing *
> > > where there isn't a space between $Type and $Ident
> > 
> > Ah, hm, that was changed in the mentioned commit:
> > 
> > -               if ($line =~ /(\b$Type\s+$Ident)\s*\(\s*\)/) {
> > +               if ($line =~ /(\b$Type\s*$Ident)\s*\(\s*\)/) {
> > 
> > > e.g.:	int *bar(void);
> > > 
> > > Other than that, fine by me...
> > 
> > Thanks for looking it over! I'll adjust it however you'd like. :)
> > 
> 

-- 
Kees Cook

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
