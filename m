Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 432D91EEBC0
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 22:18:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gmBx31h2INPJ5VJnBoDgt/yirC32C0/lcYuXdu7QN6I=; b=PyZADrvErolXCk
	Br0H/2oeuVfLIWxLHz1rkrcA1cNDKSbrlFDj+Yb9B3MAhcED/nWB1D8RXDkubb+dFxmos9gr/vNCG
	tbcwb2ffuYblum14gLaXWK6MzQqKrVTgjinKofnO80xBUGpTwzmqFv3sHvglhCKmYn0BCu3teWRdK
	MM5+qcDH1habh5cLM0fDps9ipevpIK9X8hDxD5eJsXtutWHGMEy5jfxLznGyXdpeZ5j93ySLGqMaZ
	aG6Vqc9PPviSt4MXhc/u/XnuNOVb1E8TV3ix2pr2GLdElPHKXMwwHD0aEXkFg2gEcTTq5B/N8lDcT
	60gD7/8QUOZiCcZB/y1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgwK0-0004jk-91; Thu, 04 Jun 2020 20:18:40 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgwJw-0004j0-0K
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 20:18:37 +0000
Received: by mail-pf1-x441.google.com with SMTP id 64so3777105pfg.8
 for <b43-dev@lists.infradead.org>; Thu, 04 Jun 2020 13:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=KSgduwKhAGu1Me5hdrsNlT/LSTVts5IMrrdQbnnmgtM=;
 b=iwsRqxQEY+LpPM+s+DR5Kt1prnKy4GHGxqj/QUqqkkqSMBCDJe1CHdT/yKZJkiBDXL
 Y6szw+en5NZ6khTYpwS0FGviJsYX/r26zXRpTi2oURHUxJskaDdTNYF20YKqgU+50wUG
 aJZ2WjX85SJKBXLpicthf/oXnlRh2W1BmzGAE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KSgduwKhAGu1Me5hdrsNlT/LSTVts5IMrrdQbnnmgtM=;
 b=C4ZiwygsfFhrG3jE4v/K1JiOs7bbzLVXvdDAAsbugCV6Wbv9F6WXJ1ljvs8fzFMFzk
 +yoqKVULtWM01nWGHPV8NArAPXq7ZvRvZAsPQO9skCsh8peuDQbUFlmhnIW6tzda6Jj+
 /xE4Hdqqk4fYVww883au+Xuh6/Sp7R//7TaF2CZXbPROBI8FkLThd5hK/wwODtqEbGxH
 k4A/W40N1pXknGyVXLc5VXkWviJP3ms1GhqC4EZTaPcURuLqk98poZQVq7zScWd1uhp9
 jgSR/DJRp/OwXCK+VPHbVTNlZbsapFBdRUbn3iR24um1LiMTsPiHQDOuq1bK4+MCVuCD
 sAJw==
X-Gm-Message-State: AOAM532MYMlj730ETtIu7Lhwh2836nHqdKviFDcIFumVwQu9TvWPqebT
 dEBQVsetjxCraECSdNIkKlLVVw==
X-Google-Smtp-Source: ABdhPJy6jmo6NLjATFT9PEAZE69aJp2ake2/5E+UKA7LNV6vmFPBoWj+KBik/aUM7ISRTcCYuBBaWw==
X-Received: by 2002:a63:c58:: with SMTP id 24mr6232804pgm.246.1591301913875;
 Thu, 04 Jun 2020 13:18:33 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id r5sm5581320pji.20.2020.06.04.13.18.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 13:18:33 -0700 (PDT)
Date: Thu, 4 Jun 2020 13:18:31 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH 03/10] b43: Remove uninitialized_var() usage
Message-ID: <202006041316.A15D952@keescook>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-4-keescook@chromium.org>
 <CAKwvOdnNuFySqAMk7s_cXqFM=dPX4JfvqNVLCuj90Gn4tzciAw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOdnNuFySqAMk7s_cXqFM=dPX4JfvqNVLCuj90Gn4tzciAw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_131836_069686_CECCDC71 
X-CRM114-Status: GOOD (  23.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

On Thu, Jun 04, 2020 at 01:08:44PM -0700, Nick Desaulniers wrote:
> On Wed, Jun 3, 2020 at 4:32 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > (or can in the future), and suppresses unrelated compiler warnings (e.g.
> > "unused variable"). If the compiler thinks it is uninitialized, either
> > simply initialize the variable or make compiler changes. As a precursor
> > to removing[2] this[3] macro[4], just initialize this variable to NULL,
> > and make the (unreachable!) code do a conditional test.
> >
> > [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> > [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> > [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> > [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> >
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  drivers/net/wireless/broadcom/b43/phy_n.c | 10 +++++++---
> >  1 file changed, 7 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
> > index d3c001fa8eb4..88cdcea10d61 100644
> > --- a/drivers/net/wireless/broadcom/b43/phy_n.c
> > +++ b/drivers/net/wireless/broadcom/b43/phy_n.c
> > @@ -4222,7 +4222,7 @@ static void b43_nphy_tx_gain_table_upload(struct b43_wldev *dev)
> 
> The TODOs and `#if 0` in this function are concerning.  It looks like
> `rf_pwr_offset_table` is only used when `phy->rev` is >=7 && < 19.
> 
> Further, the loop has a case for `phy->rev >= 19` but we would have
> returned earlier if that was the case.

Yeah, that's why I put the "(unreachable!)" note in the commit log. ;)

> 
> >         u32 rfpwr_offset;
> >         u8 pga_gain, pad_gain;
> >         int i;
> > -       const s16 *uninitialized_var(rf_pwr_offset_table);
> > +       const s16 *rf_pwr_offset_table = NULL;
> >
> >         table = b43_nphy_get_tx_gain_table(dev);
> >         if (!table)
> > @@ -4256,9 +4256,13 @@ static void b43_nphy_tx_gain_table_upload(struct b43_wldev *dev)
> >                         pga_gain = (table[i] >> 24) & 0xf;
> >                         pad_gain = (table[i] >> 19) & 0x1f;
> >                         if (b43_current_band(dev->wl) == NL80211_BAND_2GHZ)
> > -                               rfpwr_offset = rf_pwr_offset_table[pad_gain];
> > +                               rfpwr_offset = rf_pwr_offset_table
> > +                                               ? rf_pwr_offset_table[pad_gain]
> > +                                               : 0;
> >                         else
> > -                               rfpwr_offset = rf_pwr_offset_table[pga_gain];
> > +                               rfpwr_offset = rf_pwr_offset_table
> > +                                               ? rf_pwr_offset_table[pga_gain]
> > +                                               : 0;
> 
> 
> The code is trying to check `phy->rev >= 7 && phy->rev < 19` once
> before the loop, then set `rf_pwr_offset_table`, so having another
> conditional on `rf_pwr_offset_table` in the loop is unnecessary. I'm
> ok with initializing it to `NULL`, but I'm not sure the conditional
> check is necessary.  Do you get a compiler warning otherwise?

I mean, sort of the best thing to do is just remove nearly everything
here since it's actually unreachable. But it is commented as "when
supported ..." etc, so I figured I'd leave it. As part of that I didn't
want to leave any chance of a NULL deref, so I added the explicit tests
just for robustness.

*shrug*

-Kees

-- 
Kees Cook

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
