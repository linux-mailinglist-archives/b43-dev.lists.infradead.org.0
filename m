Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A752C6DC
	for <lists+b43-dev@lfdr.de>; Tue, 28 May 2019 14:44:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FDKdg5D70rGuPwhawvtO/u1X9DiBmk9w2OoNaLzZ7lg=; b=QuCQYbBq7TyRFG
	+t4q3Ykb7pSNIfH3H40oLcX7JJR0vaVnSjqUW7zkwD6OJpCQKpnZiLVuT0tvMkcXYxWgw3WwPzyVu
	PVMw51IjMevBhrt5eQi3afSX6RV8rR6XrEdzVADnvxxO+3KpEjpOpp1yRhmnXywvs2VwtpXTNaGZt
	ymU2Ms7HbkninmCgpsj0+aBSAhXn0FWOcQeYonWtst1PkObrFQGWmobjnYiNX8Wc+3r38nc8LZ4Bp
	cRXt9R9FZLBfrEe72Nkc5uVQUW5LsrC6LoYho2y+7hy02EyvdYpf2+o2+VJrwL/e1+I4+RSWh0LYc
	zRWr1TTrP5uYGFPNNZ4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbSV-0008R3-4q; Tue, 28 May 2019 12:44:03 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbSN-0008Qh-Um
 for b43-dev@lists.infradead.org; Tue, 28 May 2019 12:43:57 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id A651660A24; Tue, 28 May 2019 12:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559047435;
 bh=w9bX69ME/NHLXTgt9b0N8rt7z+QC2MaVUpAM+dM7Ouw=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=LUcrB9ExAFl/5ON0ivYboIdJ7k3xs/M5eFubgMsmdDSWg95T8w9HrJz7wrIw33rvX
 +2bbxr3NmUZ4500+t3phxt4muXTip54tKHqO4zSBHnV0DEzqGvPIWLycxhjSfwdJSQ
 bDU0iJN9Obuq+ul1DFUBFAbMTPCGPV/CCHiZw3DY=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID,SPF_NONE autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 629DD6087F;
 Tue, 28 May 2019 12:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559047433;
 bh=w9bX69ME/NHLXTgt9b0N8rt7z+QC2MaVUpAM+dM7Ouw=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=UYmTy8UhwZkN7O99jfdWUYBHNErNjiu/uGhzGUI+X7HnvCH2DrEZsCb9iNlWLkYcW
 GEBkqN0yCRNk+ox4yLNTkqhnwtIdCIJzydFf+e8EjEe3EEqKeBx9+4o5gh9zGI1s/b
 D37PYu0TLm/S+hFazSqPbFk38YNSGdn9+CRay3ME=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 629DD6087F
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] b43: Avoid possible double calls to b43_one_core_detach()
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190504091000.18665-1-baijiaju1990@gmail.com>
References: <20190504091000.18665-1-baijiaju1990@gmail.com>
To: Jia-Ju Bai <baijiaju1990@gmail.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190528124355.A651660A24@smtp.codeaurora.org>
Date: Tue, 28 May 2019 12:43:55 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_054356_006669_891F359C 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: b43-dev@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: b43/b43legacy Linux driver discussions <b43-dev.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/b43-dev/>
List-Post: <mailto:b43-dev@lists.infradead.org>
List-Help: <mailto:b43-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=subscribe>
Cc: yuehaibing@huawei.com, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jia-Ju Bai <baijiaju1990@gmail.com>, b43-dev@lists.infradead.org,
 colin.king@canonical.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Jia-Ju Bai <baijiaju1990@gmail.com> wrote:

> In b43_request_firmware(), when ieee80211_register_hw() fails,
> b43_one_core_detach() is called. In b43_bcma_remove() and
> b43_ssb_remove(), b43_one_core_detach() is called again. In this case, 
> null-pointer dereferences and double-free problems can occur when 
> the driver is removed.
> 
> To fix this bug, the call to b43_one_core_detach() in
> b43_request_firmware() is deleted.
> 
> This bug is found by a runtime fuzzing tool named FIZZER written by us.
> 
> Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>

Patch applied to wireless-drivers-next.git, thanks.

ec2e93cf1910 b43: Avoid possible double calls to b43_one_core_detach()

-- 
https://patchwork.kernel.org/patch/10929623/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
