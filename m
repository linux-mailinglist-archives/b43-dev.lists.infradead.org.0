Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8F81EDBB3
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 05:33:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4/3VyNMlLIGSAhrW3BI68ELUC3J31Beg/BpnjRVk7JE=; b=C85cN4riEOfioJ
	OHF9kWjOoG4gkPRklG15eD+RmjTd9RZwAbnd/2VYOwy6Z6lf8ibvOdgwkytPfCIQuf5pNUjhPPi3c
	JFLjMI2JHOlsY+tZazplvzonhoshZYr69tVQzKj7wHrShZshi1D7kDMdx09IxYqV5vaakEAuDjNwq
	wCl83KCy6C1GcrVeWoM8xzRItZSwHR6b5/P0oKZ5WPCO4lco5ungga+fyx+o1JQJ8PeNoPo4g3bbg
	fY/JfwiiVYQQNjVrmes1jutxhXBVsLl3146LNGt8QPm8i3mvBXv9GPns3oKF0Na2+dybHfC7DiT0F
	Z2cSmms5y6j3ZhCTfFzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jggdf-00046x-Rt; Thu, 04 Jun 2020 03:33:55 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jggdb-00045j-TM
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 03:33:53 +0000
Received: by mail-ot1-x343.google.com with SMTP id k15so3688989otp.8
 for <b43-dev@lists.infradead.org>; Wed, 03 Jun 2020 20:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=MtysUER1l5a/zqtCZtWbYXE2kDcmWMdAVlNOZNySUKQ=;
 b=hAU6iC7SzuADMG5Aos+RZHGnFaCQ8z6d36F+7W8dHx8UydKYHSdkcMT8w6CUcGNzag
 njj37uaHb1XsQkeNNgODWxw+JmIPSJFsiOzWaiRts6JwLN85uBohYPmIU0IknkNXqApb
 3XrfusUHfNL5s13uf3b2DyoPaSWSJxflMEAZNaYtnurxuCdr4w+7UzwHmt4ux1uoSJZY
 VRuPqpiBPltoh715g3N7dXpDuR406aK9rtLam9pcwGJmc9amafFSMtWft6BzB9EYs6D1
 9LU1A/I8cVMacSajcwltKX+v5EE6MYClw1IEQtopq+DleI/1RwWeGJEmC369juox9UBM
 UuWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=MtysUER1l5a/zqtCZtWbYXE2kDcmWMdAVlNOZNySUKQ=;
 b=RYDayQNJf6HDm87CCqD4gIS2AFxC9+44bazxB02G6vVl3TIrrED3cbOxAuDWhfeTfd
 RWWCpFHRj/2tOgCa9w/PMxpoiXaRq/Et4ceaoGMnh47eKbudDIQdEZgNkxLxuVv/3wPi
 WqMMYHKDbaMp92vfA6LVoC9e3xhXQeKvmLzTQckAQF0ylyu9DcOIraNLQSMlilSpSwsK
 vJO+MnNuq4GEe9e962ykrAWGuivuhK10N5PpbXnjTv/HP6Du1mR5ffeRVze6f5t8xzUf
 KJjeG3bEH1AcMFoEl4Ka9ZB4wmTvSPH9sxzWOJFoz9D3lWUPuK5Xg/8/SAJXZmdO5bwW
 0zzg==
X-Gm-Message-State: AOAM531RIVLuqKz4ZxI3EiKaRrQuzSEd/6WUgjl5wNz6G4zIGohevOrt
 9NHAudC5E14zOBj1saEY2zRoYdzCSb4=
X-Google-Smtp-Source: ABdhPJwauBmbuSyRfNNxnZntj92z7/qBAcGhEUztVFaDTipPYCkr+MSp0RGhU7FWUD4z+qoEhiCdIA==
X-Received: by 2002:a9d:7387:: with SMTP id j7mr2354350otk.157.1591241630021; 
 Wed, 03 Jun 2020 20:33:50 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
 by smtp.gmail.com with ESMTPSA id z13sm969120oom.3.2020.06.03.20.33.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 20:33:49 -0700 (PDT)
Date: Wed, 3 Jun 2020 20:33:47 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 00/10] Remove uninitialized_var() macro
Message-ID: <20200604033347.GA3962068@ubuntu-n2-xlarge-x86>
References: <20200603233203.1695403-1-keescook@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603233203.1695403-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_203351_941950_6852D4B7 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
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

On Wed, Jun 03, 2020 at 04:31:53PM -0700, Kees Cook wrote:
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings
> (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> either simply initialize the variable or make compiler changes.
> 
> As recommended[2] by[3] Linus[4], remove the macro.
> 
> Most of the 300 uses don't cause any warnings on gcc 9.3.0, so they're in
> a single treewide commit in this series. A few others needed to actually
> get cleaned up, and I broke those out into individual patches.
> 
> -Kees
> 
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> 
> Kees Cook (10):
>   x86/mm/numa: Remove uninitialized_var() usage
>   drbd: Remove uninitialized_var() usage
>   b43: Remove uninitialized_var() usage
>   rtlwifi: rtl8192cu: Remove uninitialized_var() usage
>   ide: Remove uninitialized_var() usage
>   clk: st: Remove uninitialized_var() usage
>   spi: davinci: Remove uninitialized_var() usage
>   checkpatch: Remove awareness of uninitialized_var() macro
>   treewide: Remove uninitialized_var() usage
>   compiler: Remove uninitialized_var() macro

I applied all of these on top of cb8e59cc8720 and ran a variety of
builds with clang for arm32, arm64, mips, powerpc, s390, and x86_64 [1]
and only saw one warning pop up (which was about a variable being
unused, commented on patch 9 about it). No warnings about uninitialized
variables came up; clang's -Wuninitialized was not impacted by
78a5255ffb6a ("Stop the ad-hoc games with -Wno-maybe-initialized") so it
should have caught anything egregious.

[1]: https://github.com/nathanchance/llvm-kernel-testing

For the series, consider it:

Tested-by: Nathan Chancellor <natechancellor@gmail.com> [build]

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
