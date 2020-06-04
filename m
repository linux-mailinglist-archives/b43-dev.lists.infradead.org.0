Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D4D1EE9ED
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 19:58:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oe1ewZYYywRBXHC1UcEhEfCUZCO4y7FZQ4MBS7JOfxU=; b=pCD8XS5VQfFct8
	rp5SW+okDHT+8g0PceqHgC6kABZyQlJprbfusppb96HEBAbCzjMKWxo5+4uQ9i+r0oCHSpvIzkFiO
	ABDSgR7MxqFaw1bS3oFG+6hwCccMbaAacSwdm6z+Q8Vm2Yyoa/hc5jhPq7B78NJwSJVFRROJwSae/
	Jdc6U2lA0OYagI853ImotNU14MxfUxQ8ycdmEPnqpArtqr1AQhwpkKfw+CJduxHkqCp4WxgkRnMHA
	Oq6hdDJdsEJPqg9joxM7ZtlmKhk4r8wDXX4cxVsBvSX8Hz4jdo5TGQ/M0eVnHMFwZ+mCz0I6zQeNO
	M4F3NtxlmFfTaVNjTtWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgu7w-0005Lg-UI; Thu, 04 Jun 2020 17:58:04 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgu7t-0005LG-Pf
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 17:58:03 +0000
Received: by mail-qk1-x742.google.com with SMTP id b27so6995453qka.4
 for <b43-dev@lists.infradead.org>; Thu, 04 Jun 2020 10:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ylFM7xcrRPttXnSFsxxMsniM496bjo9TahOp0BQ4KWQ=;
 b=dp1MW0oLsIVpf8P1GqlJ7ywKbTALgi380UyzwJhLZxxjLZbExXSS3+DNraBRJx+RxA
 2YNRIqPWKCJwUAt2Ionyk91M424aXFCth771TTbwhKuAi/5z09C6/Wr39Wytw6IFYat4
 ROGMU+gTfjKOfKx/KnMfK4lHl61/+H90NG+NU9ft1Ad329Ugd8oNWQRmnDyTDrH84VcG
 NHqJ/pa7Z8WtA7tv5ssR9OBolcmhh/Z0Chu/DqhjQRZD68jbMjVitMLn9/18eeVfDBtl
 W6iFo32dBc0/Xz9TBC1xS9lWFSwriSPTsiMKkjJI2/Fy1v0kJA0h8NiDLZa3m0zxOiRF
 iMLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ylFM7xcrRPttXnSFsxxMsniM496bjo9TahOp0BQ4KWQ=;
 b=rCEhLJZo1071HC6xaVU2lcIMC/SBIYCKXgPzqLuDmQ1sjGc0UKyPiv5t7osDBPLoE/
 Mqs0KW8gb0Q5kqnAw+foWjLuwsb+eiBv67mpgiFPhqFIBhBXDlbEii+TxX8B0k8vqv0v
 W9b6GFgy4JRw0za9XkhAhooHEmwSpaPps8plJ+GgdRiqfByJvN3WmDH9u4dwr69/UMfK
 SSHvJWxE8Qa3fjGBYDZfaybMg67B5tbfvUUVmQkBkaxvsb6R3EfmGerMh0vKOsBbD3If
 Wmrmieoq9ZUzWvK3p13aBaeItZ7eK7rRNiDTH0NfymG4KnJEn91BvyDMDAwBSJiguzdO
 T/OA==
X-Gm-Message-State: AOAM53374tOH+BLNcGXIstyfnlzG0Lpzqs278xC52I8EomnvV0fCTZtn
 GzYezmCW6aLrvFBsEp30M/VdFw==
X-Google-Smtp-Source: ABdhPJzYt2lslt13YiEsonKEZ+jBx4HFt1d65mCYXH6vxqHPQIS81ppOdKBUfUx77lLK8R8poNgzug==
X-Received: by 2002:ae9:ebd2:: with SMTP id b201mr5788109qkg.409.1591293480332; 
 Thu, 04 Jun 2020 10:58:00 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id t43sm5788444qtj.85.2020.06.04.10.57.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 10:57:59 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.93) (envelope-from <jgg@ziepe.ca>)
 id 1jgu7r-001H95-GE; Thu, 04 Jun 2020 14:57:59 -0300
Date: Thu, 4 Jun 2020 14:57:59 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 09/10] treewide: Remove uninitialized_var() usage
Message-ID: <20200604175759.GQ6578@ziepe.ca>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-10-keescook@chromium.org>
 <20200604132306.GO6578@ziepe.ca> <202006040757.0DFC3F28E@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202006040757.0DFC3F28E@keescook>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_105802_015585_0196E0EB 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
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

On Thu, Jun 04, 2020 at 07:59:40AM -0700, Kees Cook wrote:
> On Thu, Jun 04, 2020 at 10:23:06AM -0300, Jason Gunthorpe wrote:
> > On Wed, Jun 03, 2020 at 04:32:02PM -0700, Kees Cook wrote:
> > > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > > (or can in the future), and suppresses unrelated compiler warnings
> > > (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> > > either simply initialize the variable or make compiler changes.
> > > 
> > > I preparation for removing[2] the[3] macro[4], remove all remaining
> > > needless uses with the following script:
> > > 
> > > git grep '\buninitialized_var\b' | cut -d: -f1 | sort -u | \
> > > 	xargs perl -pi -e \
> > > 		's/\buninitialized_var\(([^\)]+)\)/\1/g;
> > > 		 s:\s*/\* (GCC be quiet|to make compiler happy) \*/$::g;'
> > > 
> > > drivers/video/fbdev/riva/riva_hw.c was manually tweaked to avoid
> > > pathological white-space.
> > > 
> > > No outstanding warnings were found building allmodconfig with GCC 9.3.0
> > > for x86_64, i386, arm64, arm, powerpc, powerpc64le, s390x, mips, sparc64,
> > > alpha, and m68k.
> > 
> > At least in the infiniband part I'm confident that old gcc versions
> > will print warnings after this patch.
> > 
> > As the warnings are wrong, do we care? Should old gcc maybe just -Wno-
> > the warning?
> 
> I *think* a lot of those are from -Wmaybe-uninitialized, but Linus just
> turned that off unconditionally in v5.7:
> 78a5255ffb6a ("Stop the ad-hoc games with -Wno-maybe-initialized")

Yah, that alone is justification enough to do this purge.

Jason

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
