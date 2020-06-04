Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D19A61EE713
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 16:56:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+MK6KSXmsLyVR5vuFgwoFfqMJUCKYo2pHO916uFk4J8=; b=JJneGeKrj7hpW8
	Uzw+SjulW2XUqMivMSQzmykkejGTCxRJrZvlXgqamxb3kXfklWR3QtB2VGm7SLWTruxwDjo1gBUG8
	DOFe6xagrtHukVAkS1Q9Pt6HOAVe/Kwj75aVTAdMhxqKjVQ1KKYmsq5QsDIApSeBPAx6p1o5CJ7/M
	fhI0E6Uy/7abqG/9g6+RwYEoDUz+bZizh3esGgf6dPkLDHYLLkQmvUWnvqW+QvGo2I4nE3Uk2LrpI
	U5GGM9qqnqHvEJnSXqLumffOTYMuYRvA7VaOLaYPHr5aUFytAnhYiI8C+n05Em8L9xPmJ6LJg/7vU
	O6kiFzNLtusobjZEBVfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgrIV-0001Jy-5C; Thu, 04 Jun 2020 14:56:47 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgrIR-0001JT-4G
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 14:56:45 +0000
Received: by mail-pg1-x541.google.com with SMTP id n23so3534663pgb.12
 for <b43-dev@lists.infradead.org>; Thu, 04 Jun 2020 07:56:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=B0VRWP1UqHBzaSQ/0VAH8ROzdZmpnLpk8DQEvJRbm6g=;
 b=S90pbrXYQvAWuisADwIVqFJze1Gn3O7VI3b7ci34HlxsFIiSm55Agl3HtXdIfOtlj1
 kFuWBlQoujZfnla0pnjl4P9hL71UlfgA047f6CDtcKWtqp78Vi3ktMNpDFcArsvn0Aa4
 7gBNWjkF+L6ja8DfU5D6aFyeEosVd+IcgieMM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=B0VRWP1UqHBzaSQ/0VAH8ROzdZmpnLpk8DQEvJRbm6g=;
 b=gV8B4AZ0Y4O9EbetKHGpNMxzKMa+Kymw4/bCM92kJe54umuMHgORiLOhS1umbpkYcv
 lfqqkZhm2AuS0ZFzuyAJ3eUUqyqWMTsWcQAM9o+tGYok7jrwbSbzNgxEcTD56P4lMHuq
 sOffxKCLA3Zf65UYA1u7+m2OZj3xp2/BltnlEoLXJII4p7udHkGN3ngan3dbMGD4cWli
 7A76CZ1Uc5HC+L2IJTDYLL/GG50UV21aQQiwhLSdvX968x+wQFzcVKpqOlIKM0zB7zv1
 l8/YB6Kl2q/21U9gIaao71oHLmYsswvzLdb/XvhkXRmb1E4Oc1nzpp26dBG9NjCK4ImH
 6sYQ==
X-Gm-Message-State: AOAM5307aw2PQaW5F+J1uc/uEOB+1RRsaBX8P7o//YwEXDLUTIqmtiwy
 0sY5MpoojE/qMb0IvY7IGML9zQ==
X-Google-Smtp-Source: ABdhPJwHMeBMoXoJ1oKRiY6CcT/MXQQ3/6BvMK96dAo5+DFFc+3InZktMIE/4pit2W9doT6CJHJfvw==
X-Received: by 2002:a63:de18:: with SMTP id f24mr4660948pgg.415.1591282602661; 
 Thu, 04 Jun 2020 07:56:42 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id y10sm4390985pgi.54.2020.06.04.07.56.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 07:56:41 -0700 (PDT)
Date: Thu, 4 Jun 2020 07:56:40 -0700
From: Kees Cook <keescook@chromium.org>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Subject: Re: [PATCH 01/10] x86/mm/numa: Remove uninitialized_var() usage
Message-ID: <202006040745.525ECD1@keescook>
References: <20200603233203.1695403-2-keescook@chromium.org>
 <874krr8dps.fsf@nanos.tec.linutronix.de>
 <CANiq72kLqvriYmMkdD3yU+xJwbn-68Eiu-fTNtC+Lb+1ZRM75g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANiq72kLqvriYmMkdD3yU+xJwbn-68Eiu-fTNtC+Lb+1ZRM75g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_075643_185715_C25FCBA2 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-ide@vger.kernel.org, Network Development <netdev@vger.kernel.org>,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-spi@vger.kernel.org,
 linux-block@vger.kernel.org, Andy Whitcroft <apw@canonical.com>,
 Linux-MM <linux-mm@kvack.org>, Alexander Potapenko <glider@google.com>,
 b43-dev@lists.infradead.org, Joe Perches <joe@perches.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-clk@vger.kernel.org,
 drbd-dev@lists.linbit.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 01:41:07PM +0200, Miguel Ojeda wrote:
> On Thu, Jun 4, 2020 at 9:58 AM Thomas Gleixner <tglx@linutronix.de> wrote:
> >
> > but if we ever lose the 1 then the above will silently compile the code
> > within the IS_ENABLED() section out.
> 
> Yeah, I believe `IS_ENABLED()` is only meant for Kconfig symbols, not
> macro defs in general. A better option would be `__is_defined()` which
> works for defined-to-nothing too.

Er? That's not what it looked like to me:

#define IS_BUILTIN(option) __is_defined(option)
#define IS_ENABLED(option) __or(IS_BUILTIN(option), IS_MODULE(option))

But just to be sure, I just tested in with a real build:

[    3.242160] IS_ENABLED(TEST_UNDEF) false
[    3.242691] __is_defined(TEST_UNDEF) false
[    3.243240] IS_ENABLED(TEST_VALUE_EMPTY) false
[    3.243794] __is_defined(TEST_VALUE_EMPTY) false
[    3.244353] IS_ENABLED(TEST_VALUE_1) true
[    3.244848] __is_defined(TEST_VALUE_1) true

and nope, it only works with a defined value present.

diff --git a/init/main.c b/init/main.c
index 03371976d387..378a9e54b6dc 100644
--- a/init/main.c
+++ b/init/main.c
@@ -1406,6 +1406,34 @@ static int __ref kernel_init(void *unused)
 	 */
 	pti_finalize();
 
+#undef TEST_UNDEF
+	if (IS_ENABLED(TEST_UNDEF))
+		pr_info("IS_ENABLED(TEST_UNDEF) true\n");
+	else
+		pr_info("IS_ENABLED(TEST_UNDEF) false\n");
+	if (__is_defined(TEST_UNDEF))
+		pr_info("__is_defined(TEST_UNDEF) true\n");
+	else
+		pr_info("__is_defined(TEST_UNDEF) false\n");
+#define TEST_VALUE_EMPTY
+	if (IS_ENABLED(TEST_VALUE_EMPTY))
+		pr_info("IS_ENABLED(TEST_VALUE_EMPTY) true\n");
+	else
+		pr_info("IS_ENABLED(TEST_VALUE_EMPTY) false\n");
+	if (__is_defined(TEST_VALUE_EMPTY))
+		pr_info("__is_defined(TEST_VALUE_EMPTY) true\n");
+	else
+		pr_info("__is_defined(TEST_VALUE_EMPTY) false\n");
+#define TEST_VALUE_1 1
+	if (IS_ENABLED(TEST_VALUE_1))
+		pr_info("IS_ENABLED(TEST_VALUE_1) true\n");
+	else
+		pr_info("IS_ENABLED(TEST_VALUE_1) false\n");
+	if (__is_defined(TEST_VALUE_1))
+		pr_info("__is_defined(TEST_VALUE_1) true\n");
+	else
+		pr_info("__is_defined(TEST_VALUE_1) false\n");
+
 	system_state = SYSTEM_RUNNING;
 	numa_default_policy();
 

which means a few other __is_defined() users are not correct too...

-- 
Kees Cook

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
