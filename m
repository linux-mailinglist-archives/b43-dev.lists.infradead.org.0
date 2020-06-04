Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0724B1EE38D
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 13:41:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dlgd0dAsG/XXZJArp2A1wWW16cFVIw4gzZzqoJLk5YQ=; b=gFwLS+s6b8kFKZ
	MILibwXSbm7fzUQlM3TqyoW/xu8c3PmFp00hEypguGZqD2K9/t5JwVty8G4JPCGdY9ZmJwB/FTG1O
	CR5Rp+g/JkkVlL0E1+fi0b2qHwadbrt99khCWmy+7gmbJc0/jPF+VdJjL4oOiVsGlk8fOEvUaAAbq
	MGoYmbqXD8wo+cKw3qoSICsPiKnaQigYOB0bi0oOKu+ulUoyVWdKKaaA7eg/EglH3ulfL075KMVEN
	gFH6JhfEHHiJKZ4t1HnJqYTnnfcuCAG++qRa4Ox/I4Wp9rRPzPg2S9Z0NQ4eD2z+CdSK1dZC67Dr1
	EwIkb8hjbjtj6pQgpLaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgoFR-0006oY-17; Thu, 04 Jun 2020 11:41:25 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgoFM-0006nn-RJ
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 11:41:22 +0000
Received: by mail-lj1-x242.google.com with SMTP id s1so6873837ljo.0
 for <b43-dev@lists.infradead.org>; Thu, 04 Jun 2020 04:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=R0o4OOvzJQjARhQ6/49UmmkOyadJDn2uKBj3nrOAqQo=;
 b=uOadSoLGhaseNrsSLG0CEfcx1B7ZyXtznA1jW/71TjOkJaQ3v7NhDn32mtbkkPd0Q+
 1UDuNRM26ag+jysBJHImSQ2kyqAxp6Pbe8OVsuK3/X6E6BLOFRucdGoxisc/QkPMQfn9
 DSP221R/DYOdjftqL2dmeYiibVPWWApyDr996ybowslc4DnYfcHTAWJ50hppvye4onSW
 Wki6t+mbrF7ejKkqVkq6hFcUNg4F2aeKBWSYX0y86zDfF0gdQIlIFvOHHUjNdXP4a7ct
 pto6mvk/UvVFDpzwyBErLblgdgk4M9JUrlkGy+vs2gLKfjfB2m/WaWMIrcXH9QqP6urW
 FvAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R0o4OOvzJQjARhQ6/49UmmkOyadJDn2uKBj3nrOAqQo=;
 b=GVdFvUgxy1e013WT3BjmNhmeKYmqA88r8ywv7AlTxB2fRbjvSv5QSnm0w2MSmGIwq/
 f+Hj31ur1pcP65k6uEYWMRcINFWF7Tbdslraj/dGxwkoIYmz2HOr85iu9/eWLLfMr0W8
 SZ41hiflOCCUv64b7/liGMgjHf+FmD+jr4ua1MCxdR5LecTOWnyVSNgiqrJwbYLHI1rP
 gfZ0khJMoahOqx8n6vmMBN6EljmAiLykFni9guXDhnmH1GacvYsloGZG0sa44GvC1oIT
 +vcmvQ1CJRHgwT0k32HBtZuKLD7/ro8raDpXRZeLVDnzRRrjzfvhl/KT9JSVAzw+Xqju
 rg3w==
X-Gm-Message-State: AOAM53287yk6FijDaiz9OOuMWtnQP0Yk7sDDVB7QMMww57QADj5C8USr
 qcbUGT/KVUHSwuE3cnpg9PTvG4RpUt3bcSC87u8=
X-Google-Smtp-Source: ABdhPJxccA+5mnrfVxyneHXrV0mVelE29mG9oDomdWWW1fU5ho8qKcvQdw+EQpyMOql3tRqQBW/MgmXYvs677/gUgQE=
X-Received: by 2002:a05:651c:11c7:: with SMTP id
 z7mr2085283ljo.29.1591270878905; 
 Thu, 04 Jun 2020 04:41:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-2-keescook@chromium.org>
 <874krr8dps.fsf@nanos.tec.linutronix.de>
In-Reply-To: <874krr8dps.fsf@nanos.tec.linutronix.de>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 4 Jun 2020 13:41:07 +0200
Message-ID: <CANiq72kLqvriYmMkdD3yU+xJwbn-68Eiu-fTNtC+Lb+1ZRM75g@mail.gmail.com>
Subject: Re: [PATCH 01/10] x86/mm/numa: Remove uninitialized_var() usage
To: Thomas Gleixner <tglx@linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_044120_900531_B0AE4541 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [miguel.ojeda.sandonis[at]gmail.com]
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
Cc: Kees Cook <keescook@chromium.org>, linux-ide@vger.kernel.org,
 Network Development <netdev@vger.kernel.org>,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-spi@vger.kernel.org,
 linux-block@vger.kernel.org, Andy Whitcroft <apw@canonical.com>,
 Linux-MM <linux-mm@kvack.org>, Alexander Potapenko <glider@google.com>,
 b43-dev@lists.infradead.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Joe Perches <joe@perches.com>, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-clk@vger.kernel.org, drbd-dev@lists.linbit.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

On Thu, Jun 4, 2020 at 9:58 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> but if we ever lose the 1 then the above will silently compile the code
> within the IS_ENABLED() section out.

Yeah, I believe `IS_ENABLED()` is only meant for Kconfig symbols, not
macro defs in general. A better option would be `__is_defined()` which
works for defined-to-nothing too.

Cheers,
Miguel

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
