Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E42041EDBAA
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 05:33:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Na2oF7mFvOJKPNdoM56871b8M1KOMGn9Ct5jipxBsIA=; b=V2gH3uiS31cFEc
	fm+s+y51ZV9OufKS0ikuMmnQBSlQt7FOWIrurEp2vPchMdDgaH3GX4mpdCFbc1d3c3T4lKeQPDypS
	NCeIyQ7JTaRuqhzxF68/lIs9PAVrb9K4vmG0f36sHEPokrFIY2q6L/vNoTkHeSWSAAuMyxxdCkT9h
	vxbO437pxX8WRJJf+FRoG5HdAN4Z4FpRDeNcXTEZxC6j6LW1OQU3kHA1G9A7H4JbWdM3eUFDu/1ee
	7Bc3nmDFbqBADrC9+vjMWi2kYIvXLfVs64NiAegNEpdMAGox01Sc1peA8mzoggFvrX5Zs+kHJXrfY
	DHRPSZ9bOkI1F2DwvQpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jggdC-0003zI-E1; Thu, 04 Jun 2020 03:33:26 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jggd8-0003yE-4l
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 03:33:23 +0000
Received: by mail-oi1-x244.google.com with SMTP id j189so3833751oih.10
 for <b43-dev@lists.infradead.org>; Wed, 03 Jun 2020 20:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=8Faii11PvSo51bdsAemmq3+A0d7oNRL4/GLZ67cBSMg=;
 b=An50kzaFvA39pC4h/8bP4oIWOqTSG046GlYB5+emgXeZszQTtbXKqSjDjHWmw8n8um
 VXpLlrq83m2ZAS8J26v56FTDUjfbdw4fWaYAjEK9Ox20DjsyL1kabqtQvJ0qaNA6AN6x
 WQHzqT/rIk17+lobg6a1Qz4niujZV9KifIFoGU6CnMcUxFKQqfbbxVvC4XVpIL5SSTtt
 6xGwnGkCkYTcRnL3OaIoBi5ReA1N/8hWVCv9k4QJ2ieUjD5HXDXWHDv6XZ9+0M+W+p2j
 GHjogeet/zLPYDJFnvbD/NGsLeEzoRiqyu6IiidyEX/Bv9x5fa84lURyrkrcSmOp3voL
 uKqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8Faii11PvSo51bdsAemmq3+A0d7oNRL4/GLZ67cBSMg=;
 b=Te3E7wu4NWVKoUU7Q9H8O+cYgvz0V97XDkrFEUgWCw8KubmVzftuS6FeAL8KHUqbbJ
 /rWcSHOxtTp8S0MgoY0thsneiR3OtkF9KILM4JCfM/4gxTS2NQdqD5sQHvlcu76Y3ujr
 zG8PaEP6uVf+McdtJndtOZ7eAhcSuMMWZMC8bJdkBo6B0yB8+khO8ebGsAxZOSL8lv1E
 6kuacLMr5YRnU/THz2TFyLP7farqE/3THGfIt2Lmv1O0uJG38Yhl88brtYrljj9TgCK8
 oNfL/ffapV6X5C4Bi2r+EFP6ZVRKFt2R5hVnmVTGIRJulfX30VbkhOA+TDK4+fJmVMCu
 p8mw==
X-Gm-Message-State: AOAM530ba6IoRBtNj9vi3KFtjd+Rqd7YfWLNyAPHep0GWTuH8afbiWP+
 aH9K+NRre0rrx4Krt3NPyCY=
X-Google-Smtp-Source: ABdhPJwnzfVVb4uCTFG1lxg30QZrwlILRC7pC1WmnFYGEgON5rzpjMpDI7aYXPTUb98IobrtcgZC+g==
X-Received: by 2002:aca:b707:: with SMTP id h7mr1938490oif.174.1591241599191; 
 Wed, 03 Jun 2020 20:33:19 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
 by smtp.gmail.com with ESMTPSA id n60sm327816otn.75.2020.06.03.20.33.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 20:33:17 -0700 (PDT)
Date: Wed, 3 Jun 2020 20:33:15 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 09/10] treewide: Remove uninitialized_var() usage
Message-ID: <20200604033315.GA1131596@ubuntu-n2-xlarge-x86>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-10-keescook@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603233203.1695403-10-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_203322_202664_58CCBFEE 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
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

On Wed, Jun 03, 2020 at 04:32:02PM -0700, Kees Cook wrote:
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings
> (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> either simply initialize the variable or make compiler changes.
> 
> I preparation for removing[2] the[3] macro[4], remove all remaining
> needless uses with the following script:
> 
> git grep '\buninitialized_var\b' | cut -d: -f1 | sort -u | \
> 	xargs perl -pi -e \
> 		's/\buninitialized_var\(([^\)]+)\)/\1/g;
> 		 s:\s*/\* (GCC be quiet|to make compiler happy) \*/$::g;'
> 
> drivers/video/fbdev/riva/riva_hw.c was manually tweaked to avoid
> pathological white-space.
> 
> No outstanding warnings were found building allmodconfig with GCC 9.3.0
> for x86_64, i386, arm64, arm, powerpc, powerpc64le, s390x, mips, sparc64,
> alpha, and m68k.
> 
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>

<snip>

> diff --git a/arch/powerpc/kvm/book3s_pr.c b/arch/powerpc/kvm/book3s_pr.c
> index a0f6813f4560..a71fa7204882 100644
> --- a/arch/powerpc/kvm/book3s_pr.c
> +++ b/arch/powerpc/kvm/book3s_pr.c
> @@ -1829,7 +1829,7 @@ static int kvmppc_vcpu_run_pr(struct kvm_run *kvm_run, struct kvm_vcpu *vcpu)
>  {
>  	int ret;
>  #ifdef CONFIG_ALTIVEC
> -	unsigned long uninitialized_var(vrsave);
> +	unsigned long vrsave;
>  #endif

This variable is actually unused:

../arch/powerpc/kvm/book3s_pr.c:1832:16: warning: unused variable 'vrsave' [-Wunused-variable]
        unsigned long vrsave;
                      ^
1 warning generated.

It has been unused since commit 99dae3bad28d ("KVM: PPC: Load/save
FP/VMX/VSX state directly to/from vcpu struct").

$ git grep vrsave 99dae3bad28d8fdd32b7bfdd5e2ec7bb2d4d019d arch/powerpc/kvm/book3s_pr.c
99dae3bad28d8fdd32b7bfdd5e2ec7bb2d4d019d:arch/powerpc/kvm/book3s_pr.c:  unsigned long uninitialized_var(vrsave);

I would nuke the whole '#ifdef' block.

Cheers,
Nathan

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
