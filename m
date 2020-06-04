Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A65F61EEBE5
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 22:25:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8UOJ99jzcKdX8WkaGTJyZrkoDZMZTKLPRS/giDCzTBU=; b=f9SoGiA6YKLSkk
	eKTradzBJ5FYfIPxtc55EJmJ6FmGPUMaIAvpr7v9CfgFp1poQXK8azG6ZYXdnVB1UlqdU4PSEWzMb
	6Yg8UTnBXBOyiTIY4ZDD+LWIvvke2Qp3kb4BW2+10hspfZsM+toCSsSZYcgKQ2PFFI2crdxvfTzZc
	FVdiTLxOPYU2Qp7hSISf+92QK7LDqPw71gNbLqj2XjczKAzEGfe06N1a59klu9UmUiinbQEG0lv3E
	7VNR7GjJUvEqBUM7aKPnoJ6ogwToHWwBQbtYbkGGhmDuP21JpVoA5G6EPa0qSE9KjFjWZcHx+uds8
	TNsyyEIWqB4VIfEz4wNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgwQf-00029F-Nu; Thu, 04 Jun 2020 20:25:33 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgwQb-00028L-AR
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 20:25:30 +0000
Received: by mail-pj1-x1044.google.com with SMTP id jz3so1619217pjb.0
 for <b43-dev@lists.infradead.org>; Thu, 04 Jun 2020 13:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TblIMkzhKEVNZyPa1dQf8kFQ+MgYlpgsesY6pOK1xME=;
 b=eTUIYqIrq5sxbgWQO/3JauOnTYpVr1lxYINDt5nKOAMkJOKF9ufyGFqb5XSmsRi3m+
 Uksx9+kJJ0xBVvvMTZtWdGvFYckH9URWghdJ/VSzZBwwBmizmaE949JntUM6qTfFIrip
 3zzyVfVtH7B2Lzj4WQ8kAWj65+Txwm/2hs5XFlhCKdRU1uedTRsD04P49ZgSRY5QBLTc
 CQBCbVHZuVCB29pP2Co0mZAOf0TgkJUljtb0VB8CHI8VhuigYp30PE+r/D7MHanlVYxK
 BKS8ooZdHaU0PWi8nTHb08bOMRG7dMr/qLVaTlH87DKKqIpufZxi7ZRUHWNmW4PpK4km
 2vlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TblIMkzhKEVNZyPa1dQf8kFQ+MgYlpgsesY6pOK1xME=;
 b=PH4qKDo3GD6pAvbaI+kaqUt3I0ukabXzk+/AV0bJtdQRNlDVTe6vQZkJsbEdnIc8o3
 C30b4XZmGBA2BzoF/F2TlUjQgtHk8JmBQUoQxswG0L37Z7AGAS4G/JMRhB2GBgYpmQcF
 CWG3hYkC9OsERJLGjdWDfasy61BIt52qHQKjstNBi3oKl0BqwPPvqxBSG+0j6FeORMWx
 GKXseqFq/3TZjWKt/fhefDAG12Z3s8TNWrpnQ/BiwjPlrWfjJlvhcKfrd8MZVEFJgqHK
 UoUn2jdT3Dm/dj4xFDHF1GmmtbsCQ36An9wh1Nn6hu+nOUNfuoi3AFgDlK4MLliOSD2F
 NF5w==
X-Gm-Message-State: AOAM5332Nt9QlvOT4lc4CCF5VoedjqAhCgVkPukz2kuwPTiv2nM1Qn7d
 6wXEzbeYURfNzzbARjAtdAyOI8ar/neYKpKt6Ob+/Q==
X-Google-Smtp-Source: ABdhPJzjhN/4pCp12TIV+9JXZmAnmqzfEHd9/r8jgURCikDTNzP/FuiRKg13zAi0ZiROLKM3I1SNYAlTdBzPgSsKmW0=
X-Received: by 2002:a17:902:341:: with SMTP id
 59mr6129425pld.119.1591302328252; 
 Thu, 04 Jun 2020 13:25:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-4-keescook@chromium.org>
 <CAKwvOdnNuFySqAMk7s_cXqFM=dPX4JfvqNVLCuj90Gn4tzciAw@mail.gmail.com>
 <202006041316.A15D952@keescook>
In-Reply-To: <202006041316.A15D952@keescook>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 4 Jun 2020 13:25:16 -0700
Message-ID: <CAKwvOdk9e19MqJNhGYV5mJisLOcjK+ba2sYzLgf7cvNerqNuwA@mail.gmail.com>
Subject: Re: [PATCH 03/10] b43: Remove uninitialized_var() usage
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_132529_375396_79E477E7 
X-CRM114-Status: GOOD (  26.53  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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

On Thu, Jun 4, 2020 at 1:18 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Jun 04, 2020 at 01:08:44PM -0700, Nick Desaulniers wrote:
> > On Wed, Jun 3, 2020 at 4:32 PM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > > (or can in the future), and suppresses unrelated compiler warnings (e.g.
> > > "unused variable"). If the compiler thinks it is uninitialized, either
> > > simply initialize the variable or make compiler changes. As a precursor
> > > to removing[2] this[3] macro[4], just initialize this variable to NULL,
> > > and make the (unreachable!) code do a conditional test.
> > >
> > > [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> > > [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> > > [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> > > [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> > >
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > ---
> > >  drivers/net/wireless/broadcom/b43/phy_n.c | 10 +++++++---
> > >  1 file changed, 7 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
> > > index d3c001fa8eb4..88cdcea10d61 100644
> > > --- a/drivers/net/wireless/broadcom/b43/phy_n.c
> > > +++ b/drivers/net/wireless/broadcom/b43/phy_n.c
> > > @@ -4222,7 +4222,7 @@ static void b43_nphy_tx_gain_table_upload(struct b43_wldev *dev)
> >
> > The TODOs and `#if 0` in this function are concerning.  It looks like
> > `rf_pwr_offset_table` is only used when `phy->rev` is >=7 && < 19.
> >
> > Further, the loop has a case for `phy->rev >= 19` but we would have
> > returned earlier if that was the case.

oh, and there's an early return for `phy->rev < 3` I just noticed.

>
> Yeah, that's why I put the "(unreachable!)" note in the commit log. ;)

I don't think that note is correct.

>
> >
> > >         u32 rfpwr_offset;
> > >         u8 pga_gain, pad_gain;
> > >         int i;
> > > -       const s16 *uninitialized_var(rf_pwr_offset_table);
> > > +       const s16 *rf_pwr_offset_table = NULL;
> > >
> > >         table = b43_nphy_get_tx_gain_table(dev);
> > >         if (!table)
> > > @@ -4256,9 +4256,13 @@ static void b43_nphy_tx_gain_table_upload(struct b43_wldev *dev)
> > >                         pga_gain = (table[i] >> 24) & 0xf;
> > >                         pad_gain = (table[i] >> 19) & 0x1f;
> > >                         if (b43_current_band(dev->wl) == NL80211_BAND_2GHZ)
> > > -                               rfpwr_offset = rf_pwr_offset_table[pad_gain];
> > > +                               rfpwr_offset = rf_pwr_offset_table
> > > +                                               ? rf_pwr_offset_table[pad_gain]
> > > +                                               : 0;
> > >                         else
> > > -                               rfpwr_offset = rf_pwr_offset_table[pga_gain];
> > > +                               rfpwr_offset = rf_pwr_offset_table
> > > +                                               ? rf_pwr_offset_table[pga_gain]
> > > +                                               : 0;
> >
> >
> > The code is trying to check `phy->rev >= 7 && phy->rev < 19` once
> > before the loop, then set `rf_pwr_offset_table`, so having another
> > conditional on `rf_pwr_offset_table` in the loop is unnecessary. I'm
> > ok with initializing it to `NULL`, but I'm not sure the conditional
> > check is necessary.  Do you get a compiler warning otherwise?
>
> I mean, sort of the best thing to do is just remove nearly everything
> here since it's actually unreachable. But it is commented as "when

This code is reachable. Consider `phy->rev >= 7 && phy->rev < 19`.  If
`rf_pwr_offset_table` was NULL, it would have returned early on L4246,
so the checks added in this patch are unnecessary.  Forgive me if
there's some other control flow I'm not considering.

> supported ..." etc, so I figured I'd leave it. As part of that I didn't
> want to leave any chance of a NULL deref, so I added the explicit tests
> just for robustness.
>
> *shrug*
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
