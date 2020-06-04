Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A20EA1EDA27
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 02:50:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+FBZH9v6qQ5OfPok+mYK+f9uhYbiu913TVp+Nd4zKeM=; b=osuJStyNaDv1wS
	fqs/wpQI75NZDElwMRUyihdvkExYIzyYju3Ldlt/P+cGu0l62Ad71TnDZwLUYotAailnTZSHUSZ2D
	yhTodGUXznFKeaTUk709enSj/ssRUIl+/DL5EDF7b6caRT8GlH69MD6IuN27EY3sCKvbfi3XfL84X
	XOwNEYE2m+i2/t9PVL6I+znDgJ3Rgbk7oMqySrt5H1+WUk5pC33HMdODsF0V1WGLT0tvyLLWdppn2
	MoSfhu/i3AbtFmlqKmquWeAEBizF/OGDYI1yGFu0zz1T8UGB8+7YiBijGcFBwi1bcC0uRW/z4gLMl
	yfuv0voVIP/Zw7BCrwmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jge5l-0003UV-Fh; Thu, 04 Jun 2020 00:50:45 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jge5h-0003Tf-1z
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 00:50:42 +0000
Received: by mail-lj1-x243.google.com with SMTP id e4so5137000ljn.4
 for <b43-dev@lists.infradead.org>; Wed, 03 Jun 2020 17:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MPLZOT/4bCsndxaWJtW6FhRuUjguIqCFp5N2dwDtYQ8=;
 b=jjo5yXOjBc6ExBZ0xU0p0U1vrAbDQBGzKMjBMieodOVuBzHGTF9DfthYYNAfEr4O8H
 rweetJbTqqdkWZQ2Mh+tJNCGkpf/fkl1rkUJQ8mQL3qjchZnqA0v3AMF1MBb2R/OeUUh
 DuErOylpGthQHIdGEr+3RVWllhk+DcvmzUIeBDjSdh5bWQzbscb+Y3ruNHUM8Dkq3sMo
 nn/nsSopZsp2D2DmmTBE1rVlfsSS3jD71ToiAPKVqzTq2U2pcrz+IKipSkRRITVVt4/Q
 y9VjEOyTc4mzSfqGsdsgNMIeHMEoqdZSRH5tVyANTF0vpIJUjGxVhNnyKfbEjw81HuWV
 wblw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MPLZOT/4bCsndxaWJtW6FhRuUjguIqCFp5N2dwDtYQ8=;
 b=d9f8lhL6byg2srr9F9iHHyEcFMPPzKp9awDVk0iyUUTdULZ1EQYhoE05UxywT+LmQV
 HG8oxnTri4Y2zR+ZZ85sYHDHF48V5whfiLbiTo1yitQdXk0eB7YtAwj3wT9UgSKAgdZn
 3usPfoH1T4/N2i9q4J85TlXEeebGmAOsTAo1rTBqrUwzVHBlEH3mxVK8ryMqjBx3a1eN
 3NNi+C3c8l2776eIr7Qjw2+CO3l+8B0rx++vXwYKCTilxtL074aaD+LQ0MeVDIereUwe
 Dski6MgHVZZg/Gb43/RINj8xohrao3df4XmJaNCt/ewawaowNVvn4QSnyTyaYhYHBYDC
 URjA==
X-Gm-Message-State: AOAM533LrNWXj/tktMGxerI0eC0w8aJFEEBWb7aO1AHYSGD/beSzucy4
 NMa0o885nKr0SVdGPNlv12cIqG1mlqsiW6sfHN8=
X-Google-Smtp-Source: ABdhPJziTNSuHWTzq2vssLq+q8Fk3g0gJzv6ZAQGOSjz3d+G2JKB1FM3MjsolLLYpNir2cIK2vJaKIQ5Hqvq0FlOkQ0=
X-Received: by 2002:a05:651c:11c7:: with SMTP id
 z7mr899332ljo.29.1591231838573; 
 Wed, 03 Jun 2020 17:50:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-11-keescook@chromium.org>
In-Reply-To: <20200603233203.1695403-11-keescook@chromium.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 4 Jun 2020 02:50:27 +0200
Message-ID: <CANiq72nJhZZ7Bc+VQpPrDjey0iD9TspbtodtGpKaZNz8NCaHww@mail.gmail.com>
Subject: Re: [PATCH 10/10] compiler: Remove uninitialized_var() macro
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_175041_118174_4FC8CD23 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [miguel.ojeda.sandonis[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
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
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-ide@vger.kernel.org, Network Development <netdev@vger.kernel.org>,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-spi@vger.kernel.org,
 linux-block@vger.kernel.org, Andy Whitcroft <apw@canonical.com>,
 Linux-MM <linux-mm@kvack.org>, Alexander Potapenko <glider@google.com>,
 b43-dev@lists.infradead.org, Joe Perches <joe@perches.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-clk@vger.kernel.org,
 drbd-dev@lists.linbit.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Hi Kees,

On Thu, Jun 4, 2020 at 1:32 AM Kees Cook <keescook@chromium.org> wrote:
>
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings
> (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> either simply initialize the variable or make compiler changes.
>
> As recommended[2] by[3] Linus[4], remove the macro.
>
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
>
> Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---

+1, one less trick split between `compiler*` files.

Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>

Cheers,
Miguel

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
