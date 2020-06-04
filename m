Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C2E1EDBDE
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 05:46:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hnb4Vna94KtoHNCMtLDDnvte8bBGe9d8Hb97+efUX18=; b=lHrQHabFPQn1mf
	KYcR14+mszufymshI3+BpctWApncLbaeBVPdL6rN5tga0XG5c/3DfIA2oVdpLnlrEc7fPvC05KV5V
	EvR4zQiTIwOxpEZbOFrneG5vZNxfKe5pdmZYoYTS1DFTA2OUuhsFyvGAu9iHTkcF+GhGMno8phviB
	ZV9B2Ta5rUHx/DnQnrTwiEsZA7O/tu+YE+gx1CCsZzHXHSDvSnb9Q13rL7jC2mfvTQ/gVRpprJqjd
	t7emtH4PEEfzid7EkINwdX2GQJQdtm6HsRCnlJd3KyCoaHojpu3n7l02yHQJhCzRwf3r6cwjgwxDH
	u5SSOxmrN4BrtswZqmyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jggpk-0005DW-Oz; Thu, 04 Jun 2020 03:46:24 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jggpg-0005Ck-Kk
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 03:46:21 +0000
Received: by mail-pj1-x1041.google.com with SMTP id b7so1725500pju.0
 for <b43-dev@lists.infradead.org>; Wed, 03 Jun 2020 20:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=AKUvLro9S597CUdKLkHtfULaMJzReX6aR4Vd+jg9MWw=;
 b=hKAsiTFpLHHgYk7uxEc64hy/HUaA1WkUjC8d9BKcLM3A/W0jWDjCQVcYLc0TzJIb6c
 CVvGbgMTwJtWW3d38WnReaNXfUDB6Z7+PjsIdPE8tJzwBE5kkiQFZuUsHl9gXF2t3hNz
 P/mhkULSwbWlOZpcliQwUyTPCPRZerjJhSiPA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AKUvLro9S597CUdKLkHtfULaMJzReX6aR4Vd+jg9MWw=;
 b=koAs2+vDOkJYC/qqNgYmnnA87PM5Y3T9OfJwkxZxntHWX3aFXZordwkzR9x4KC0O1w
 7LwtsKvyh/Qf1Y9MOjxWD+i031RkAubQ1+9ucUaDQh97XEYrb+7KjWWv7C5Tq0apS18f
 Lh8/Z4v9DJGeT1jsN8YVD6W4zomcNUKixBNLBPBeKzX7TaKOkLSvTjD/brce6DVlzFK/
 lKSmtqjbLw4b/etNAveWXIGfCprcnkzgkvdwQxly0aVT8he5BzCM3L7X+KXK9xiH+wD8
 d9krdeMX2+DRTLbe5vV/b65fVNEzIsl1MGK4MDv3oAeOD90AiMnp5A1tiGLRztzkXojJ
 8CYQ==
X-Gm-Message-State: AOAM532+NdgthfhrvwZaHHma38QM/8cGNPaYlDbwdumtTdY6/0sWMu3e
 hhSdtIjFcPasglX0UpY2pgrPnw==
X-Google-Smtp-Source: ABdhPJwgOC5Nh6YRgoFEBFoD4RiNjZ8EE9ykV4UyBnz631Lr2h8YJbe7vzR1a+QiANBM9x+EA79IfA==
X-Received: by 2002:a17:90a:2461:: with SMTP id
 h88mr3702337pje.180.1591242379970; 
 Wed, 03 Jun 2020 20:46:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id a5sm3056506pfi.41.2020.06.03.20.46.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 20:46:18 -0700 (PDT)
Date: Wed, 3 Jun 2020 20:46:17 -0700
From: Kees Cook <keescook@chromium.org>
To: Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH 08/10] checkpatch: Remove awareness of
 uninitialized_var() macro
Message-ID: <202006032046.96A726426@keescook>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-9-keescook@chromium.org>
 <ff9087b0571e1fc499bd8a4c9fd99bfc0357f245.camel@perches.com>
 <202006031838.55722640DC@keescook>
 <6f921002478544217903ee4bfbe3c400e169687f.camel@perches.com>
 <202006031944.9551FAA68E@keescook>
 <CA+icZUVg24VrpPgMdfsgPa+Wckci9XkzKUdtwhVB3ZW96uZOWw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+icZUVg24VrpPgMdfsgPa+Wckci9XkzKUdtwhVB3ZW96uZOWw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_204620_694987_6DDF310F 
X-CRM114-Status: UNSURE (   6.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
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
Cc: Andy Whitcroft <apw@canonical.com>,
 Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
 linux-ide@vger.kernel.org, netdev@vger.kernel.org, x86@kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-block@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, b43-dev@lists.infradead.org,
 Joe Perches <joe@perches.com>, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-clk@vger.kernel.org, drbd-dev@lists.linbit.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 04:53:34AM +0200, Sedat Dilek wrote:
> can you push that change also to kees/linux.git#kspp/uninit/v5.7/macro ?

Done! :)

-- 
Kees Cook

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
