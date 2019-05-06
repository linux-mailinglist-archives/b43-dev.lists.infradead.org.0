Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6771461F
	for <lists+b43-dev@lfdr.de>; Mon,  6 May 2019 10:23:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tZ59wH7EKfH+PMUMazqeWEPykEO9rEc3WbNU1G76Weg=; b=djAPzCi3p6KgX/
	CfjKk9CHv+Oai/njQn3JD7M2dfeq45o5aPqL7ehzRzmVrH1R4VqMMlE3OUJZH9PaeRV7SxTd8XL7n
	ywI0D9ag2oPGzPgvG9j2kprPcAcc5yIErBFlYPxvATWUmkLFwIUK5zjZsGc9MONyErPzzgH+tfhYi
	4pY8U8z03MY4m1xi2C6X8oNNsbwNaL/GM9l4buMSXWIwecjBoMoMTmhs5LbS7K6YavYTXjMgvdMcS
	Q5BKfYOVfeYKDBQYt7tDJqTGMK7g35wj2+Kf9lmHZfzkoNOqSIao+4guITa3Ro2lwjIsNJr1vCtA4
	DPihCwXVjoaM8ANzrQqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNYt2-0005aV-PW; Mon, 06 May 2019 08:22:13 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNYss-0005ZO-Uh
 for b43-dev@lists.infradead.org; Mon, 06 May 2019 08:22:04 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 0042561156; Mon,  6 May 2019 08:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557130922;
 bh=ZZzz+rr8wUgFTo9VKrB62hBLxoIXWzDCDWK5CKHD47c=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=k/T2Hi+1dEH3Xxok1BklWNGne0nrL4zinqpA3uZWOlVWcljkFZ2lVbaEgq7+fCTxQ
 xSck5yXQCghMqbdYiw1TUDihjBl0KUDwUQCNKRY+ifFc0OC1vcSLbjjBxIyLrBhmWO
 kGJu/dfw/m3g3PeiZya16i9eQhUkBoJ3raFtSf94=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from x230.qca.qualcomm.com (37-136-65-53.rev.dnainternet.fi
 [37.136.65.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A7E8F60770;
 Mon,  6 May 2019 08:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557130921;
 bh=ZZzz+rr8wUgFTo9VKrB62hBLxoIXWzDCDWK5CKHD47c=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=lSRn3hu5N/n0P+oGt6NqE4QpryoJ5SmalOwAxzaiMOn7s415F4X0ULqCUeiEucDQB
 ZP9RRennoLrtyU4NEqSfQyNGan1k7eXt9YkyBybcfHEkKRCzBmSEX3HYykvhpaO8M0
 L6WwHtMe3NiIGJCdB9OslHXkv7bTkdg0agGfiBzA=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A7E8F60770
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jia-Ju Bai <baijiaju1990@gmail.com>
Subject: Re: [PATCH] net: wireless: b43: Avoid possible double calls to
 b43_one_core_detach()
References: <20190504091000.18665-1-baijiaju1990@gmail.com>
Date: Mon, 06 May 2019 11:21:55 +0300
In-Reply-To: <20190504091000.18665-1-baijiaju1990@gmail.com> (Jia-Ju Bai's
 message of "Sat, 4 May 2019 17:10:00 +0800")
Message-ID: <874l68vvq4.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_012203_008470_E605B461 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 b43-dev@lists.infradead.org, colin.king@canonical.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Jia-Ju Bai <baijiaju1990@gmail.com> writes:

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
> ---
>  drivers/net/wireless/broadcom/b43/main.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)

You can use just "b43:" as prefix, no need to have "net:" nor
"wireless:" in the title. I'll fix it this time, but please use correct
style in the future.

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches#commit_title_is_wrong

-- 
Kalle Valo

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
