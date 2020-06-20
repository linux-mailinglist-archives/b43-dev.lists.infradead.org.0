Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C406F202086
	for <lists+b43-dev@lfdr.de>; Sat, 20 Jun 2020 05:31:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QG5BFe+FhRjWtAh4qa9s7/2J3das6VCyMH4ZLAdB0+c=; b=UtzNwY6OEl2vKp
	9BWCB6UNrg1aDrMr2LB4fdRS7iB+59KnsumVelUV1G7D0Mkd/QzhfCO8szbAmUWccXpJjduWvw+Q4
	9NuSWjwgp7WOu66wCFkOIs9GzKWGmv0kdjHIdUHnUc65naSvUV/m4lyXmx+s5VvlLKn35AFstnFkl
	PUv3vfx2qlbxP2QWedIOqlvui61nz0I/p38s5QgzmGHxKk/dI6+XUdphHCQ9Kzo91bqDHUEg8lPz2
	+lgS8u9cbcykVjlhRecd/SFqoX3YhQMvt6gcpT6VFn5NN5Lo9XPaXb8WO8B7+2tXWcWlZOPc7/hjt
	3iZRfnuMC862d2Akvu3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmUEG-0004YZ-4N; Sat, 20 Jun 2020 03:31:40 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmUD4-0003OS-9W
 for b43-dev@lists.infradead.org; Sat, 20 Jun 2020 03:30:28 +0000
Received: by mail-pf1-x444.google.com with SMTP id d66so5376664pfd.6
 for <b43-dev@lists.infradead.org>; Fri, 19 Jun 2020 20:30:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7ExlyNd4C6Vtqo5InL4xGzXnaPAWUSdxdUBoxlRz8EM=;
 b=NXIjEZzmAlY5fdC/DwXct9GYDHogfeUCrjSkTO4JXjF9UTv+cR2dEUWt3FWlTNaAHp
 ArVHLS7GaAaX0GRdppC6MVL4iulBAnXl0RDRkmjEpohR99AIp9TcfcZKNXy8KweQ5j+M
 qKbddjlMm6r/UiOtSlPQhvc966Inhn9BIPgP4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7ExlyNd4C6Vtqo5InL4xGzXnaPAWUSdxdUBoxlRz8EM=;
 b=Qg4zceWSCZYsHyMeWDs6MlDHyKpxU3OUmTNrjspNR58XlfGmdVaAUaYAED/dBVvhBC
 +l7JpbpVq0kC5fH+ChajFKyrdB+FFuQs1lYvhEeeXAQsZxnznjWxhHjgnZPL6v7/CgRo
 /6spkObLwP4ih+8Oi0W5am4hVla+5DO1DeGpQfukqR8Ma8Z30nP8VugMtCH51s0O+yVH
 45XwGeGtxdu9tzlCKVwjiPpObVPjl9VarvttLxk0revW8nCvrdaKII5nEtjLKdBNGxe1
 zMp2cDYtsuNgKpNpg1opSxwbR0hey1gGnqYRE74hPAOk3WuD2o94r97PI/GZK/b99un7
 2h7A==
X-Gm-Message-State: AOAM5328o0PDgE1GO7Lh0oiT4EErehzW7Qia0QIwNdFp/yj8uaDQlJlT
 fdGgALxf5svt6ruAWwVzog4WZg==
X-Google-Smtp-Source: ABdhPJyAJ8Da6kpj1cpdp7acRpdjHPEasdxnBrzutMhIZjw6K4AKJtCbSzx12+H3IHWiTttzpZGpTg==
X-Received: by 2002:a63:dd42:: with SMTP id g2mr5615212pgj.442.1592623825373; 
 Fri, 19 Jun 2020 20:30:25 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id n69sm7060385pjc.25.2020.06.19.20.30.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 20:30:20 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 11/16] media: sur40: Remove uninitialized_var() usage
Date: Fri, 19 Jun 2020 20:30:02 -0700
Message-Id: <20200620033007.1444705-12-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200620033007.1444705-1-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_203026_329151_6AB6DDDA 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
to removing[2] this[3] macro[4], just remove this variable since it was
actually unused:

drivers/input/touchscreen/sur40.c:459:6: warning: variable 'packet_id' set but not used [-Wunused-but-set-variable]
  459 |  u32 packet_id;
      |      ^~~~~~~~~

However, in keeping with the documentation desires outlined in commit
335abaea7a27 ("Input: sur40 - silence unnecessary noisy debug output"),
comment out the assignment instead of removing it.

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Fixes: 335abaea7a27 ("Input: sur40 - silence unnecessary noisy debug output")
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/input/touchscreen/sur40.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/input/touchscreen/sur40.c b/drivers/input/touchscreen/sur40.c
index 34d31c7ec8ba..620cdd7d214a 100644
--- a/drivers/input/touchscreen/sur40.c
+++ b/drivers/input/touchscreen/sur40.c
@@ -456,8 +456,6 @@ static void sur40_poll(struct input_dev *input)
 {
 	struct sur40_state *sur40 = input_get_drvdata(input);
 	int result, bulk_read, need_blobs, packet_blobs, i;
-	u32 uninitialized_var(packet_id);
-
 	struct sur40_header *header = &sur40->bulk_in_buffer->header;
 	struct sur40_blob *inblob = &sur40->bulk_in_buffer->blobs[0];
 
@@ -491,7 +489,7 @@ static void sur40_poll(struct input_dev *input)
 		if (need_blobs == -1) {
 			need_blobs = le16_to_cpu(header->count);
 			dev_dbg(sur40->dev, "need %d blobs\n", need_blobs);
-			packet_id = le32_to_cpu(header->packet_id);
+			/* packet_id = le32_to_cpu(header->packet_id); */
 		}
 
 		/*
-- 
2.25.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
