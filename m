Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA82FEAB58
	for <lists+b43-dev@lfdr.de>; Thu, 31 Oct 2019 09:08:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iIUEe4gro7kInEmrMZuG/0AqxBCTwA5vCrc5p66bfNk=; b=Vdwz8sAfw9+xhI
	wfvOL4wkpNSTTAJdTZbbZFrGc8bTsuKLLOUxtB6cK5c004fhjXrYfRedTVSjoZp0VP1zMvXMsCw7E
	tzIplWXf4/FQcPVxY9nPJ7W+UwF/iIJW3cZky4lSeV9eVfn5UVPWZMHiPBiP5RzL1CN56ZSgNhCWh
	ATlpm5t98ns+xgUJmi1NZjLQvwYMEvwfuHagwEgJMwd8GbzkpTdibIhajZIsDaugcUm9sUZRlqI75
	nyX1FOr3UWeJUhQkNp1Ju4J6M2DqpoPzYr3clb9uKSrasvBXtSedR0u7O4or1oav2ICyVjaGY6loU
	Zl46EkeMzuDgQbSGpqyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ5VY-0005h6-V2; Thu, 31 Oct 2019 08:08:40 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ5VV-0005gR-2N
 for b43-dev@lists.infradead.org; Thu, 31 Oct 2019 08:08:38 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B0EE660A23; Thu, 31 Oct 2019 08:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572509316;
 bh=MDrT9v0ThT/J4lxmhoR8Yct7jp86wfCet8Yba/5pTNU=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=Sw1TFbmu1+9dI8oq2DvllKhbdQIOBAbZ4rTJ/Cw2HKbTvMviCNBPOGQGrG+jpySzy
 gp+UrH0aBLg830amk4zPn8FVFlDIbGXdavfjCWufmsTPN0yvIlCy2ZzD6oXN5Y0G8D
 ff85bq61SpNtSucAEo4rYirlFbuMfzILlTdzfvmw=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 698D260540;
 Thu, 31 Oct 2019 08:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572509316;
 bh=MDrT9v0ThT/J4lxmhoR8Yct7jp86wfCet8Yba/5pTNU=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=ospIRJ24M0damMZFiGDO/HkVNg8r5rCi8glrv06VuJBORoY2mDgxn2wdmEuzinH2M
 ZrlHAHUBPDLSS5oFydkD6RtI+FpCReiG6Z41G6rYe3grFKPMIdXCvSJm2l/mLTeKa+
 1JRy5OLpVZCUwykRo6szRYonYvHlKlDcXCmm7/3Y=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 698D260540
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] b43: dma: Fix use true/false for bool type variable
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191028191259.GA27369@saurav>
References: <20191028191259.GA27369@saurav>
To: Saurav Girepunje <saurav.girepunje@gmail.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191031080836.B0EE660A23@smtp.codeaurora.org>
Date: Thu, 31 Oct 2019 08:08:36 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_010837_137697_7ECC8890 
X-CRM114-Status: UNSURE (   5.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, saurav.girepunje@gmail.com, mcgrof@kernel.org,
 saurav.girepunje@hotmail.com, swinslow@gmail.com, tglx@linutronix.de,
 davem@davemloft.net, allison@lohutok.net, b43-dev@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Saurav Girepunje <saurav.girepunje@gmail.com> wrote:

> use true/false for bool type variables assignment.
> 
> Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>

Patch applied to wireless-drivers-next.git, thanks.

a9160bb35ad9 b43: dma: Fix use true/false for bool type variable

-- 
https://patchwork.kernel.org/patch/11216307/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
