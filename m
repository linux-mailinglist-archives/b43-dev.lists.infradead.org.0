Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E33411EEBAF
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 22:16:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U+FClfZDPoQqKPz+5f/hxyjGOtotApYy/BjH3X1Bpyw=; b=KqltAJ4cXCzJHn
	6R8Aml1avrtIrIDzULj7AWu09mflTqEPW9WYvT+REzKsk/WyBezOLnPS9lFxx8e+fCzXAW76MBX0L
	EoN0oWCOPWMVYWJ3/l7ZmaySQe9bFzwpL2nQDwpQ1KbflYsFG13wBljVXCsS5AiX8ERHOOvNhngvP
	C5ESlKRDEj0SKFaUujaKl5WdXzC9XhXNRE6Iu/a4TlRCSjq6hPInVWXUqY9yljjIgBcefEaHblOKC
	WesSm+FQ3hFq9tIy1nvPKVPkJAZDaNgVOfEJv3loCWFSMZ2+Y48awEXOuWVY+Z/pyE4HwAk/4p8we
	ww0IZj/Fx7NC8XLl3v8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgwHo-0004V7-RY; Thu, 04 Jun 2020 20:16:24 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgwHl-0004Um-8g
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 20:16:22 +0000
Received: by mail-pg1-x542.google.com with SMTP id n23so3988589pgb.12
 for <b43-dev@lists.infradead.org>; Thu, 04 Jun 2020 13:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pCXmYsl76J0CAlxoPdk8mPZO/WOJwZ5J1IK/xTYSvtY=;
 b=Ul9IqQ41ZiXh1TA37NXxQoP1MYWZkk1ImeHfZoGz6a6IPTQKCTgkI4vMbYvxIt8wpE
 ElHA9RWwTvFCaySEtclTRP/dyePJtOWdEk29ahiOH2gLk0aIx7jxMqS8sHpI0dAD9/eD
 v2pQeh6hmu6BRKkCyhh5mYDGk/czBtEllytZVgQeNFhavoEfrbFwLLVfzZ/2XW9eqAuC
 T6PPxSNZdkIUyyCpj3L+bHh3A58HE+YTCCyomOaAjuPFYAu7WNLA0VPJGgc8Oy3KvimW
 enSRBgfNysV+6XPIzSx1E3hPpfiQZPkCEErtaeB8Ewgc+PLJOHksAeBzo6J1PIYEAlTL
 B91g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pCXmYsl76J0CAlxoPdk8mPZO/WOJwZ5J1IK/xTYSvtY=;
 b=a6IwgxrpcS4VhmiqOM1Npsx9blQLzYzvZtgB1FO+5QjI9w1+eeE+0HAVEnrltEHwNa
 61lwPe8Qg8no0R5leG0J1xx+4NiPEbL1pjKME3TaTHOYe1dgyGiIWPGUFvxFlbdsw1mp
 XG/GvKRqC9JBkI68yaMP+wspFB2L1UGjSfHkurY3ZkTrig/Khu/Dlu3hQLzfwXZ2gZFr
 Pbhrf+Y5MEk5va7gEv364eui95SqcE8BAH6zcayXE+3cgkvH9828YNlVkI3zJO9obpbV
 WZUzktzrkNhagCOPzuaYhjD1ZPnXhnh1vVGv0ogMUThqRA7I6zlw6uNhydhLEkSuLXDA
 LosQ==
X-Gm-Message-State: AOAM531VgkFubZ4ldaeG+Wkp/JRRjk21RcuP45BIvlINYXTH8TaCn+07
 +NgtmvqhInJjfEmtpe3U5cvHcg7ita3YxFKWHe2VYw==
X-Google-Smtp-Source: ABdhPJye6FZH70P5vXHcitY46EI4rxFnZqJif4KZJI8zWDppq3cq3MmDJfiH17IwjHHvUarffuS8hk7FOMV62ymzGuM=
X-Received: by 2002:a63:4f09:: with SMTP id d9mr5970154pgb.10.1591301780211;
 Thu, 04 Jun 2020 13:16:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-5-keescook@chromium.org>
In-Reply-To: <20200603233203.1695403-5-keescook@chromium.org>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 4 Jun 2020 13:16:08 -0700
Message-ID: <CAKwvOdnd30bcqoNXF1ugadU=KbW3aXu07+T-891amO2_b7kQdg@mail.gmail.com>
Subject: Re: [PATCH 04/10] rtlwifi: rtl8192cu: Remove uninitialized_var() usage
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_131621_325042_5136E97F 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
> and avoid sending garbage by returning.
>
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
>
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Fixes: dc0313f46664 ("rtlwifi: rtl8192cu: Add routine hw")

> ---
>  drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c b/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c
> index f070f25bb735..5b071b70bc08 100644
> --- a/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c
> +++ b/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c
> @@ -592,7 +592,7 @@ static void _rtl92cu_init_chipn_one_out_ep_priority(struct ieee80211_hw *hw,
>                                                     bool wmm_enable,
>                                                     u8 queue_sel)
>  {
> -       u16 uninitialized_var(value);
> +       u16 value;
>
>         switch (queue_sel) {
>         case TX_SELE_HQ:
> @@ -606,7 +606,7 @@ static void _rtl92cu_init_chipn_one_out_ep_priority(struct ieee80211_hw *hw,
>                 break;
>         default:
>                 WARN_ON(1); /* Shall not reach here! */
> -               break;
> +               return;
>         }
>         _rtl92c_init_chipn_reg_priority(hw, value, value, value, value,
>                                         value, value);

Whew! Nothing like passing the same value 6 times! (Other callers do
use distinct values though, just curious seeing this instance.)

-- 
Thanks,
~Nick Desaulniers

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
