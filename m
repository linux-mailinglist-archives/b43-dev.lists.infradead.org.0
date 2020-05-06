Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBE61C6C23
	for <lists+b43-dev@lfdr.de>; Wed,  6 May 2020 10:45:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BSpNHQXsFqY4/R/hfrJgO+SXidi1o2jYNFdWMv6AY6Q=; b=QwZf1xvJTL5mO/
	bGFk3LvKM12E1rtSsX6QeSpQpuns6fGrupDegSEpl+c8/OxL6bz9BLnv6ddMQynuCVmfQlyGu5xQz
	tx4gMkOcSCkj27G4NzriU8l3CHnDRG/SkDDg8xw3pJraSyycrKidPXB5TFPoGDpgoyCN/crzBHSjA
	BPZkMyx1AirYOjXPYeji+WVaSCCFhrmlQ3BZOg4aQ68qF8N2dRvcThu1EwjC5tx4s3aQcG0Ed6K4t
	d7mhzzwFwFxvjyQFqgdvgAfN5uac9I3HSmTxfdP9hDMHr/FZZrOJKvkK+c3c6+y6TSdLC2RiQDb2r
	Gvq/CUb3N2lQQiOBoaCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWFgY-0007g8-3L; Wed, 06 May 2020 08:45:46 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFgM-0007WZ-Kq
 for b43-dev@lists.infradead.org; Wed, 06 May 2020 08:45:38 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588754736; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=Cq0w218bAG5z/ZkdwIfzHBhWjL3hPo37a25LqwxjbIY=;
 b=CjSF9gSRMzU0qtWf5xvgCj5qTbWek5/9lkOcM6JO7qjgHO1OcRw0j6CYzlbC/IQplsQbSp7e
 qaOcWZRdbLduR5o4vzFbmeaqegg1aUFRT5CA0dP4jCXo+/HQmph1Pm+3C+WlIIsDzcsgHISB
 +DGQm/kvf7nmNXWzWY4WvHbVqR4=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyIxODVhOSIsICJiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb27921.7f460e758ca8-smtp-out-n04;
 Wed, 06 May 2020 08:45:21 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 8E949C432C2; Wed,  6 May 2020 08:45:21 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 59FF6C433F2;
 Wed,  6 May 2020 08:45:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 59FF6C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] b43: remove Comparison of 0/1 to bool variable in phy_n.c
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200504113300.40895-1-yanaijie@huawei.com>
References: <20200504113300.40895-1-yanaijie@huawei.com>
To: Jason Yan <yanaijie@huawei.com>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20200506084521.8E949C432C2@smtp.codeaurora.org>
Date: Wed,  6 May 2020 08:45:21 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_014537_084179_D0503114 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jason Yan <yanaijie@huawei.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 b43-dev@lists.infradead.org, tglx@linutronix.de, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Jason Yan <yanaijie@huawei.com> wrote:

> Fix the following coccicheck warning:
> 
> drivers/net/wireless/broadcom/b43/phy_n.c:5510:19-32: WARNING:
> Comparison of 0/1 to bool variable
> 
> Signed-off-by: Jason Yan <yanaijie@huawei.com>

Patch applied to wireless-drivers-next.git, thanks.

e2b9ac590810 b43: remove Comparison of 0/1 to bool variable in phy_n.c

-- 
https://patchwork.kernel.org/patch/11525529/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
