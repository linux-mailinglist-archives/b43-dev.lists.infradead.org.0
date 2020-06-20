Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C88512024FC
	for <lists+b43-dev@lfdr.de>; Sat, 20 Jun 2020 17:58:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6PtGZFCXG4WtrCczTkUglpW2q9yXtNcleTaVQe9mG8=; b=qiDipdVdI3fH9S
	ksRX1XI1giuB9Rs2O4VD1h+OH1XBg9DejvuKuop2X7y8qmnqdJcLhxfqD12af7dIpMKyGV4utXsK+
	NusEzzoLBLCbc6NkJJ/IDBzWdu78PvGmazWPzqBkWpYDXBgoVOXlW3oeJA5GJobD1TxbnYtE3zyf2
	wapZWk455LoLHJOqxAq7IFx6EBEykwr7UGq0ecFU1CCdkg7TZbCQCrHka1QubW41aifYMAzwrYE4v
	nq1+aFoRXCF7ZtcoAy/xz6/U0noMfla/Ioby92JPvDjDSaBfnnmHjooO6sbMviGN/VVwVS1joWA4H
	pCW3VVQY4rBBDSql5LEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmfrk-00073s-Rm; Sat, 20 Jun 2020 15:57:12 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmfrh-00073D-WE
 for b43-dev@lists.infradead.org; Sat, 20 Jun 2020 15:57:11 +0000
Received: by mail-pj1-x1043.google.com with SMTP id d6so5966009pjs.3
 for <b43-dev@lists.infradead.org>; Sat, 20 Jun 2020 08:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=9tYajToBSjCKrMeO3oPfRpy8eb8n4thx7RWSAT9gnU0=;
 b=QDUi4+cS/+VkJarQJer8i54NB6wrYUApoWkctsr63KwWXWXArOZDidsHLokQDZp1dW
 eZ4mUUVqPLdtc98QdwYojIxlVjsSvdT6uJdK2Pr6SfHfX+CS5ufDjNUbv4fBIhf1Kcxv
 MQ/YY9T6qSNqLt4/98fJo5BCZXSyE37vzBS0w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9tYajToBSjCKrMeO3oPfRpy8eb8n4thx7RWSAT9gnU0=;
 b=HnkXCDK2h6ci4b9xsa5OS5quB2a/qfQIJdtdUDhyKgjE9nE4hUirxdcwK14b82HrwA
 CpAnVY/GYZNoHfPY8aZq7KR1bmYFWqHGUVwBr1P3XRVI32lj9WCxkXdpU4MfzhEJtD5k
 NW1QuKyxAVM9fJBS3mozAxg7Av770kEfjOTjX1LuMpHOK3JBEcM4gJ0LidwCgE2paYVP
 xDIi1y9ialHF97VfALvUml/WDxeSD0fb0YwALGfx+ksZZdMIf7ne/ODmPG8rtk9bjxLG
 1ysw8ncZV4mFc18Z63GvvSAhpK3FWVaJQ9kGjKXfeY0s6pi0+vvqxXqNPY2dYjaPgd/W
 aaKw==
X-Gm-Message-State: AOAM530FRlPk229jMjkeRdcze3uiLCE3wX0W9EsjmLeeftHITCzvHUJU
 j/ySvSVJjYplBWJs+IySpnLgQvwjcVk=
X-Google-Smtp-Source: ABdhPJxL62JhXi8o+nSID6QHqBiLZ4YAHSAeaQKUwiACFjUcLS2k4S/MAlD8WL4T8tKBotrZuujIYg==
X-Received: by 2002:a17:902:b78a:: with SMTP id
 e10mr12682612pls.201.1592668627259; 
 Sat, 20 Jun 2020 08:57:07 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id y4sm8954278pfr.182.2020.06.20.08.57.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Jun 2020 08:57:06 -0700 (PDT)
Date: Sat, 20 Jun 2020 08:57:04 -0700
From: Kees Cook <keescook@chromium.org>
To: Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH v2 00/16] Remove uninitialized_var() macro
Message-ID: <202006200854.B2D8F21@keescook>
References: <20200620033007.1444705-1-keescook@chromium.org>
 <CA+icZUWpHRR7ukyepiUH1dR3r4GMi-s2crfwR5vTszdt1SUTQw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+icZUWpHRR7ukyepiUH1dR3r4GMi-s2crfwR5vTszdt1SUTQw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_085710_053708_BCF1BBE7 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-doc@vger.kernel.org, netdev@vger.kernel.org, x86@kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-block@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, b43-dev@lists.infradead.org,
 linux-ide@vger.kernel.org, Joe Perches <joe@perches.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-clk@vger.kernel.org,
 drbd-dev@lists.linbit.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

On Sat, Jun 20, 2020 at 09:03:34AM +0200, Sedat Dilek wrote:
> On Sat, Jun 20, 2020 at 5:30 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > v2:
> > - more special-cased fixes
> > - add reviews
> > v1: https://lore.kernel.org/lkml/20200603233203.1695403-1-keescook@chromium.org
> >
> > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > (or can in the future), and suppresses unrelated compiler warnings
> > (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> > either simply initialize the variable or make compiler changes.
> >
> > As recommended[2] by[3] Linus[4], remove the macro.
> >
> > Most of the 300 uses don't cause any warnings on gcc 9.3.0, so they're in
> > a single treewide commit in this series. A few others needed to actually
> > get cleaned up, and I broke those out into individual patches.
> >
> > The tree is:
> > https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=kspp/uninit/macro
> >
> > -Kees
> >
> 
> Hi Kees,
> 
> thanks for doing a v2 of your patchset.
> 
> As I saw Jason Yan providing some "uninitialized_var() macro" patches
> to the MLs I pointen him to your tree "v1".

Thanks!

> BTW, I have tested your "v1" against Linux v5.7 (see [1]) - just
> yesterday with Linux v5.7.5-rc1.
> 
> Is it possible to have a v2 of this patchset on top od Linux v5.7 - if
> you do not mind.

Since it's only going to be for post-v5.8, I'm fine skipping the v5.7
testing. Mainly I'm looking at v5.8 and linux-next.

Thanks for looking at it!

-- 
Kees Cook

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
