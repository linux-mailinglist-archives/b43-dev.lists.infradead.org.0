Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9956220208C
	for <lists+b43-dev@lfdr.de>; Sat, 20 Jun 2020 05:31:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mGCuyGHlDSxR2lMhc4TWbxpxxrSlg7eqdqL0gcW4aX4=; b=fR0vq24S9vLbED
	2Fqs+liSq6aKLiOVY5aj9cSbi+pxhy6dM+pNrQpKRyMu6qJUnAEwSgXfUN/1OqQOKiimJseptcTAs
	X3+c30zi6dKtRoA3lxxl9EjoAIa9G0nCxRur3x0LgwkERXDJ4uO0zoWxpyv8OwaVpIfKu66GWxPpT
	hx3P/EHN66iHqDEX1CQnX82XByjuArpE4yJmFBruYRvq1F0omoLqyIo28xZzkZDt+hIlnc26lNm6T
	1n/r4kI1qrA6XCjoBPL0nGqH+4VdTjlUssrsFQEIienYxGJx3M4qV79mIQPlAP4FuXz3wyST0jR4g
	EpJQ5wUOie1mYg17wzIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmUDa-0003mS-PR; Sat, 20 Jun 2020 03:30:58 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmUCz-0003LJ-8p
 for b43-dev@lists.infradead.org; Sat, 20 Jun 2020 03:30:23 +0000
Received: by mail-pl1-x641.google.com with SMTP id k6so4798930pll.9
 for <b43-dev@lists.infradead.org>; Fri, 19 Jun 2020 20:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KtJf1eB0YMlrdncO0Lr6J725DqMYoYaHrhw5Cgkkruw=;
 b=gTDQzS0R9OidQMG5e9+VmFfSSG04SBfqJ4unRxfvhHa8h+BRhqOurGCqtRjRXbtwmM
 6qHaq3suirfdF4p2vTK9nVPvab/ze983kHVbVbdpqZ9jzfmQ209tdPY06qFcE4o+7kX3
 tZECKumwZls9OBAgYV/KhQ2bgAnw8dWiC5t0A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KtJf1eB0YMlrdncO0Lr6J725DqMYoYaHrhw5Cgkkruw=;
 b=igquOySSUvRc4p7m2s4lp5h1Uo6Fc4vmUQh9fxz++4ZoZ+Nunr4CdpVeZLy5Y440wd
 IQceFvikDZDVUVS1zlxFDd8AiGyOduYVY4qI4bKgIQ0O1gwYjKvN9YTs9P4/oxQBPR0s
 GJl5js+ANUna93Htix+SJ2LoZyZK9fV4alxpFEI8OExMPsqqe4jFPmbqGaqx7X6fsUKC
 h4NtAAkbByPPuQ0Hyi47bVFmNgdx8aZOxF9J3O4Hn4fXJWKiPbsssHbzw21eGVSUxCHv
 1jLazcubF001AOpZyPp7Y09cQXWreerfNA51WeVk5i+QMvCkUsS6heXmvJrBwYa+efcH
 /xvQ==
X-Gm-Message-State: AOAM532RE3rWSKbK6PfiPaVnzuozF8G11hd6pfI8rBDCJeidxWk+nUTE
 814owxSLVian6/thW+xy8fZc+w==
X-Google-Smtp-Source: ABdhPJwKgmzNQXi/vbnAMFC7g+mel4lUeVcAQfzdBe9z4BUHWp/ZcsnxA9mdYSIljSqJHt1Xu1z0+Q==
X-Received: by 2002:a17:902:760c:: with SMTP id
 k12mr806735pll.129.1592623820805; 
 Fri, 19 Jun 2020 20:30:20 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 137sm6119819pgg.72.2020.06.19.20.30.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 20:30:17 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 02/16] x86/mm/numa: Remove uninitialized_var() usage
Date: Fri, 19 Jun 2020 20:29:53 -0700
Message-Id: <20200620033007.1444705-3-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200620033007.1444705-1-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_203021_324731_3FCF5632 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
 linux-ide@vger.kernel.org, Joe Perches <joe@perches.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-clk@vger.kernel.org,
 drbd-dev@lists.linbit.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Using uninitialized_var() is dangerous as it papers over real bugs[1]
(or can in the future), and suppresses unrelated compiler warnings (e.g.
"unused variable"). If the compiler thinks it is uninitialized, either
simply initialize the variable or make compiler changes. As a precursor
to removing[2] this[3] macro[4], refactor code to avoid its need.

The original reason for its use here was to work around the #ifdef
being the only place the variable was used. This is better expressed
using IS_ENABLED() and a new code block where the variable can be used
unconditionally.

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Fixes: 1e01979c8f50 ("x86, numa: Implement pfn -> nid mapping granularity check")
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/mm/numa.c                | 18 +++++++++---------
 include/linux/page-flags-layout.h |  4 +++-
 2 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/arch/x86/mm/numa.c b/arch/x86/mm/numa.c
index 8ee952038c80..b05f45e5e8e2 100644
--- a/arch/x86/mm/numa.c
+++ b/arch/x86/mm/numa.c
@@ -543,7 +543,6 @@ static void __init numa_clear_kernel_node_hotplug(void)
 
 static int __init numa_register_memblks(struct numa_meminfo *mi)
 {
-	unsigned long uninitialized_var(pfn_align);
 	int i, nid;
 
 	/* Account for nodes with cpus and no memory */
@@ -571,15 +570,16 @@ static int __init numa_register_memblks(struct numa_meminfo *mi)
 	 * If sections array is gonna be used for pfn -> nid mapping, check
 	 * whether its granularity is fine enough.
 	 */
-#ifdef NODE_NOT_IN_PAGE_FLAGS
-	pfn_align = node_map_pfn_alignment();
-	if (pfn_align && pfn_align < PAGES_PER_SECTION) {
-		printk(KERN_WARNING "Node alignment %LuMB < min %LuMB, rejecting NUMA config\n",
-		       PFN_PHYS(pfn_align) >> 20,
-		       PFN_PHYS(PAGES_PER_SECTION) >> 20);
-		return -EINVAL;
+	if (IS_ENABLED(NODE_NOT_IN_PAGE_FLAGS)) {
+		unsigned long pfn_align = node_map_pfn_alignment();
+
+		if (pfn_align && pfn_align < PAGES_PER_SECTION) {
+			pr_warn("Node alignment %LuMB < min %LuMB, rejecting NUMA config\n",
+				PFN_PHYS(pfn_align) >> 20,
+				PFN_PHYS(PAGES_PER_SECTION) >> 20);
+			return -EINVAL;
+		}
 	}
-#endif
 	if (!numa_meminfo_cover_memory(mi))
 		return -EINVAL;
 
diff --git a/include/linux/page-flags-layout.h b/include/linux/page-flags-layout.h
index 71283739ffd2..e200eef6a7fd 100644
--- a/include/linux/page-flags-layout.h
+++ b/include/linux/page-flags-layout.h
@@ -98,9 +98,11 @@
 /*
  * We are going to use the flags for the page to node mapping if its in
  * there.  This includes the case where there is no node, so it is implicit.
+ * Note that this #define MUST have a value so that it can be tested with
+ * the IS_ENABLED() macro.
  */
 #if !(NODES_WIDTH > 0 || NODES_SHIFT == 0)
-#define NODE_NOT_IN_PAGE_FLAGS
+#define NODE_NOT_IN_PAGE_FLAGS 1
 #endif
 
 #if defined(CONFIG_NUMA_BALANCING) && LAST_CPUPID_WIDTH == 0
-- 
2.25.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
