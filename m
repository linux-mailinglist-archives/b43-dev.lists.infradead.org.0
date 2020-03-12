Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9037C1831C9
	for <lists+b43-dev@lfdr.de>; Thu, 12 Mar 2020 14:41:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HafwePUZMgzqV3rY0WGw0wVhu+NXTPOsIr+C5t48i1Q=; b=uSj4SW7ychcKs0
	0k9cXV0tRit0F/xjZY+8JF2rPKfN+PhfzVl6Lq/2B3+yazuaaUAUqUpaMfcwXULv9mqHRGyYyWUdM
	pmihSAsP2e/abkMrXheDhDEEVkTEVN03Ccqd/747Jcbepo0H/IZuGZq2HJDThLstKijipncLc+wp5
	k53VhImHnBNoZV4Pd8G81RXdfNmpwG0qn8jg0PCTIicrLaFlf4bTobExrZAhwalyd9cyohm7oXz9v
	kGGKkVpQDH50UogasYcrM61RqbIlOkuvIxvilLptTRSYj8zGRId3fEhUeKdBOuaU2NExpswSsB1bI
	brO0Cr+PRh/BDB6rYMvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCO5J-0002vc-C8; Thu, 12 Mar 2020 13:41:13 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCO5A-0002v5-Vs
 for b43-dev@lists.infradead.org; Thu, 12 Mar 2020 13:41:06 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1584020464; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=OW811nEQHKGfc/7AlbAVoyMbjsDCL3uRBlX6m0NFH6U=;
 b=BRTwg+vdtzCBPXvYsWG851mUVLaUeK3RRWy0CcRka6RiZLU/o104RUpL7qEC6t+WuNMB4ptk
 ZFJs+Zctz9/YQEL0OwYiKAvTXalNFsnE6IMS5Nt4rGcDryOr4JiAUMwl3+xLMYLH1WElI3gq
 yqKFlYxAWEn1NKjDTEKfD4qoE48=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyIxODVhOSIsICJiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e6a3bef.7fde6d9147a0-smtp-out-n02;
 Thu, 12 Mar 2020 13:41:03 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 0D9B3C43636; Thu, 12 Mar 2020 13:41:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 11D8DC433D2;
 Thu, 12 Mar 2020 13:41:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 11D8DC433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] b43legacy: replace simple_strtol() with kstrtoint()
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1582085759-17998-1-git-send-email-qiwuchen55@gmail.com>
References: <1582085759-17998-1-git-send-email-qiwuchen55@gmail.com>
To: qiwuchen55@gmail.com
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200312134103.0D9B3C43636@smtp.codeaurora.org>
Date: Thu, 12 Mar 2020 13:41:03 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_064105_089495_B6CAE5B8 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: chenqiwu <chenqiwu@xiaomi.com>, linux-wireless@vger.kernel.org,
 davem@davemloft.net, b43-dev@lists.infradead.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

qiwuchen55@gmail.com wrote:

> From: chenqiwu <chenqiwu@xiaomi.com>
> 
> The simple_strtol() function is deprecated since it does not
> check for the range overflow. Use kstrtoint() instead.
> 
> Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>

Patch applied to wireless-drivers-next.git, thanks.

871b4b48cdbf b43legacy: replace simple_strtol() with kstrtoint()

-- 
https://patchwork.kernel.org/patch/11390321/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
