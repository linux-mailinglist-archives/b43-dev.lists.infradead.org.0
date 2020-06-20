Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D7D20206C
	for <lists+b43-dev@lfdr.de>; Sat, 20 Jun 2020 05:31:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C87sWa6/bScyo+gIcn6555BGXI5KGiibpK06p5NJyTE=; b=FvMGstvETDwfs+
	oWAO/Ohti/PFv2jHnmgdW3X9Dr66bYLsCN9CBiUAup+AtxcY9YrW0Zj9TeViEjmNrv7QPfVMBsPIc
	DKgpJvJPP1CXd+kbNEgMASQN8F3wfjJP4jaMg8h+50wyASe1OTNRIgZfcvx3To1oECyh5mlUVOCrr
	2bDg/R8DHH88U37U7o1QrFcK/AEEsoBhxud1iU+cP0Y4kn6oNi4m8vVZLi36EYhswXMKxH9LY3iMV
	8cP9bAjjT5uTAYQroBjdgGIhwmzBdWUhrLOTBBMuZarHOsxBb+hwkLRVIKKXlGsuwJssZY6kBIzgL
	+UEaGKnIMDsiN8Pgdp3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmUDk-0003xp-FE; Sat, 20 Jun 2020 03:31:08 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmUD0-0003M4-VT
 for b43-dev@lists.infradead.org; Sat, 20 Jun 2020 03:30:24 +0000
Received: by mail-pf1-x443.google.com with SMTP id b5so5369767pfp.9
 for <b43-dev@lists.infradead.org>; Fri, 19 Jun 2020 20:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IA+yT7PCs96a2QLkRTxqRX0+cmxfGmmmnF6nm+mE/f4=;
 b=MqimT0fbxuqxM+QmcrwARR+/amwNiuCI+hP1wCfX1g7kgv7NJcSBiwI/l7uGyvqsK2
 Oxc/+t3p4QpbDzYvQgitVypdVq8W23fO1zrrGQ69Qr0YZljTlWhw1Ev4MY87zvbvDu1N
 bh/IFvhDf4w/OsdEMgGvGYEdX6xS6wWHv8oxc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IA+yT7PCs96a2QLkRTxqRX0+cmxfGmmmnF6nm+mE/f4=;
 b=PEDRV923hGTnIi5HAkwsPmqLxEO8nmMfGWSElKX87CZqy/rZFrGJ2oHOH59Ack1/Vy
 kqy3tGEmWqINqrdGLWtd+35MyHB77TT3qrghQX/HLYgtNCi9MRr3p2XmvDiukEBcXdcD
 oab11vqpg1EQEQN8CFzNtLZ5TkdZxKIqpepGCWvE+B7b0xkmNFcxR0+zeskds287bAlA
 knfJYk/Io6Hs1+PxL3ZsEj5f8zBLFxqZhiQbdXxaQp4MpjEDQUYshJe3U/YO4u9nTsle
 Qnpx5A+w+LFmAN0pLnO0+k2lG7l0KPtOegJ+LFuBYDE5GK/JF45F+Fp0QwnabjER8pMt
 +7Rw==
X-Gm-Message-State: AOAM530dTFM38YLBwlYYyR/MveC4jB5tppTDH1lnGN1pATUgDI9x9z48
 /ya5OZhFc8ZneLanhVM4+xEO7w==
X-Google-Smtp-Source: ABdhPJzWXmNsQYGlo/XoAt7rJ3XMQnqVn/2emw/g557qtVZoXAJYxangSZ/rdwKB6suIvTYXAUcnDQ==
X-Received: by 2002:a65:5645:: with SMTP id m5mr5147418pgs.434.1592623822112; 
 Fri, 19 Jun 2020 20:30:22 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id a12sm7138426pfr.44.2020.06.19.20.30.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 20:30:20 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 06/16] ide: Remove uninitialized_var() usage
Date: Fri, 19 Jun 2020 20:29:57 -0700
Message-Id: <20200620033007.1444705-7-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200620033007.1444705-1-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_203023_013923_CEB90E6C 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
Cc: Andy Whitcroft <apw@canonical.com>, linux-wireless@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, linux-doc@vger.kernel.org,
 netdev@vger.kernel.org, x86@kernel.org,
 Nick Desaulniers <ndesaulniers@google.com>, linux-spi@vger.kernel.org,
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

drivers/ide/ide-taskfile.c:232:34: warning: unused variable 'flags' [-Wunused-variable]
        unsigned long uninitialized_var(flags);
                                        ^

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Fixes: ce1e518190ea ("ide: don't disable interrupts during kmap_atomic()")
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/ide/ide-taskfile.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/ide/ide-taskfile.c b/drivers/ide/ide-taskfile.c
index aab6a10435b6..a26f85ab58a9 100644
--- a/drivers/ide/ide-taskfile.c
+++ b/drivers/ide/ide-taskfile.c
@@ -229,7 +229,6 @@ void ide_pio_bytes(ide_drive_t *drive, struct ide_cmd *cmd,
 	ide_hwif_t *hwif = drive->hwif;
 	struct scatterlist *sg = hwif->sg_table;
 	struct scatterlist *cursg = cmd->cursg;
-	unsigned long uninitialized_var(flags);
 	struct page *page;
 	unsigned int offset;
 	u8 *buf;
-- 
2.25.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
