Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E20B1ED94A
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 01:33:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vF6bDCPzNZbd+0pSmleUm4DlzofzTWyf9i/6Yjfml54=; b=jp9g3Z+Nwz7dvK
	+t6Xi4Fs8ZRJNpZI0GLLoKmW7NufcFel05Pd/VwmThHbceGsdl1/yej9DdYdjpOV26oOc54D0TT/u
	VkkZa4JvwgBhWcpG06R40o2Uj1IX6LkJMWMBdNaPnVMcslAXsS8/P4zdhQBm6NCaI4AwMEzWrUVCI
	yE30/R55X6Rv5nlDxSqaKUcFNzPnU1LySvi8/+dHrvTuucDfQM7tP4PL4GvLzQ/GMBGVuFXvnu8lS
	Fpw/8rTHBQEEp8QFJ7KF6svej22heeNGdly6OL/vwvOOC0XM+fwqcuOwQ8HjmbVWkURKUMfV3JyH+
	8tS55cQFxCYv0yEqhT/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgcsW-0005Y9-LT; Wed, 03 Jun 2020 23:33:00 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgcrs-0004wD-E6
 for b43-dev@lists.infradead.org; Wed, 03 Jun 2020 23:32:22 +0000
Received: by mail-pj1-x1044.google.com with SMTP id nm22so258994pjb.4
 for <b43-dev@lists.infradead.org>; Wed, 03 Jun 2020 16:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/wgSseUcyTd9Drk76fcV4j2VbriV8jy/HYEGQ0NYaFk=;
 b=UstK7WLaEjDWaKH3+++ddeAXtqpiyFxQfl0O2lazw1LzLA/AjfOlogFybdXuhuVdpb
 rFJfQt4LgPRAzCjKoGukk2COBz4+5z1QncnyZ/CR0mBbgUwuOWUYwdicuZEexScuGgS/
 olVZGdjTE/8GbLwCvMROC7gFScCzYDYjU2Bl8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/wgSseUcyTd9Drk76fcV4j2VbriV8jy/HYEGQ0NYaFk=;
 b=JvJSwbxA1HsBix5vjSINguqfc7+c2YBFopVCjUzpdT3sDPt/HRL3LGwLxbjQrODzBR
 SdR5RuvqeLDx/kNAxA1n8/sjt/BDN2wMDbMFbm9/XvebUs1xU0wd63q7pL3RYpUBet5/
 J6a0D9tzJf6gtHdIPwqrfTlnIcARSJ+KmFAFr1HsIkrUXZ0kcEvbFvNRPVZ1TTLj58Oa
 HKXJ+qxu5BNd9Y1pEXF3vuO3gpPOjig7x5CGJ9BBk6kKLaWgKkNHoeRVoJ1Vnq/IYUkg
 ZDYl7dggbh9aHI/3Ri6xJin5p/Y53VVqptwUNb3LCf09kqyb3W8MM1+6iPWhjHvMqYx3
 9y1Q==
X-Gm-Message-State: AOAM530vN6i4rJghZQFrrKG71t4LRAwAI1Mu1OtHgOI4L/sbyidcSxhL
 vrXNYwxAuV6JPEzV0W4a4NYxsw==
X-Google-Smtp-Source: ABdhPJx0hlq73lYT8fOS+tXn65Ai8YEmL5/PSXJN4dJgAWJCbi3pNRJVeupDCakZZ2YluWv4rvJ6+A==
X-Received: by 2002:a17:902:b706:: with SMTP id
 d6mr2149275pls.304.1591227139667; 
 Wed, 03 Jun 2020 16:32:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id k19sm2867022pfg.153.2020.06.03.16.32.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 16:32:16 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 10/10] compiler: Remove uninitialized_var() macro
Date: Wed,  3 Jun 2020 16:32:03 -0700
Message-Id: <20200603233203.1695403-11-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200603233203.1695403-1-keescook@chromium.org>
References: <20200603233203.1695403-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_163220_466883_C9520DA4 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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
Cc: Andy Whitcroft <apw@canonical.com>, Kees Cook <keescook@chromium.org>,
 linux-ide@vger.kernel.org, netdev@vger.kernel.org, x86@kernel.org,
 linux-wireless@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-block@vger.kernel.org, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 linux-mm@kvack.org, Alexander Potapenko <glider@google.com>,
 b43-dev@lists.infradead.org, clang-built-linux@googlegroups.com,
 Joe Perches <joe@perches.com>, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-clk@vger.kernel.org, drbd-dev@lists.linbit.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Using uninitialized_var() is dangerous as it papers over real bugs[1]
(or can in the future), and suppresses unrelated compiler warnings
(e.g. "unused variable"). If the compiler thinks it is uninitialized,
either simply initialize the variable or make compiler changes.

As recommended[2] by[3] Linus[4], remove the macro.

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/compiler-clang.h | 2 --
 include/linux/compiler-gcc.h   | 6 ------
 tools/include/linux/compiler.h | 2 --
 tools/virtio/linux/kernel.h    | 2 --
 4 files changed, 12 deletions(-)

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index 790c0c6b8552..019f444b500b 100644
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
index d7ee4c6bad48..ac3e29ae32de 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -58,12 +58,6 @@
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
index 180f7714a5f1..29cbb73f2ae0 100644
--- a/tools/include/linux/compiler.h
+++ b/tools/include/linux/compiler.h
@@ -108,8 +108,6 @@
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
