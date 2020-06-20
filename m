Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B3F2020A7
	for <lists+b43-dev@lfdr.de>; Sat, 20 Jun 2020 05:32:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZmQMJOEK7TQ5zotjS7hlcbP9LLOyMTjWXHJvi0y33E=; b=qW6vCA6keDQpvJ
	n0jK2hweK1pLhljmqo4ZV9/YCMl4B+NJ+ly2aQcKgfETDym8H3PF3txiNxxLNgNhdeOs56Yhb0gLQ
	GRyjqMmyyd9COR8jnD4joryDZUHbkLaM0LLPeab8YlQ/SpoOJUA/pKObxMDD/DHnDfBzJtmIQU68p
	9yQqZ5SnMeYl90P/9TtQ1oEgwZ2DYxxf93rWODt5+8p5EuLaXsqSjrHJz7HW7Kb74WnmEt34JPu1W
	Lnl8IKxcDwFvLm2y40L5R7f15w4yMSGmbGa485PwsucJ4HT3dUJYoUYNnvJ6YO5zR/yzfUXofWe2g
	7vZ88z6Y+xo0DRYzzfWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmUEX-0004tA-1I; Sat, 20 Jun 2020 03:31:57 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmUD8-0003Ta-JQ
 for b43-dev@lists.infradead.org; Sat, 20 Jun 2020 03:30:32 +0000
Received: by mail-pl1-x644.google.com with SMTP id x11so4808144plo.7
 for <b43-dev@lists.infradead.org>; Fri, 19 Jun 2020 20:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QE7doATfVKyRNIS6o4GV46rwBSEL831INB+q/+9Rmh4=;
 b=ASP8ZYf5F8e3CyJ7PlH33MV/i7ui6qpJA/mDIbM14iTBLSGrg0GdC9kyTZr/lfh7CG
 GXzC9dz7nRwrAYeG29S+Q/THEeaVI5eUgF5DSRnMeurjTMSJnbVmhuDSeU19AKii4S2r
 YKBS0Qn5aMH95xmZNn8/myVX4U8ajBfLEQ9mc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QE7doATfVKyRNIS6o4GV46rwBSEL831INB+q/+9Rmh4=;
 b=CASzTbRUi94JQUYiWj/wvinIq3UGJ9r/W0L2aaNfMVA5YsZ2BQjaydk51mIFWJYtbN
 AHzZMTN1TZsQ/2VCZ4i92TbZPmkS/GNV4jN1KQVwOhesqdpSUaRKKrU1trHj7GBjALWU
 sqEp9E0HJRJsMiwUgSRTch74Qla0kBIhtTrRhjIX2nOPP75T/zRpxGTGQ/3TgPGUfkuu
 yL0IHZIIgFq/HbZYWrJBBjEkw3ssHxyBmWuA/24FvPO/4D8Lxxp9pcZSdTMzE52m5uOD
 /PHN/WXfMJc25vUDygpCY442EIDZKKEzkW10Z3/R3DVQ7UZjleXLo3bZim06JozwilLF
 O48g==
X-Gm-Message-State: AOAM531urmbqA8kPGEpJ6ZAMM87VyuKPIXUWrKl/E1+U2TuW4jbNQp5n
 fuehcweDEBg7BQSy7+Ns6YbiLg==
X-Google-Smtp-Source: ABdhPJwXvH55Kn4Xp+SPGU8vAiaQb11ixD/33bxeYcW2UOZTzvT5qr6VlXigT0w5zzrZdxmh+dRSYw==
X-Received: by 2002:a17:90a:220f:: with SMTP id
 c15mr6886989pje.129.1592623829622; 
 Fri, 19 Jun 2020 20:30:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id r7sm2178138pfc.183.2020.06.19.20.30.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 20:30:26 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 16/16] compiler: Remove uninitialized_var() macro
Date: Fri, 19 Jun 2020 20:30:06 -0700
Message-Id: <20200620033007.1444705-16-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200620033007.1444705-1-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_203030_641583_8B373176 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
Cc: Andy Whitcroft <apw@canonical.com>, Kees Cook <keescook@chromium.org>,
 linux-doc@vger.kernel.org, netdev@vger.kernel.org, x86@kernel.org,
 linux-wireless@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-block@vger.kernel.org, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, b43-dev@lists.infradead.org,
 linux-ide@vger.kernel.org, Sedat Dilek <sedat.dilek@gmail.com>,
 Joe Perches <joe@perches.com>, Nathan Chancellor <natechancellor@gmail.com>,
 drbd-dev@lists.linbit.com, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-clk@vger.kernel.org, Bart van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Using uninitialized_var() is dangerous as it papers over real bugs[1]
(or can in the future), and suppresses unrelated compiler warnings
(e.g. "unused variable"). If the compiler thinks it is uninitialized,
either simply initialize the variable or make compiler changes.

As recommended[2] by[3] Linus[4], remove the macro. With the recent
change to disable -Wmaybe-uninitialized in v5.7 in commit 78a5255ffb6a
("Stop the ad-hoc games with -Wno-maybe-initialized"), this is likely
the best time to make this treewide change.

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Reviewed-by: Bart van Assche <bvanassche@acm.org>
Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/compiler-clang.h | 2 --
 include/linux/compiler-gcc.h   | 6 ------
 tools/include/linux/compiler.h | 2 --
 tools/virtio/linux/kernel.h    | 2 --
 4 files changed, 12 deletions(-)

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index ee37256ec8bd..f2371b83aaf2 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -5,8 +5,6 @@
 
 /* Compiler specific definitions for Clang compiler */
 
-#define uninitialized_var(x) x = *(&(x))
-
 /* same as gcc, this was present in clang-2.6 so we can assume it works
  * with any version that can compile the kernel
  */
diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index 7dd4e0349ef3..84e099a87383 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -59,12 +59,6 @@
 	(typeof(ptr)) (__ptr + (off));					\
 })
 
-/*
- * A trick to suppress uninitialized variable warning without generating any
- * code
- */
-#define uninitialized_var(x) x = x
-
 #ifdef CONFIG_RETPOLINE
 #define __noretpoline __attribute__((__indirect_branch__("keep")))
 #endif
diff --git a/tools/include/linux/compiler.h b/tools/include/linux/compiler.h
index 9f9002734e19..2f2f4082225e 100644
--- a/tools/include/linux/compiler.h
+++ b/tools/include/linux/compiler.h
@@ -111,8 +111,6 @@
 # define noinline
 #endif
 
-#define uninitialized_var(x) x = *(&(x))
-
 #include <linux/types.h>
 
 /*
diff --git a/tools/virtio/linux/kernel.h b/tools/virtio/linux/kernel.h
index 6683b4a70b05..1e14ab967c11 100644
--- a/tools/virtio/linux/kernel.h
+++ b/tools/virtio/linux/kernel.h
@@ -109,8 +109,6 @@ static inline void free_page(unsigned long addr)
 	const typeof( ((type *)0)->member ) *__mptr = (ptr);	\
 	(type *)( (char *)__mptr - offsetof(type,member) );})
 
-#define uninitialized_var(x) x = x
-
 # ifndef likely
 #  define likely(x)	(__builtin_expect(!!(x), 1))
 # endif
-- 
2.25.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
