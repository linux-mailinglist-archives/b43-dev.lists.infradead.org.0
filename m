Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6D61EDEF2
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 09:58:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=jJ0EGknHeQiyqvRos6kpFx+LjXZ2Yoixv0Y9AmSHUH8=; b=CLz
	POdXBOWW5cy+MJWIq6rmqdL/tD3W11r6HZhd1u1C/0mt3g2+IPWxX0/drZ0fy4Ycx5eium5SJZ6mM
	gnRoSVuDrckPpK9hJy6SsI8P0NE3BydRHEeb8NcrfN2BtfdGuQwMTUguSw589JUXigOF6bt8aYgHa
	ZKwEoD7BQwASSEbUfjXJvk6Hm3CaSYazhbrPJuQN0JcVutVtY0P2Yzv9hc7IN+SoBVXSf4SRjWEC2
	9cLk3GV4i7lTt9fdrXRS3sD/BGHF1VROpKdiEcSOZVAWcHIUKOIFUtJyG9QrsN1iDc4t0AAk7VW2D
	MUcmKPD+s0BxHBl4xqhPOK1ShPkMXJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgkla-00035I-3k; Thu, 04 Jun 2020 07:58:22 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgklW-00034M-La
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 07:58:20 +0000
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1jgklM-0007rw-IR; Thu, 04 Jun 2020 09:58:08 +0200
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id CB26BFFBE0; Thu,  4 Jun 2020 09:58:07 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 01/10] x86/mm/numa: Remove uninitialized_var() usage
In-Reply-To: <20200603233203.1695403-2-keescook@chromium.org>
Date: Thu, 04 Jun 2020 09:58:07 +0200
Message-ID: <874krr8dps.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_005818_845743_D706C2E9 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Kees Cook <keescook@chromium.org> writes:
> -#ifdef NODE_NOT_IN_PAGE_FLAGS
> -	pfn_align = node_map_pfn_alignment();
> -	if (pfn_align && pfn_align < PAGES_PER_SECTION) {
> -		printk(KERN_WARNING "Node alignment %LuMB < min %LuMB, rejecting NUMA config\n",
> -		       PFN_PHYS(pfn_align) >> 20,
> -		       PFN_PHYS(PAGES_PER_SECTION) >> 20);
> -		return -EINVAL;
> +	if (IS_ENABLED(NODE_NOT_IN_PAGE_FLAGS)) {

Hrm, clever ...

> +		unsigned long pfn_align = node_map_pfn_alignment();
> +
> +		if (pfn_align && pfn_align < PAGES_PER_SECTION) {
> +			pr_warn("Node alignment %LuMB < min %LuMB, rejecting NUMA config\n",
> +				PFN_PHYS(pfn_align) >> 20,
> +				PFN_PHYS(PAGES_PER_SECTION) >> 20);
> +			return -EINVAL;
> +		}
>  	}
> -#endif
>  	if (!numa_meminfo_cover_memory(mi))
>  		return -EINVAL;
>  
> diff --git a/include/linux/page-flags-layout.h b/include/linux/page-flags-layout.h
> index 71283739ffd2..1a4cdec2bd29 100644
> --- a/include/linux/page-flags-layout.h
> +++ b/include/linux/page-flags-layout.h
> @@ -100,7 +100,7 @@
>   * there.  This includes the case where there is no node, so it is implicit.
>   */
>  #if !(NODES_WIDTH > 0 || NODES_SHIFT == 0)
> -#define NODE_NOT_IN_PAGE_FLAGS
> +#define NODE_NOT_IN_PAGE_FLAGS 1

but if we ever lose the 1 then the above will silently compile the code
within the IS_ENABLED() section out.

Thanks,

        tglx

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
