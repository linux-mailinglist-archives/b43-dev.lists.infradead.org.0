Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E48D831AB
	for <lists+b43-dev@lfdr.de>; Tue,  6 Aug 2019 14:44:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iKb3Na/9QzqOy7QswmfA9RgDzUnc27g1tiJbywEbVmo=; b=FOxcDzsLbd6rFb
	9ctAUSGqPg0JDVNEKXha3PztztdL4UfqS/rP521V/WVyZlnh+60ZGIjeql+Zu8FV0sP0LZ55N22cV
	6rOfrPVqOXxaMGVgw8qU3sJrGSEyTGwqEbbMco8desysVtCyBC61n8GnTG4ToNxIvwYYD/e0V5jZu
	hKuQNozWJ0HnRX9C4/FdQjspOjGfXQ+QGop0AmFwf17RfI0r1Ecu4hsaY+Ms7q3SR53wNi6LefB5X
	IyZRozkE2kF2U7puCMWt4mlD/C71ZhPQX+gu6iew1+68fl0iqW54/ErYzdQ9Afr2aqLOrM5kNIWvU
	SD/20Mj8zr/QdrnTZP5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huyp8-000692-Ol; Tue, 06 Aug 2019 12:44:19 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huyoz-00066I-2x
 for b43-dev@lists.infradead.org; Tue, 06 Aug 2019 12:44:10 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B793C609CD; Tue,  6 Aug 2019 12:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565095448;
 bh=HAu7TsW0Iie3+5DrXvxcWN8iTVu6QAEL2sslX8UhT5k=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=lo8RqwlQE5Xi0nIj0VPa0UZ39EZ7qOVHWA4qL+17ZIPV1oi0tasFEzwjKhAVr9W7P
 AG9dsCg3IgIHL6rHGAwfXvdeb5zl01aSrEQIT0FP/jh0M3UGMn4efvjXoqdAfpAYQt
 JCUurAAd7ArIuFYWypYT2GzIaNQ6d73JrmziUF1c=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3EDB960867;
 Tue,  6 Aug 2019 12:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565095448;
 bh=HAu7TsW0Iie3+5DrXvxcWN8iTVu6QAEL2sslX8UhT5k=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=RGc2qDdndYOY+tJhAqFvfznPJbOUNFNJLTIZtdJTACWHYqLt5heBo8w2IDXYmogtZ
 ibyCZrRLFye6jgs4SmRc+JJANJa3UFjI9WHDYJSvrSydrjfrXc5nEqubhN3V0Z4dZB
 XP1L/YwCUcHLqvAzcfurviqNbZP4JdTD1rZ9eHFs=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3EDB960867
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH V2] b43legacy: Remove pointless cond_resched() wrapper
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <alpine.DEB.2.21.1908021353190.3924@nanos.tec.linutronix.de>
References: <alpine.DEB.2.21.1908021353190.3924@nanos.tec.linutronix.de>
To: Thomas Gleixner <tglx@linutronix.de>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190806124408.B793C609CD@smtp.codeaurora.org>
Date: Tue,  6 Aug 2019 12:44:08 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_054409_226548_6B16D850 
X-CRM114-Status: UNSURE (   8.39  )
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
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Thomas Gleixner <tglx@linutronix.de> wrote:

> cond_resched() can be used unconditionally. If CONFIG_PREEMPT is set, it
> becomes a NOP scheduler wise.
> 
> Also the B43_BUG_ON() in that wrapper is a homebrewn variant of
> __might_sleep() which is part of cond_resched() already.
> 
> Remove the cruft and invoke cond_resched() directly.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Reviewed-by: Larry Finger <Larry.Finger@lwfinger.net>
> Tested-by: Larry Finger <Larry.Finger@lwfinger.net>

Patch applied to wireless-drivers-next.git, thanks.

6004cf298a41 b43legacy: Remove pointless cond_resched() wrapper

-- 
https://patchwork.kernel.org/patch/11073225/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
