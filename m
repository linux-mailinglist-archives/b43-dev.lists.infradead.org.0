Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F12A1EEB8C
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 22:09:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cxxgif4ln0jlYtN8GLkxyjBVOmD1DEPqwq2jMahnAPI=; b=fyhvW0920ED1zo
	qyeqIJ3ebsGJpyMInPRaei9Q8oZ4pZmiAfAt3UG4ui/6tY6/BdZeSc2+7PYRxiGKAT2Cc2R1qFGWE
	NeX7GZlb4JJFXwRLNhSg/mV0uIA5zrroU7/KEGoZPpqV1bY4oL7UlP85AxDWW1Gc9U/ymMhtJKEfG
	sBZU419kn5cAzqC/TBOSXkyBTtZTXai30mjnuuCCO578c5UpBSHT83reI0x3yFpL+I451liKjP50O
	H7JC9jVHelfyW+pkgHwumPKs3jDT1keLuG90+eY6CJ8MDDrw0l+sRoJp6rfEH3pPBXJpV19VdIYR1
	mCP1S6Qd+YscRFnJYugg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgwAf-000754-Lk; Thu, 04 Jun 2020 20:09:01 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgwAb-00071P-Q9
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 20:08:59 +0000
Received: by mail-pg1-x541.google.com with SMTP id w20so4004808pga.6
 for <b43-dev@lists.infradead.org>; Thu, 04 Jun 2020 13:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AFF1riO+rvi+JtGxWF5qzVLPXHH0Nzh8aZcDxBuji4s=;
 b=M0mkpsLd7B3310QKl3SLGg22ik2mXjNx5FY1vzJopMffJnCw8jRcmo9fV9LTIHikFp
 RUv7WnBJ6K5VaUslDx62awUaItJ+YKUKSU3/LS3bQT0QPBOUmH8h7pgLYyxlBLfTzZPU
 CwkTICvo+M0GUh+egz/pFlCv8tR424B81CNZ9aQO8/k4dMiV20ohQx7N7YX7tjfxxqqp
 JKfbJIsE+MYGNYLFN8gpzmr0Avp6j5x4qED0RF7A5OiE4WLh5w8/DvLwZz8GAkmSlO6c
 QbXytbk3xKeeMX1S4Xa0zICtEJbZ60RM6KlvqWwsKz3NAMy2eeUR9b8nqFf/OpAnG9F0
 SQHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AFF1riO+rvi+JtGxWF5qzVLPXHH0Nzh8aZcDxBuji4s=;
 b=ikR1OoQbSfuUa+3et1BLK66GBJfosoUUMdKuJL4Zbfu3KRfgjU7gRtUYvP64O9mUmw
 XpTWHH/lirCI1IKh8eej1FuTL/1dYdtd5i9amnZGm+GdSXqGKr1c0sTTS22IVzziOaJ1
 Ga/ZBwTnPHnKcE6zJDBx8wn7V97aZC+QFrjzcOF/dtedv7zmUgp4vT1/xaq1EwbVzTn1
 HuVsfx0WYjY17C5CTEHaQckdNw4GkVRhLjX+i5/4XU6j+RgdCWpHHHlpxNhS70A/Q74H
 PTgP/U4pYfALIut9NFCCvV6R9KciEg0Eh8lRHVS7wGhAxQYqh69diKlmZHtRRsmc6aCf
 APog==
X-Gm-Message-State: AOAM5302xo1nHoUacAa/29CjzqYEUlbQAhhDiqhW53JFVnNTQQOHDU22
 1f3gQZNKvXFHFGzZmDVnZ4ZF/JxCDLG5iNoxDIK0yA==
X-Google-Smtp-Source: ABdhPJxLMcvCCgSkDUjAgCX71OWizViN7uenmXgd4TZP4zed6Dsn/5qWQdcJBcIITrWPyVLL/7sbTfhjLEhVY3eJVkA=
X-Received: by 2002:a63:5644:: with SMTP id g4mr5811569pgm.381.1591301336363; 
 Thu, 04 Jun 2020 13:08:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-4-keescook@chromium.org>
In-Reply-To: <20200603233203.1695403-4-keescook@chromium.org>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 4 Jun 2020 13:08:44 -0700
Message-ID: <CAKwvOdnNuFySqAMk7s_cXqFM=dPX4JfvqNVLCuj90Gn4tzciAw@mail.gmail.com>
Subject: Re: [PATCH 03/10] b43: Remove uninitialized_var() usage
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_130857_903475_F7DF31FD 
X-CRM114-Status: GOOD (  24.46  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

On Wed, Jun 3, 2020 at 4:32 PM Kees Cook <keescook@chromium.org> wrote:
>
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings (e.g.
> "unused variable"). If the compiler thinks it is uninitialized, either
> simply initialize the variable or make compiler changes. As a precursor
> to removing[2] this[3] macro[4], just initialize this variable to NULL,
> and make the (unreachable!) code do a conditional test.
>
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/net/wireless/broadcom/b43/phy_n.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
> index d3c001fa8eb4..88cdcea10d61 100644
> --- a/drivers/net/wireless/broadcom/b43/phy_n.c
> +++ b/drivers/net/wireless/broadcom/b43/phy_n.c
> @@ -4222,7 +4222,7 @@ static void b43_nphy_tx_gain_table_upload(struct b43_wldev *dev)

The TODOs and `#if 0` in this function are concerning.  It looks like
`rf_pwr_offset_table` is only used when `phy->rev` is >=7 && < 19.

Further, the loop has a case for `phy->rev >= 19` but we would have
returned earlier if that was the case.

>         u32 rfpwr_offset;
>         u8 pga_gain, pad_gain;
>         int i;
> -       const s16 *uninitialized_var(rf_pwr_offset_table);
> +       const s16 *rf_pwr_offset_table = NULL;
>
>         table = b43_nphy_get_tx_gain_table(dev);
>         if (!table)
> @@ -4256,9 +4256,13 @@ static void b43_nphy_tx_gain_table_upload(struct b43_wldev *dev)
>                         pga_gain = (table[i] >> 24) & 0xf;
>                         pad_gain = (table[i] >> 19) & 0x1f;
>                         if (b43_current_band(dev->wl) == NL80211_BAND_2GHZ)
> -                               rfpwr_offset = rf_pwr_offset_table[pad_gain];
> +                               rfpwr_offset = rf_pwr_offset_table
> +                                               ? rf_pwr_offset_table[pad_gain]
> +                                               : 0;
>                         else
> -                               rfpwr_offset = rf_pwr_offset_table[pga_gain];
> +                               rfpwr_offset = rf_pwr_offset_table
> +                                               ? rf_pwr_offset_table[pga_gain]
> +                                               : 0;


The code is trying to check `phy->rev >= 7 && phy->rev < 19` once
before the loop, then set `rf_pwr_offset_table`, so having another
conditional on `rf_pwr_offset_table` in the loop is unnecessary. I'm
ok with initializing it to `NULL`, but I'm not sure the conditional
check is necessary.  Do you get a compiler warning otherwise?

>                 } else {
>                         pga_gain = (table[i] >> 24) & 0xF;
>                         if (b43_current_band(dev->wl) == NL80211_BAND_2GHZ)
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200603233203.1695403-4-keescook%40chromium.org.



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
