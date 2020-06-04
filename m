Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92AC51EE541
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 15:23:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vB++Fs0ODXIjeM472cKdveJkselNH7Rfi/C1JKOdv8w=; b=t2RYsKnSA/CA1b
	Et1vMqiSi/FUmf21M3DP86fyeXm8popBHYNk3ETw/E91mwgFgsqjLgX0LPgI53+lhpRrvgoEKqjCO
	V+sSfVGRl7OULRGl8vWd73/HJl1DTDgEmLfjabM3Q7agxsNCY0LWDbhJy8vUFEiSwOw1EqT+Gtswx
	tnE9Xb4cU4LwhfBX4YaSpLILX7SUy2HkhLbs4JRF4rxbwDRmibx7sv+W0cnv2LkBlL3Qc0chZU+pF
	tXkVylX2e7d3T3LDLPsF4b1wDu1w1A/i7iBVSBRAIS6MZpy4mbBS4GuC5wf6jSsjbE1edRpBcpL5x
	kDeCZ5Lp//GR33yYifow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgppz-0001Pk-Pn; Thu, 04 Jun 2020 13:23:15 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgppt-0001La-V7
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 13:23:12 +0000
Received: by mail-qt1-x841.google.com with SMTP id d27so5158629qtg.4
 for <b43-dev@lists.infradead.org>; Thu, 04 Jun 2020 06:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Zd56CSP9N2M4FrfN9ySWd7Nzjr+sOLOVU8sX9ZsvxYk=;
 b=Z1SifWi8Glj9s1ZlViEQIoOzrtW4kQqhJPAuBmH8BuAfTlSORzOP5/aBkVIpDCF065
 4tet6nf/xexKbX9HERYTEiH7bvvMa7jEzJZJ+Y9NbTVNdXZMe5cuQGHU5U8XYpc6rEpA
 0M5eGOL/GQzV1R+AsSeBTDbzXk+YExg+XOlZLmxAbhKhBOAjkHQZ06AbVHRZdzvZiU7w
 cHe+L3V8vNXxybekuzSoIvOp1xxWvK8SbdjJVplyLz5vYnbOtUIAIDcZULCyq5qUdBWf
 hegDa8ghfSlITKfZUXou8d2OJHz3pI/kZh5/E9mjrrfnPUc08cS9ulbxQPmbEBYY1pID
 +u9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Zd56CSP9N2M4FrfN9ySWd7Nzjr+sOLOVU8sX9ZsvxYk=;
 b=Odt9rUb+bceSSGq8xIKIgwVN2K+7AxUVXiw46da4He2D9KqaQoArozwfnHgQdoynkL
 vidhn5zwFuElG77zauUmF1brqN3Jzck/O9I+M2gsMbDjeR0Xd3IpLb0fOPfTl3cKIdvZ
 OVdgxs9ahDOY4L7923dOC+W6GxTNkg+JfpQtOsNHPZAx9d5bvmHbfo6foAL7DsYpZ5vJ
 aF2K8TukQSnimxn8QkTaG14hFkHQlgbrtiHr0HDoDuioxRSHiRq5a0rM8WBUg0hZTRzL
 pk+YAEfgH8CEwV/Lw3ftrQWv3B2ooODDR9xfFXHRoWujWSwsmB7m6ptjf56B1jAGFxgp
 oWBQ==
X-Gm-Message-State: AOAM532O3FsdPBCXuDCTgH551jG5Y63XACGWeO1SP+meMPag36trhXOE
 /zAzXF3n/mtYIYugyB2n8dE0YQ==
X-Google-Smtp-Source: ABdhPJxRZn/pXIUEkZhANETiTogTGf06kqn6Gs1x5NZFGFUPmFe5McyxpBqwN0tWHmbj+GOZ4kP/eQ==
X-Received: by 2002:aed:3fa5:: with SMTP id s34mr4444014qth.343.1591276988114; 
 Thu, 04 Jun 2020 06:23:08 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id 126sm4330150qkj.89.2020.06.04.06.23.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 06:23:07 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.93) (envelope-from <jgg@ziepe.ca>)
 id 1jgppq-001CIj-Sr; Thu, 04 Jun 2020 10:23:06 -0300
Date: Thu, 4 Jun 2020 10:23:06 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 09/10] treewide: Remove uninitialized_var() usage
Message-ID: <20200604132306.GO6578@ziepe.ca>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-10-keescook@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603233203.1695403-10-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_062310_175894_34AC896F 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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
Cc: Andy Whitcroft <apw@canonical.com>, clang-built-linux@googlegroups.com,
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

On Wed, Jun 03, 2020 at 04:32:02PM -0700, Kees Cook wrote:
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings
> (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> either simply initialize the variable or make compiler changes.
> 
> I preparation for removing[2] the[3] macro[4], remove all remaining
> needless uses with the following script:
> 
> git grep '\buninitialized_var\b' | cut -d: -f1 | sort -u | \
> 	xargs perl -pi -e \
> 		's/\buninitialized_var\(([^\)]+)\)/\1/g;
> 		 s:\s*/\* (GCC be quiet|to make compiler happy) \*/$::g;'
> 
> drivers/video/fbdev/riva/riva_hw.c was manually tweaked to avoid
> pathological white-space.
> 
> No outstanding warnings were found building allmodconfig with GCC 9.3.0
> for x86_64, i386, arm64, arm, powerpc, powerpc64le, s390x, mips, sparc64,
> alpha, and m68k.

At least in the infiniband part I'm confident that old gcc versions
will print warnings after this patch.

As the warnings are wrong, do we care? Should old gcc maybe just -Wno-
the warning?

Otherwise the IB bits look ok to me

Acked-by: Jason Gunthorpe <jgg@mellanox.com>

Jason

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
