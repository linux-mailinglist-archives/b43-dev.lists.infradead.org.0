Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7031EE6A2
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 16:27:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q6WxMdoX6+ApntTjwFj5OFIzy48BEEh/7Y7EdVlU99Q=; b=cKic7RBjvddAaM
	/5CDTONLPuBcorSQfS655T2bWM1CUiVgubNUCDra1I0hANxx2HUMw9Qh8h8sk5y0lNiJCfLy+FTVJ
	Z09dB7P6LRFCq4A/rO8TimXnQ4eEthVMqrc1zZFQIt3KSD7Ts6TBrdx6Xh71AYXAf4bkdtv2RylNz
	nA6w+BM7vdFZCjiaz+KQusJBlG01Sy3S5T0neGQFqfAF+9EXFVFgvPd7OG8zZ0UHkSwajVcSHKVmU
	BVtz3I6ObzsYizgsUHNdjxRBXTtgpcJTia3o2RW2I7npJOkzoAcJBbetzk1xffpdVNt84oRsAYdIv
	ib4tJnvAESgHdMHm2M4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgqqT-0008CY-KW; Thu, 04 Jun 2020 14:27:49 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgqqQ-0008CC-0m
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 14:27:47 +0000
Received: by mail-pj1-x1042.google.com with SMTP id m2so1252629pjv.2
 for <b43-dev@lists.infradead.org>; Thu, 04 Jun 2020 07:27:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ELp8NKpDU/b4oaZzGkEuk3yIxekW0FfVsfMh0kEq3DQ=;
 b=e7eITrZAAG4SVhaatsNGEFfKSAV4mgFFeMordqmQufFe6/vzeagmQ484X5shPhREQO
 NcIW+cQNizrMWNfglE0Jh5V6uWSzvceN4EXsYppzfKNVQcK2K6MGcm3eAbNC9iODqDY1
 7i/uriuA9VGz8WZ62VSr78LapWZNk/5N3ydBE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ELp8NKpDU/b4oaZzGkEuk3yIxekW0FfVsfMh0kEq3DQ=;
 b=rhFYqfNB+cgswoMChUHyjiDGmp4CcjKBLLb717BPJEKB8V1Xz6nkR67PpoAfka+tsN
 lUdxY2PuKSv/AAqE6rbhjrHx6QgX+oeToXbICM5N51lFV2I9JWeJt9hvQ3bxBRwXHvay
 un07QIkGtDpLC2eDAKTzEiusSsbrtBigFZpHk/kDzyWQOcJ9JVB014eutnVTjMEKE/TC
 6MJ9oKlNh6qt5TLBtOPELGPYjCtT82V8eZyzx6exKQuQ/UTMh7P1d1HTIRz69/q/QqxQ
 Gqd4dz8IeZvh+jVCjh6+j4rKY9cNQ4bES8OyVcnUnRUw+v9JOXbL482YGH1t1LsHgtgC
 sEvw==
X-Gm-Message-State: AOAM532qpFzgmxa001LbVLXFnN2WanRM46m5wUAtSVikk4L/jWt+IkvP
 dOKc39A9cVgIvgnpgt294vk6jw==
X-Google-Smtp-Source: ABdhPJyh46iXXKU9Sh1DXTFOzkFXYm4paCXLSWoWqbxFRDWCjy8xbqFVrhjjddGEPZlvsY+JnIndAg==
X-Received: by 2002:a17:90b:188d:: with SMTP id
 mn13mr6391960pjb.84.1591280865425; 
 Thu, 04 Jun 2020 07:27:45 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id j15sm5944936pjj.12.2020.06.04.07.27.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 07:27:44 -0700 (PDT)
Date: Thu, 4 Jun 2020 07:27:42 -0700
From: Kees Cook <keescook@chromium.org>
To: Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH 00/10] Remove uninitialized_var() macro
Message-ID: <202006040727.265B0E586@keescook>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200604033347.GA3962068@ubuntu-n2-xlarge-x86>
 <CA+icZUU4Re5g3rRJ=WF3_KiCEc3CUmbH_PibTunuK_E1QskEjQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+icZUU4Re5g3rRJ=WF3_KiCEc3CUmbH_PibTunuK_E1QskEjQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_072746_072680_4466F168 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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
 Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
 linux-ide@vger.kernel.org, netdev@vger.kernel.org, x86@kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-block@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, b43-dev@lists.infradead.org,
 Joe Perches <joe@perches.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-clk@vger.kernel.org,
 drbd-dev@lists.linbit.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 09:26:58AM +0200, Sedat Dilek wrote:
> On Thu, Jun 4, 2020 at 5:33 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Wed, Jun 03, 2020 at 04:31:53PM -0700, Kees Cook wrote:
> > > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > > (or can in the future), and suppresses unrelated compiler warnings
> > > (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> > > either simply initialize the variable or make compiler changes.
> > >
> > > As recommended[2] by[3] Linus[4], remove the macro.
> > [...]
> > For the series, consider it:
> >
> > Tested-by: Nathan Chancellor <natechancellor@gmail.com> [build]
> [...]
> 
> I tried with updated version (checkpatch) of your tree and see no
> (new) warnings in my build-log.
> 
> Feel free to add my...
> 
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

Awesome! Thank you both! :)

-- 
Kees Cook

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
