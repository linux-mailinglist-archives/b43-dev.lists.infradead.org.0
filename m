Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C94E21CEF8D
	for <lists+b43-dev@lfdr.de>; Tue, 12 May 2020 10:54:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kEaRtayKXyfR5OpoV2TS6/yUFKyUzbmwKYXUyaIppgA=; b=tqLs0IcVbePwJs
	H37g8/GyJMbP2MuNqVfX7kiCmDIRg0dSk8PrQyQvNFkdKfifDyblvo6h39tN/v6wJOzNBe+SjXqxx
	dLKq9Nf4V+hjVkDTWOlPcQOTBNPemvJ3T2r1Mro8X/xUa/Kd8aq5T+HUd+WA0/XU1bZboMgSoUzT9
	qPU2LU4vqr6Bos3o+WLInHPEFnRGeoaFqI93QbBlAf6Rlev8WTEWfUK6RCh0F3nsYaRdi/KKwC5eb
	+OJczN/4AmyIiZ1SRHYgucsGA+OPJBBL4TR1y9ZfM6dmCpDWKAxqg23ekVtfdiGvBadbSc2kTsvxM
	RUQCfFR0t8sta9XLk0/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQg6-0003Ou-MP; Tue, 12 May 2020 08:54:18 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQfx-0003N9-Gc
 for b43-dev@lists.infradead.org; Tue, 12 May 2020 08:54:13 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589273651; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=4myBv0Eb7CjTFQWgbEm87difECtLoTIZZdLheI+zz60=;
 b=Pk4d8Tqp5+a0uR/pFQNVSU9aymlmPViCZfKaRDxhIequEPjDJrq7dy9uDQcwzlA0z4VcFa/c
 5PlIbyF9jX1vG3dwzE+zXrtiVQJD85EZJWqy55+MmpL6rYNSb5lbvLd/4zOvt+E1JFGXpSP1
 nnu+v6LjnaW+8PKPGKRcYAINBKI=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyIxODVhOSIsICJiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eba6429.7f0499301ab0-smtp-out-n01;
 Tue, 12 May 2020 08:54:01 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 81AF7C43637; Tue, 12 May 2020 08:54:00 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6B1F5C433CB;
 Tue, 12 May 2020 08:53:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6B1F5C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] b43: remove dead function b43_rssinoise_postprocess()
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200507110741.37757-1-yanaijie@huawei.com>
References: <20200507110741.37757-1-yanaijie@huawei.com>
To: Jason Yan <yanaijie@huawei.com>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20200512085400.81AF7C43637@smtp.codeaurora.org>
Date: Tue, 12 May 2020 08:54:00 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_015412_061540_591ADC93 
X-CRM114-Status: UNSURE (   6.55  )
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
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

> This function is dead for more than 10 years. Remove it.
> 
> Signed-off-by: Jason Yan <yanaijie@huawei.com>

Patch applied to wireless-drivers-next.git, thanks.

f2cd32a443da rndis_wlan: Remove logically dead code

-- 
https://patchwork.kernel.org/patch/11533111/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
