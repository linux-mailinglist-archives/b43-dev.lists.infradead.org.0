Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FDF202089
	for <lists+b43-dev@lfdr.de>; Sat, 20 Jun 2020 05:31:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q01WV6a2kppI2xu6fnpEWef3tcLYCl68fEKNUDEuBBQ=; b=d0So1wV25izrd0
	1EH5gCuTkpKcGF6hxbAsevz5u2GaJr72BVh4SB3DIIFGIwvKxaHOhKZq6K1TZ3igmi5rrc+RayLaW
	yf82STHt+hCC4D+O3VMxpg3IvdjGDypP6lIH//5S8B+ke6pwO9z5MYHQCzrTBolPw3Pqvre1YdzwY
	a8Jl9w16zuWypvGmfKNjlthlJKJaNnJCSeA4EEGGvvLGsjN8uhex+W266ZyJM4zdd9sw/EVDoJ9gK
	G4sVvyW9ERoOxt0/MR7i52fptHkGMCPz/cRApHlFnyy29245W0CEWEIK4gUr0O/5rJ1YyZCLU7vlJ
	QPyIYLDMpiv2kRdzNF5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmUDF-0003Vh-KS; Sat, 20 Jun 2020 03:30:37 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmUCx-0003KR-P9
 for b43-dev@lists.infradead.org; Sat, 20 Jun 2020 03:30:22 +0000
Received: by mail-pj1-x1042.google.com with SMTP id h95so5289286pje.4
 for <b43-dev@lists.infradead.org>; Fri, 19 Jun 2020 20:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YYIu82vaLERDRRVNezIsYro3B9HeZTQxC/aBbKcbPE4=;
 b=AtmMokfEBFiCVkYDMGVHGJuJS9fKp3FifwZogKQ2q6x4hzDovnsRDnERm9pIhMX5VI
 ToWY1NArXw8XqplWnXUVi18xafByHCkKQ3jNMc0A7Q42LSaPw/Owem45vKA8WDI8WLVz
 orkNoFzi4U8cu25M9SMeU7hdywlADX44zclAo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YYIu82vaLERDRRVNezIsYro3B9HeZTQxC/aBbKcbPE4=;
 b=s4elpe6RZDF+zKfkHlJhfQjztEUD5flDqVm9S99lz8ZtM1I8n/6ovbk06obZ7TtAt/
 MkSD6Qoa6aBIWZ9TfTToBU7fzqpYwR7Ovksuq4zmCSSxmLK8xVWSlqI4ijjqmqGXtBKC
 dQVSMFGRnrQSJcaNfOfuPrhe7m4LLC3Nla+aIxm/xOJIiSxLtbYrsQIJnpcGmxr3QVrD
 cl5TosI2Tbamvfon0pa/4OIHkBcH7RcDoX0y5C8sp2+DMu5U22yNiBmc6mGaWhOilxnd
 On/MEuHJdp9E9F61Ly/pD3U8SDQL8jDNjF+iVmuxppJj6D+V6ZdvT70rF7rjOnC4Vfhr
 75Qw==
X-Gm-Message-State: AOAM532GKdir+JdLhZbV9eM3/zpagSl/i1cp1eO9KShLHEgs1li31ZLP
 i+H9FLXqqN7IXTZ8XkC4lflz4w==
X-Google-Smtp-Source: ABdhPJzr2vJct8/WkWUzne3Cmk1hS4+0nx/CV5ignmOUO6jPnss1JMiZ2KbcObWfeGsMcluI2vysoA==
X-Received: by 2002:a17:90a:d244:: with SMTP id
 o4mr6477083pjw.186.1592623819315; 
 Fri, 19 Jun 2020 20:30:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id u14sm7848572pfk.211.2020.06.19.20.30.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 20:30:17 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 04/16] b43: Remove uninitialized_var() usage
Date: Fri, 19 Jun 2020 20:29:55 -0700
Message-Id: <20200620033007.1444705-5-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200620033007.1444705-1-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_203019_927791_9BC072A5 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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
No later NULL deref is possible due to the early returns outside of the
(phy->rev >= 7 && phy->rev < 19) case, which explicitly tests for NULL.

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Fixes: 58619b14d106 ("b43: move under broadcom vendor directory")
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/wireless/broadcom/b43/phy_n.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index c33b4235839d..46db91846007 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -4222,7 +4222,7 @@ static void b43_nphy_tx_gain_table_upload(struct b43_wldev *dev)
 	u32 rfpwr_offset;
 	u8 pga_gain, pad_gain;
 	int i;
-	const s16 *uninitialized_var(rf_pwr_offset_table);
+	const s16 *rf_pwr_offset_table = NULL;
 
 	table = b43_nphy_get_tx_gain_table(dev);
 	if (!table)
-- 
2.25.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
