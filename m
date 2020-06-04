Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DCB1EEDD8
	for <lists+b43-dev@lfdr.de>; Fri,  5 Jun 2020 00:40:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GHefy6aK3ZY8fRoNsCQv3D7UIhil1oGPS/yVdZvSVMw=; b=mxaFMOgAZDceN9
	T+VUUBGjQVfGWQyBLpOK/8VB5/qUDZ8m6L77hmbFM3SlqH5bWdvNOamgDRfU7+xYSK56ls+VnDz1I
	WWRp2bJsPiHseVwrGPTrh6xRzE1ShbvuNecGBZgSvNhLw1mBLaPlPYgSBLedB1iGligNVjOfIpVE+
	SpsHBT2FCBbmlVNNf7e+/2Sczg8e46sgaXrvrpDyE7M5r58MAKxHrQWFvxX5AJ9y1HyfcYSpN1YiG
	ACfJDDSyEYGVWCYqWt+igrBuVi72ghVV+2bQiuDYbeh4P+ovLNNZAWlD0YFZIvz69tdPTYBf8WF22
	vAyYFuuUALqNCLWyj8iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgyWM-000681-TH; Thu, 04 Jun 2020 22:39:34 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgyWJ-00067R-RJ
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 22:39:33 +0000
Received: by mail-pj1-x1043.google.com with SMTP id s88so1845626pjb.5
 for <b43-dev@lists.infradead.org>; Thu, 04 Jun 2020 15:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=zP55TDVJhIIf3D70exLW80PJ5Fxq6s8zGifToJ/Z0dc=;
 b=STEhsSBGd7DFiZ3UGgyOyWz0+OZ9/KhsvcAnzAOd8JPwZ+zr9/aF/KViUCztgCBy92
 FatcX4M5pGBoOm8c8fRwdwYT3SzCZxJMA26B6VZq+yhs3wn+33OYZkPO81JIjxz9C4lx
 SscwjwS9vUKhcxU5a1rLbY73RBqedLSon2/zw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zP55TDVJhIIf3D70exLW80PJ5Fxq6s8zGifToJ/Z0dc=;
 b=FWDvfTRSwBZyC/S55g1xve8nFYj9HG+SYx/QK97+VH/pBL9E27UjZvePQbvzKp2OHs
 0pr5ggUfiPRR8FF9Ua4sQawmlfjpzzv/oA/ThfNCk3Ta5vICwaafAG2qfVP1H5tPvAqW
 wd0050mT1i9QLyy0XugZpsFyiPXsWX6f1mVhdK7GcPG05HlmmbNO6sreolIEmaDLG7Dg
 QD83uGE9FJ5GyZI5nXL+FVDT79rYMpPZ+YfbAIZsSIyvcNTo8FwkCsbGn8EKvsPViefQ
 CRk+sgD3b1m7MEVM1VJveYBkLlRX50h0mHfBFKK7NElbOs65Dp+R27N/J2s5lD71Rm1i
 3mTA==
X-Gm-Message-State: AOAM533Fi2NBW54I92m5WM+lzULofCPuJm2An3LrIFaG3VDTijkEUJzM
 8U/HcW0DUiZ4OF9r7DO9WNj4tX0fDQMxnQ==
X-Google-Smtp-Source: ABdhPJz5rSeyZzVAkY37cQQqAUZMY9xHYrA838IOdkb8jskKkK6guA0WdZONNuWfyJeZYfJH5ZIBCw==
X-Received: by 2002:a17:90a:c293:: with SMTP id
 f19mr8170642pjt.91.1591310370635; 
 Thu, 04 Jun 2020 15:39:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id nl8sm7407988pjb.13.2020.06.04.15.39.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 15:39:29 -0700 (PDT)
Date: Thu, 4 Jun 2020 15:39:28 -0700
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH 01/10] x86/mm/numa: Remove uninitialized_var() usage
Message-ID: <202006041539.B8C0C768@keescook>
References: <20200603233203.1695403-2-keescook@chromium.org>
 <874krr8dps.fsf@nanos.tec.linutronix.de>
 <202006040728.8797FAA4@keescook>
 <87zh9i7bpi.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87zh9i7bpi.fsf@nanos.tec.linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_153931_883704_8712DBAF 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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

On Thu, Jun 04, 2020 at 11:39:05PM +0200, Thomas Gleixner wrote:
> Kees Cook <keescook@chromium.org> writes:
> >> > -#define NODE_NOT_IN_PAGE_FLAGS
> >> > +#define NODE_NOT_IN_PAGE_FLAGS 1
> >> 
> >> but if we ever lose the 1 then the above will silently compile the code
> >> within the IS_ENABLED() section out.
> >
> > That's true, yes. I considered two other ways to do this:
> >
> > 1) smallest patch, but more #ifdef:
> > 2) medium size, weird style:
> >
> > and 3 is what I sent: biggest, but removes #ifdef
> >
> > Any preference?
> 
> From a readbility POV I surely prefer #3. i"m just wary. Add a big fat
> comment to the define might mitigate that, hmm?

Sure! I'll add it.

-- 
Kees Cook

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
