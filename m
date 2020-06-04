Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73ACC1EDC03
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 06:02:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FtYL6432Q9AcPdBODGQgeuE1a2GlONWDcqYxpBvtzmk=; b=nMOMmRtzIvMK1d
	77eONLdXG93kZOP/8kLnXT5rcdk6ypubTSQXpqHqmZwbAanS82o3tzM7HPmRSrUAFd+n4b4UmN2bN
	eSjqrTdeHvbyE8nPjLcc+spf/5veDKfZueGf5n0hO0XiM1xVFJw2Arb9ENTDJcimGIj+rebuAA2+5
	iHIAJpszI9fAEilR4jc2WG0hD1DAou0+lpFqxxr1q9cjQMAIKNHwQNS1295znP5Shd3XpSvA9S1E+
	dd89m9sg+LqQucGxnkA2dsAaAqVP2j4x08EcZquDJOsu2Menvz/Haq0qNe+X/bvyl0Sksi9w4Ejue
	w0OU8/vJuiwZNeF/g8Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgh5T-0006cL-PY; Thu, 04 Jun 2020 04:02:39 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgh5P-0006be-Mx
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 04:02:37 +0000
Received: by mail-pl1-x644.google.com with SMTP id m7so1613094plt.5
 for <b43-dev@lists.infradead.org>; Wed, 03 Jun 2020 21:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=dDMZ76EfQNqsSp5sb7mLI8JiO94mOeQpyrT6zdtd3HQ=;
 b=nmlYusCXDFiVqFXgxwlUm0gg3wIorQtKPNmSn8kUxXy2o8ATDLsqSlFD0o61OtpLts
 2zSeOvR5nnDD2//h685p30vwSekGc1q/jRAs6eegsS86q8t4Z7JAaLx7yfVY1EK9Xiau
 DCT2MBSjsLxms0BiWDCQF4Q6VgKuWrTFT33kU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dDMZ76EfQNqsSp5sb7mLI8JiO94mOeQpyrT6zdtd3HQ=;
 b=STzshr9cRYC0zTPiHdpK7QLFf3pZtVE5JizBfx1eXR/CWx9WOszhx6zq+lpedrV7gB
 tX9YIZ2tf2CvzcBw/nA6unKRkKgaUgMAqm7EIVcEpPHATi/+eEYc/Au8ZF74yZuM100t
 SiPEOnwwgGTf28YvYWVHI+JrpNlEGCZQv9waC56HVZCQVzybrcx2YjM0erV+NcYYBelD
 DpzwRD+Sh6AfCrrdcKuscpsiepFJ/VSxLKa4xr5N1tisIDCYv06cwk8sOYRc7dCJsKNR
 yKj/0YuKm1XZLTQkB3V/pvqLKZ8Sul28e209tzPaJ8rvqmGCul/0tzZW3CyoaD79jSxf
 8ncw==
X-Gm-Message-State: AOAM531LlI6kQntpEsKcjJGshd0iVBwVJfatRalOqQ1QxS6Z6zjhCUN1
 bhtWonBO18+sAAU8PvHdV/Xmh3bvR+dUlQ==
X-Google-Smtp-Source: ABdhPJxQ/Dd1yetZm6iahM4ViylSUD/mRnchtrTt1NIbGDNSI6TVF94FWNWMrr2lFeqPK0TXyTqNmA==
X-Received: by 2002:a17:902:b710:: with SMTP id
 d16mr2968382pls.28.1591243353758; 
 Wed, 03 Jun 2020 21:02:33 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id q6sm1193902pff.163.2020.06.03.21.02.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 21:02:32 -0700 (PDT)
Date: Wed, 3 Jun 2020 21:02:31 -0700
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH 09/10] treewide: Remove uninitialized_var() usage
Message-ID: <202006032048.E7B1D18A1@keescook>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-10-keescook@chromium.org>
 <20200604033315.GA1131596@ubuntu-n2-xlarge-x86>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604033315.GA1131596@ubuntu-n2-xlarge-x86>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_210235_767446_DB67B3C8 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

On Wed, Jun 03, 2020 at 08:33:15PM -0700, Nathan Chancellor wrote:
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
> > 
> > [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> > [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> > [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> > [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> <snip>
> 
> > diff --git a/arch/powerpc/kvm/book3s_pr.c b/arch/powerpc/kvm/book3s_pr.c
> > index a0f6813f4560..a71fa7204882 100644
> > --- a/arch/powerpc/kvm/book3s_pr.c
> > +++ b/arch/powerpc/kvm/book3s_pr.c
> > @@ -1829,7 +1829,7 @@ static int kvmppc_vcpu_run_pr(struct kvm_run *kvm_run, struct kvm_vcpu *vcpu)
> >  {
> >  	int ret;
> >  #ifdef CONFIG_ALTIVEC
> > -	unsigned long uninitialized_var(vrsave);
> > +	unsigned long vrsave;
> >  #endif
> 
> This variable is actually unused:
> 
> ../arch/powerpc/kvm/book3s_pr.c:1832:16: warning: unused variable 'vrsave' [-Wunused-variable]
>         unsigned long vrsave;
>                       ^
> 1 warning generated.
> 
> It has been unused since commit 99dae3bad28d ("KVM: PPC: Load/save
> FP/VMX/VSX state directly to/from vcpu struct").
> 
> $ git grep vrsave 99dae3bad28d8fdd32b7bfdd5e2ec7bb2d4d019d arch/powerpc/kvm/book3s_pr.c
> 99dae3bad28d8fdd32b7bfdd5e2ec7bb2d4d019d:arch/powerpc/kvm/book3s_pr.c:  unsigned long uninitialized_var(vrsave);
> 
> I would nuke the whole '#ifdef' block.

Ah, thanks! I wonder why I don't have CONFIG_ALTIVEC in any of my ppc
builds. Hmmm.

-Kees

-- 
Kees Cook

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
