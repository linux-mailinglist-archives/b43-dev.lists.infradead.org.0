Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6B21EDA9D
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 03:44:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C20RaMRPkYyHxix9ydgBtBzvsnQhj2TmHlJNKhB7l3U=; b=J0QZIVKuCAwjNy
	rlzKS6TyMOtrmf/xb6ySL3tHU/hyQFngINKRQ4ndK9DVNeKcL450jB+6xsPDQzp9tBLJHAaVLQBcZ
	3CCvnpu/7QJSure2hjyqUoc60FQ4y3JtDda5O7cOQJF9n4AmZHPYzUcDE7f6Uwxd4etMLKfVJ85tG
	1J9dXDbgKW9cC2o3Ep6mbFV4bRTFSzEC8r9hX1jixDVeKwTBmMW8D6xAf9Xev2D10oQ8no0CX74cB
	WAUPQOu1+1aKxORCDrNfE70KAQwLPxGwYQ9+yXpkudzQ4kS9oAUiTIsEtlbgTHyMSkoKo1JLTdYhD
	huJZh4jgLxQ6cpJ4AeGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgew3-0000iH-Jm; Thu, 04 Jun 2020 01:44:47 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgevz-0000h4-Uk
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 01:44:45 +0000
Received: by mail-pg1-x544.google.com with SMTP id p21so2768742pgm.13
 for <b43-dev@lists.infradead.org>; Wed, 03 Jun 2020 18:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Wpybr1+0oFA6UqMQJBfZL+PEEh3VzZMl9GH1YHu1354=;
 b=AbKWjJtgEgSZdlRzZpINmLHh+V8xJj2UZ2odKQ2c5ZSQmdk1BLZaB0K4agCmc9jSmi
 AAmX5SqtRhMCVwb4wbdCeXmP+MI0pU+26rg/PWtbK/suB70n8LKxY+RL9wU3Qn6Y4nm2
 zGn/UOyM2NglkPBkMHcXSP1vQ8Fpyy930e1GY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Wpybr1+0oFA6UqMQJBfZL+PEEh3VzZMl9GH1YHu1354=;
 b=EIiTHcE8qxIsH2/yz7LNSxaryyy9MnL8Mrb5m4ezSDwLTbMsgdg2kZXum+iz/L5uAW
 gtztJd2zu+tANK3wev4KSlhuZZmQdrmg/hBRtOonmAeevpuJ1VkZuKHeJ69+4vplPkT0
 sVEgjMxXP8+OZGdv2IK9Pq42DK+8DJHWz1tifhIi03vM7sRcGyIGUZQDlgt/VDWhjvWR
 zJzX4yrlHJv3S8Q9zdvpCIubbn5gmGGx0FGzGuBqETgoSwMY9t97vgwQNzrLnfBwWL/l
 x0r+jKdMzmLjHZhNZOD5up0S5ChemcFNDFMLEzhiA1HxeBFESRpyDHobrKVhme7VZD6S
 b1Bw==
X-Gm-Message-State: AOAM530nYjabOIjfIXjh4In/xOAuA5Du+bhXQuxZ/6x9nxAPmI7xJfdg
 bqVJNpxcn/sV5FLbF6IhuzqU1g==
X-Google-Smtp-Source: ABdhPJw6n1UeZs2KwVXXpsKVlKB/eX8l0Vu/Wi69L010BRhnAwssMdnRSJ//zeA4lceo/p+HCVbgnA==
X-Received: by 2002:a63:5f90:: with SMTP id t138mr2082803pgb.122.1591235081380; 
 Wed, 03 Jun 2020 18:44:41 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id i21sm2541029pgn.20.2020.06.03.18.44.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 18:44:40 -0700 (PDT)
Date: Wed, 3 Jun 2020 18:44:39 -0700
From: Kees Cook <keescook@chromium.org>
To: Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH 00/10] Remove uninitialized_var() macro
Message-ID: <202006031840.E2F0D15D8B@keescook>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <CA+icZUVZwjM9o7aNXAkYu8K2BQAajw=60varP4g+NizCqu5gRw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+icZUVZwjM9o7aNXAkYu8K2BQAajw=60varP4g+NizCqu5gRw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_184443_990769_0C31571D 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
 Joe Perches <joe@perches.com>, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-clk@vger.kernel.org, drbd-dev@lists.linbit.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 03:23:28AM +0200, Sedat Dilek wrote:
> what is the base for your patchset?

Hi! This was actually on Linus's latest tree (which is basically -next),
mostly because I figured this might be a bit of an RFC but if it was
clean enough, it might actually make the merge window (I can dream).

> I would like to test on top of Linux v5.7.
> 
> Can you place the series in your Git tree for easy fetching, please?

Sure! https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git in
the kspp/uninit/v5.7/macro branch. There were three small differences.
I'm doing the "all my cross compilers allmodconfig" build run now, but
figured I'd push it for you now so you didn't have to wait.

-- 
Kees Cook

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
