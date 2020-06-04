Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D80A1EEBCE
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 22:20:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5elJvpgd+2MprTM7mSLImtmYX2oClJQkobpH6WaTyNc=; b=kZlXIuu4hiZQil
	ae8OPTKjkUrnCB57br8Fm9Gxk0aOUF16DL2WKAaPTcTHBpltzgpxyqk/l76C34KPEMEDpsF+138go
	ScrwP7CQnaK8KC9TIWWbeYjY58AG06hDvS59h6cUS0x+jXvA77yaOiLrlfT0PriCunYV7KmYRF57r
	GqpG3CYH7na9sGPHhl9pPU/hvLAVDJx3Wc2wOEtF/VqfLgEZCcYMd31Oi52bJJXyQ2jdcEWknZgFE
	qTlS3ICfHlF/RWHSnfdeqG3oPMDXYaieS2xkQW8RNhlrl003SVcguNPO5Kjy6sb7+9EeIH/MnSVID
	vKdWjHfo5BQd5aAiypEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgwLS-0005w5-1I; Thu, 04 Jun 2020 20:20:10 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgwLK-0004vw-PJ
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 20:20:04 +0000
Received: by mail-pj1-x1041.google.com with SMTP id b7so2497380pju.0
 for <b43-dev@lists.infradead.org>; Thu, 04 Jun 2020 13:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=gz66RqxXF5KGuRHQ0GYBuygtpEJiPzNI0sTLh4Vu69Y=;
 b=jAmWlkIQJZzKdLIy24SnHWINuzTVOS3/wjvm2cU2AFi5wGPpwqQkjWfOwBraDHgs8k
 bMHElbdbRxBbtC27xZm6mEe99uDc96pKouYmbV/dc0+e2MIiE2jcwrdVq98w16mgeguV
 2DhLtfyu1wmL1bs6o/3S7BQ/OXA9/tFItMGTU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gz66RqxXF5KGuRHQ0GYBuygtpEJiPzNI0sTLh4Vu69Y=;
 b=EdxEbu7sZR7gu4lDFTjV/OlfIg+uQ7ud+dCPniQlKCe0IJcFAh9zs1woTbZp8hoRTi
 ZE1ykvUnx0cPm3ht5LtdwxoWLzuWCztMQRzDKeWAbcUxkLPBAdVVaDt2nPqtsYpgwtKY
 p2wlOGXliFVZIPm7A8a4mRvFyatWbnlzdZmS6mzvQjiLBuwFRJBQBPE7CfJnCuXOmO8G
 uH7Ly/Z/cbEKFBAtyjHNDS5sV/hZg0WtjuwUL301LrboUs00q1xyg54ZlS2BsyMuLlIk
 OZks44Ou4Divj/nVCPqkj+3rJnbMqcwRjb4noPT7cYSrKu6Se9Vmu3Ct0riu8vL06QL7
 CgnQ==
X-Gm-Message-State: AOAM533x2eke/PFXk8/tWL3Ce7LyfYs7D0BGRr85P+9Uj3i067rCvkcu
 ThXDxqTO4pEvVlAXmepYdDKKag==
X-Google-Smtp-Source: ABdhPJxkV30NNQPml+L5dx48JHt30SosyvH9CeJOsvPeKMxl1Di1uyDaJOg4t+7npffgj0Ki2XTH3Q==
X-Received: by 2002:a17:90a:7043:: with SMTP id
 f61mr7838452pjk.140.1591302001916; 
 Thu, 04 Jun 2020 13:20:01 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id g17sm1432553pju.11.2020.06.04.13.20.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 13:20:01 -0700 (PDT)
Date: Thu, 4 Jun 2020 13:20:00 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH 05/10] ide: Remove uninitialized_var() usage
Message-ID: <202006041318.B0EA9059C7@keescook>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-6-keescook@chromium.org>
 <CAKwvOdm5zDide5RuppY_jG=r46=UMdVJBrkBqD5x=dOMTG9cZg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOdm5zDide5RuppY_jG=r46=UMdVJBrkBqD5x=dOMTG9cZg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_132002_856035_31F37352 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
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
Cc: Andy Whitcroft <apw@canonical.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-ide@vger.kernel.org, Network Development <netdev@vger.kernel.org>,
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

On Thu, Jun 04, 2020 at 12:29:17PM -0700, Nick Desaulniers wrote:
> On Wed, Jun 3, 2020 at 4:32 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > (or can in the future), and suppresses unrelated compiler warnings (e.g.
> > "unused variable"). If the compiler thinks it is uninitialized, either
> > simply initialize the variable or make compiler changes. As a precursor
> > to removing[2] this[3] macro[4], just remove this variable since it was
> > actually unused:
> >
> > drivers/ide/ide-taskfile.c:232:34: warning: unused variable 'flags' [-Wunused-variable]
> >         unsigned long uninitialized_var(flags);
> >                                         ^
> >
> > [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> > [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> > [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> > [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> >
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks for the reviews!

> Fixes ce1e518190ea ("ide: don't disable interrupts during kmap_atomic()")

I originally avoided adding Fixes tags because I didn't want these
changes backported into a -stable without -Wmaybe-uninitialized
disabled, but in these cases (variable removal), that actually does make
sense. Thanks!

-Kees

-- 
Kees Cook

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
