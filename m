Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E06661ED944
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 01:33:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S8j4CPi8M+NbNiJ2gY/PgT23C63mfBv0KOvGTusc3wg=; b=ELdDqIhdCrZCIC
	6vdDRjV/JPOeSIzY06p+IGIr3W1NTfHzoDQUIu/VNV7oj1ca00/khTYNZGeIRFVahxeGcMAyjD004
	8kvPpULzwUU6NJMv2WIUQZwCE+mgpom50zsrIAClzN0UZVtDJZec+OIk9V1M5n2KrJKHT3pg6ia1s
	a94dvbdosd1u3+2ocpg9ZVu5xFjMr091/DHw029ko6w5wVMKu0ERvtQQFK1Tgb6d8RMLFiKgOXdar
	9fgtP4c/ZPBcmytCfWm+mHD5F37DHe3JRXxBdZ8aatRIbIG+Hgy4ii2XiNelWU7D4ZDqv0V5FZhp8
	5G9kDzyVve6WDCWDu69g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgcsA-0005Aj-Bx; Wed, 03 Jun 2020 23:32:38 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgcrq-0004tC-4J
 for b43-dev@lists.infradead.org; Wed, 03 Jun 2020 23:32:20 +0000
Received: by mail-pf1-x443.google.com with SMTP id j1so2331678pfe.4
 for <b43-dev@lists.infradead.org>; Wed, 03 Jun 2020 16:32:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0cI/V2fP2M6XP0OWA+3cSpTCBqMiFhr0WbfahcOkSkY=;
 b=VCJ2fVD0K76VRnrhhqYKoqGSd3oNzMCvSb1PkzjzEgKS3lEBs2i8o2SVDUvF/dPkga
 xv+arE7KCC4Hh7ilymPh7gR+E8iYUVZKNocdJw2iUCCPqK5/4h3Nv2ZjF0IFcbTj05JQ
 cxiJdjSZ+hZY3fifzFTCh10vLiNWMDPHcLw74=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0cI/V2fP2M6XP0OWA+3cSpTCBqMiFhr0WbfahcOkSkY=;
 b=DiXTefUJAycqPdTUxWLEuIEEQgxCPJ4twqrDbgLgc7jMRVUkQ/Gbmcxl1jDWVEEs6w
 7qAwP4iLj6eNnJF//gpw/7BErWBHiZI9NojGeEZ5xLzoD/7nvSA49KQX/gMSz4JH0+Px
 1fPnEly37LDTZKI466pYf7TA2BO+tSiyXn7nbOlCIVHvf/EMcrhKwBKmJNMbYuUU8qhL
 TXvTFcKfRZYd/icU+sFOuLeL8WZIOm9BIS7mkd4VbO26Tx+yKXLXD9gL5Eu3MJu84qYQ
 N05ODzlLNVa3ynCRd/KoYUvvCfEEQCt8SaaRPUgv3zPOvw/VQtt/uM84eRgojHOMYJgB
 J3WQ==
X-Gm-Message-State: AOAM532FjYm73rHYtBq+tVMaUgoMDMHdSSkkcH6MuJqk6gqMtHHoUSh6
 2nS1ITsD3IfmrUMFlXpPtUzVYA==
X-Google-Smtp-Source: ABdhPJwP1oJJWA9CCPnffeDQAD6N9ckmvjh4MOBxgBDDG5Bisi5j6kln17qF8cvddpC2X+a/wgv1kg==
X-Received: by 2002:a65:4488:: with SMTP id l8mr1683466pgq.327.1591227135199; 
 Wed, 03 Jun 2020 16:32:15 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id x25sm2353911pge.23.2020.06.03.16.32.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 16:32:12 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 02/10] drbd: Remove uninitialized_var() usage
Date: Wed,  3 Jun 2020 16:31:55 -0700
Message-Id: <20200603233203.1695403-3-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200603233203.1695403-1-keescook@chromium.org>
References: <20200603233203.1695403-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_163218_173947_80959EC8 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
(or can in the future), and suppresses unrelated compiler warnings (e.g.
"unused variable"). If the compiler thinks it is uninitialized, either
simply initialize the variable or make compiler changes. As a precursor
to removing[2] this[3] macro[4], just initialize this variable to NULL.

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/block/drbd/drbd_state.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/block/drbd/drbd_state.c b/drivers/block/drbd/drbd_state.c
index eeaa3b49b264..0067d328f0b5 100644
--- a/drivers/block/drbd/drbd_state.c
+++ b/drivers/block/drbd/drbd_state.c
@@ -1604,7 +1604,7 @@ static void broadcast_state_change(struct drbd_state_change *state_change)
 	unsigned int n_device, n_connection, n_peer_device, n_peer_devices;
 	void (*last_func)(struct sk_buff *, unsigned int, void *,
 			  enum drbd_notification_type) = NULL;
-	void *uninitialized_var(last_arg);
+	void *last_arg = NULL;
 
 #define HAS_CHANGED(state) ((state)[OLD] != (state)[NEW])
 #define FINAL_STATE_CHANGE(type) \
-- 
2.25.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
