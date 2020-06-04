Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6FD1EDE09
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 09:27:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=maLNdZuprFybiUkpzHeEqhOdGj9svbYO1RS09XXLqA0=; b=KlVLW+6nErdllH
	iRCOYFDzRriVYuIuXIL0neWpWMS+J7SK5VCZXfDyANN0DbyIDRdiiQlWVQhsLQi7UxhgkqX6iT3tP
	a9R2K2dVEYzvsAaSXmhMBHe3/ttndBRihmNWyrTEpZnLMKNXkQbEr3En3NDkD7R/xBRVWGIMVBsdo
	tBpmuYbyWJhjL6JHho/hefDSiJfzUWvMiMOMlpJ9nlhrD3MIod9KuOgKAVRY2N5cg78mA9yr+NIcH
	SnwfH5H+lFkCG+JrEiKoNL+yhlXeEJOQLEfhg6fyKe5uvoOY4F7lAxDv8zBeJmjWTokoDuOgdFgLo
	n2nFqXXDGEO3UF9hIkpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgkHT-00045K-7W; Thu, 04 Jun 2020 07:27:15 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgkHP-000444-3L
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 07:27:12 +0000
Received: by mail-io1-xd41.google.com with SMTP id r2so5238724ioo.4
 for <b43-dev@lists.infradead.org>; Thu, 04 Jun 2020 00:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=mGOxjTCdefrrnR0hBKEqLE+5+y5wUx6BcOT52JEiO/w=;
 b=ZS4bR5ylkA3qMyDfT9teREVYO+h3tibjnXyMJoJVX+G5mJ13iGtF5nRneHn2y4BXKk
 lbuA38DH8PUg7+NnR/cRrvaPdec+9VbV7j8bpXSIvpgF1JXXQjjbiwoR4VphfuiGExJt
 hLAd/KpHYlSGyG+SYPS4B4UqdSRoUABVvzmUhM84xdRr3+M7Ejw5zRXRHI9S7C4ge69w
 pHHApPVvaksuEjuQWJYGIZ58KDToZLKr1OfN8O/H8RmdIn0p+KhbEW4AU6+9mOsYqoG0
 i4HZ9VdbrqFEIkfk7P5p1r/q/z2DKw42yvXNm3xth1WgLu9BQ1Leo+hkaKoCcnQ7shWy
 D+2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=mGOxjTCdefrrnR0hBKEqLE+5+y5wUx6BcOT52JEiO/w=;
 b=LE+oshiKGqicBg0Gux/rohytNS+0UB96qUd9Hw+Uq4AncXYq0vLSxV/OHGsWj/VoJ6
 QHxsmexlF9LWoohlJ6KqOUwnllqJexLdBVQo9BAxu7vZJkiw/D0bahO+uOxJ9RFFMaDs
 9n7f3qHuun7wKEPD3HoUL0q8L9nMCFZ3x0ylfwtXotmxbzKKKhDdlpBK8UxU6iuQY5A2
 FFv7oHdVQjqixlUaCFZx1iTRb0XiG2+OfuPEeCtDiXY3jr0OsgTObC7qlf22aRHVKgSl
 S56oKBwFC+DXQeTu3L6wZpdBvSXhDozttaJJkY1e71g+vuPfs86mlGtlcoWJ/4ECJV3P
 W+dA==
X-Gm-Message-State: AOAM533WsyywAoCaDCVfno82sG77/yv5IsZVEfBYcLlKVEg4FnhNy4yg
 C8QIdhl96mDIfMx4sMh/781TVJ9Z6pDGulqFMPE=
X-Google-Smtp-Source: ABdhPJwrHY2BsggDHErpO1Iuf0ec8cSLwXn1wO03W9qrRj259eIfuSS5XQEsDKLZy/A8Pd7aPUbrd6qaIHCM8QmxBFo=
X-Received: by 2002:a5d:91cc:: with SMTP id k12mr2896278ior.135.1591255630008; 
 Thu, 04 Jun 2020 00:27:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200604033347.GA3962068@ubuntu-n2-xlarge-x86>
In-Reply-To: <20200604033347.GA3962068@ubuntu-n2-xlarge-x86>
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 4 Jun 2020 09:26:58 +0200
Message-ID: <CA+icZUU4Re5g3rRJ=WF3_KiCEc3CUmbH_PibTunuK_E1QskEjQ@mail.gmail.com>
Subject: Re: [PATCH 00/10] Remove uninitialized_var() macro
To: Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_002711_157252_8A03624D 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sedat.dilek[at]gmail.com]
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
Reply-To: sedat.dilek@gmail.com
Cc: Andy Whitcroft <apw@canonical.com>, Kees Cook <keescook@chromium.org>,
 linux-ide@vger.kernel.org, netdev@vger.kernel.org, x86@kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-block@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, b43-dev@lists.infradead.org,
 Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
 Joe Perches <joe@perches.com>, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-clk@vger.kernel.org, drbd-dev@lists.linbit.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

On Thu, Jun 4, 2020 at 5:33 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Wed, Jun 03, 2020 at 04:31:53PM -0700, Kees Cook wrote:
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
> > -Kees
> >
> > [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> > [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> > [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> > [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> >
> > Kees Cook (10):
> >   x86/mm/numa: Remove uninitialized_var() usage
> >   drbd: Remove uninitialized_var() usage
> >   b43: Remove uninitialized_var() usage
> >   rtlwifi: rtl8192cu: Remove uninitialized_var() usage
> >   ide: Remove uninitialized_var() usage
> >   clk: st: Remove uninitialized_var() usage
> >   spi: davinci: Remove uninitialized_var() usage
> >   checkpatch: Remove awareness of uninitialized_var() macro
> >   treewide: Remove uninitialized_var() usage
> >   compiler: Remove uninitialized_var() macro
>
> I applied all of these on top of cb8e59cc8720 and ran a variety of
> builds with clang for arm32, arm64, mips, powerpc, s390, and x86_64 [1]
> and only saw one warning pop up (which was about a variable being
> unused, commented on patch 9 about it). No warnings about uninitialized
> variables came up; clang's -Wuninitialized was not impacted by
> 78a5255ffb6a ("Stop the ad-hoc games with -Wno-maybe-initialized") so it
> should have caught anything egregious.
>
> [1]: https://github.com/nathanchance/llvm-kernel-testing
>
> For the series, consider it:
>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com> [build]
>

Hi Kees,

I tried with updated version (checkpatch) of your tree and see no
(new) warnings in my build-log.

Feel free to add my...

Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

Thanks.

Regards,
- Sedat -

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
