Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C43CEAB53
	for <lists+b43-dev@lfdr.de>; Thu, 31 Oct 2019 09:08:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rYeNejIEKW4LDWJcd5XkvuvGjwx8iIc/WG0hDAsa71w=; b=Fk+Sn6JieGf3qh
	S4kIYQ4z22T2swSVlZPoTaHeeeUBfLipe1x9paqeO3OZN/1DPCLN0XnUr3gq6bnCGR6O8hy62/9NN
	J6vUdUf6YXhE8a0uXOYpfojraZM4k2aDc2PgRLzsA8bPdVIBe0puiHuBViwjIyG/0t385Qpr/z7Lh
	FppFY5RvpPVLfsaC/lza6xtDLK9UIo9mrRdC56f7KpeXKbCl/JjQcmLlX4iYHVLzTNQTjHLPi1yI1
	bh5hM5Mj6M70ftQ67Rfh2W9yxQlxScshhuu3Zj0T3MjMO332Xcl9NQAzIrEVcGO/FfiV+UMdKsEdz
	j6r518LJ/zZvMCJ9m7vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ5Ur-0005Ja-Rw; Thu, 31 Oct 2019 08:07:57 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ5Ul-0005JE-1c
 for b43-dev@lists.infradead.org; Thu, 31 Oct 2019 08:07:52 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 775D960A63; Thu, 31 Oct 2019 08:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572509270;
 bh=tecBCzRev0wId8FRA31CVuEhKSpiMtEzf7LYR2PrivA=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=GK6kx2SHv8lW4sShv24hmEqjrZWflLcUBPukwIvrgM4euUyzZ5IxT4Fa2e6Icdv7l
 1QdpLkEk9wssuZ1S2puZcoJ0CGROLFpne+M8JIOLSiyYPeRZJkfmhDGTxyDQ20+7Q9
 evvzhpEO6uSKagA7iaVypoRFF64BLDZI/S1qXMzM=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D6A54609CA;
 Thu, 31 Oct 2019 08:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572509269;
 bh=tecBCzRev0wId8FRA31CVuEhKSpiMtEzf7LYR2PrivA=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=MhspxZ3NdajuTh7idtQvFjVoF+7V+ZqmvfCc8vkBhh/w+UzmPU6Xr1H3MZCXxHtro
 nTA1FBkaJ6XvO/L1Xa4TZQlrH7gT7xvTXiOqAEOBq7FJxhbhAfldF5obGTdEsRYtim
 ttP6HhLEJTKFvqdoc9k/zxoGSay+D/TIvhDzchKs=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D6A54609CA
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] b43: main: Fix use true/false for bool type
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191028190204.GA27248@saurav>
References: <20191028190204.GA27248@saurav>
To: Saurav Girepunje <saurav.girepunje@gmail.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191031080750.775D960A63@smtp.codeaurora.org>
Date: Thu, 31 Oct 2019 08:07:50 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_010751_106275_A40F45AC 
X-CRM114-Status: UNSURE (   6.18  )
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
 linux-kernel@vger.kernel.org, saurav.girepunje@gmail.com,
 baijiaju1990@gmail.com, saurav.girepunje@hotmail.com, swinslow@gmail.com,
 opensource@jilayne.com, tglx@linutronix.de, will@kernel.org,
 davem@davemloft.net, b43-dev@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Saurav Girepunje <saurav.girepunje@gmail.com> wrote:

> use true/false on bool type variable assignment.
> 
> Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>

Patch applied to wireless-drivers-next.git, thanks.

6db774c17250 b43: main: Fix use true/false for bool type

-- 
https://patchwork.kernel.org/patch/11216303/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
