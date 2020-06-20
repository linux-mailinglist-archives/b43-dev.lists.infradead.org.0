Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7626220208F
	for <lists+b43-dev@lfdr.de>; Sat, 20 Jun 2020 05:31:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L99sSJtFaMRN9hHRw4abu5msx3I7sD9c2Dsv79cmt04=; b=rbZbUqGOlVL1pw
	BT8Mxud8Bf46ncZ656regQo1e+1ToEFkLlRxmA/4esxMJDWQwCFVuqXy/JnFEHjDLYkWHlGBsnJ1B
	7NJ5u4+8P9VE9768JQxPTYCRv77PTgrpswSJLfIFb0Yb3ST5mjHGaHv/vHw5ykpfNOY+9xnJcFHLv
	9e2rGHXEAcUbNgvQoiIL7P7lsZzXkiBdtQ7/SggiEahRXsIjAXxb/HILFjUGd2DAOTtwAeX5wpi19
	OcER8kVaft7oDLUVL6tFX6SjE5tZ2sfgzQUYaC9M7Yw0Su94DfGquNhn9rTutivgKj96m6dHIIOPK
	Z2Dezp7RW0aNMMETRq3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmUEQ-0004lM-Lo; Sat, 20 Jun 2020 03:31:50 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmUD6-0003Rl-Ln
 for b43-dev@lists.infradead.org; Sat, 20 Jun 2020 03:30:30 +0000
Received: by mail-pl1-x643.google.com with SMTP id x11so4808122plo.7
 for <b43-dev@lists.infradead.org>; Fri, 19 Jun 2020 20:30:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QVK7j0hx8FBwbrQRQLiAwPLU1M0hFNtAd7ZF9cg10jo=;
 b=TZW89t7zN77H873mcFo8WLKtwyPOC4zRyfDeh6db7mO8VCfzF/bLHMfK7vcAzedFuv
 1RpGH6tOBLqduS8I/DdeF83mRRrdAlWtjSzOSaXCEmWDNlYtfmcl5HjH5pc0lKbkP/sk
 L+yXY5n0mIFfGtE2LVxuNzfT527bZqkW9h24Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QVK7j0hx8FBwbrQRQLiAwPLU1M0hFNtAd7ZF9cg10jo=;
 b=cc2EpYTYg/68E9nE0OzkoWvEt8c+zSYXPbUylBTvxSJGDe7aWWD+DPQgK+ZEN9q1x0
 CCQ/wsWk+8azPfO6weh6F08wyLQJg/NimhJ93BhlPhK4vwJ/5KYKnKW2TFltNfbmZmev
 xpx4pbhsBFU39sJs5uf14wnaq5TmVf1wRuVtR7pFjYWMF0I2s/m5wf6elEqQtrh/y1Cn
 Sk1DdBJ9w3lnk8L6glzfuuwI3KANDbVGnnFzSVnpCYWXWwA4N5X5Uqj6+3OPiAtOdHg7
 Ljk9TZz48KtJw3aGAVw3Kf7LD8l1SIwkAi86Jrr124E6miJo8or3fIuH86N71/voMPaC
 /9Hw==
X-Gm-Message-State: AOAM5316o7qTvgsaGAENLzmfdtopMyFD1S0oSOM1dXK8iA4OfO7d/wnt
 wwqabenGFOgqjdeiY4Fw4gD8Ww==
X-Google-Smtp-Source: ABdhPJz8KX7mQAqh+M5lriaij/q9w5lLW8mo5TU5HFqGc/qxPYSRCJFCyD55HX6pgmlCF9isgzBqNQ==
X-Received: by 2002:a17:90a:778c:: with SMTP id
 v12mr6634388pjk.34.1592623828165; 
 Fri, 19 Jun 2020 20:30:28 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id r1sm824770pjd.47.2020.06.19.20.30.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 20:30:26 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 13/16] mm/debug_vm_pgtable: Remove uninitialized_var() usage
Date: Fri, 19 Jun 2020 20:30:07 -0700
Message-Id: <20200620033007.1444705-17-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200620033007.1444705-1-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_203028_762182_A0503089 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
to removing[2] this[3] macro[4], just initialize this variable to NULL.

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Fixes: 399145f9eb6c ("mm/debug: add tests validating architecture page table helpers")
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 mm/debug_vm_pgtable.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mm/debug_vm_pgtable.c b/mm/debug_vm_pgtable.c
index e45623016aea..83c9e88a052a 100644
--- a/mm/debug_vm_pgtable.c
+++ b/mm/debug_vm_pgtable.c
@@ -307,7 +307,7 @@ static int __init debug_vm_pgtable(void)
 	phys_addr_t paddr;
 	unsigned long vaddr, pte_aligned, pmd_aligned;
 	unsigned long pud_aligned, p4d_aligned, pgd_aligned;
-	spinlock_t *uninitialized_var(ptl);
+	spinlock_t *ptl = NULL;
 
 	pr_info("Validating architecture page table helpers\n");
 	prot = vm_get_page_prot(VMFLAGS);
-- 
2.25.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
