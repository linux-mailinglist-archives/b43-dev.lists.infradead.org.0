Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5127F4B0
	for <lists+b43-dev@lfdr.de>; Fri,  2 Aug 2019 12:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xCkf3Cu1VnuO4faNQ0dpjieSz9s5BwdXFdFP3iRbUu8=; b=VjFTOtZE9urNE5
	64IQn9Y2EJtcNToOyI+2FZAZB8KJES9A43ErzvZ0JTSEbxLeVxirpKzutLMPkW+6qf8Gq82CxadOq
	3UlM/MZdMN2UCu4+8x0lJ+LLmhQVvE6cIkB9tXmlhSsCbCjMoMJRK2G3UuUlxtaJLCoVMX8sy4NKn
	Z76JS6Lj6T4dBkQlLPBxy3zk7ipQricI6XjFv6HGO2qdD+yYaBzag45S6bu0j6JqI2020Scc+alIm
	L+hSAIyY78YRuQa+97zEAFwYI2F55jpEcfZDJOBGnimKYUeaJBc8GY5o/rKj4uOZme4hCNzkTjE2u
	gWSmsr0o+Nbl3r/Daa/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htUU0-0000Fc-Vd; Fri, 02 Aug 2019 10:08:20 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htUTs-0000F7-Lb
 for b43-dev@lists.infradead.org; Fri, 02 Aug 2019 10:08:14 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id D2F8F609CD; Fri,  2 Aug 2019 10:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564740490;
 bh=xz9w0+aLOrKW8e4WbfqeN6YPcjyXc3C+PdLcAJ/KxeA=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=NzQNyHlii9x88p5rDzJ8EBGkRUerGUNgrhSu+s/J2fvBAyRzHN63LhFf4yjtghhE+
 K3uQtMpnzmCDbbzFKId5bHj+I4Uu/60f8KiEZeY0q+0z8BNGR2X5vrgm0wWXt3D3sY
 bqWr0acuowgLAUdKGBnm6Go80QMPylAoYYejrOzY=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 835F46055D;
 Fri,  2 Aug 2019 10:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564740489;
 bh=xz9w0+aLOrKW8e4WbfqeN6YPcjyXc3C+PdLcAJ/KxeA=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=la29ZdGcyC0KI0VVTOIu6v6lVSBzfZ27VvHODNQVelTnj1pzwuS/BPMPjvW9setie
 tmjHW8n6dTJMm3ViQcZrvXKFQqKTFB2Q1XBbF5a1CCUWtvW5MFg77wPeR9VCc1tKvd
 JUee3GiaBJcfz0XiX5aL+8yJya2ofGisYIzzfhYc=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 835F46055D
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH] b43legacy: Remove pointless cond_resched() wrapper
References: <alpine.DEB.2.21.1907262157500.1791@nanos.tec.linutronix.de>
Date: Fri, 02 Aug 2019 13:08:05 +0300
In-Reply-To: <alpine.DEB.2.21.1907262157500.1791@nanos.tec.linutronix.de>
 (Thomas Gleixner's message of "Fri, 26 Jul 2019 22:00:23 +0200
 (CEST)")
Message-ID: <877e7vkhh6.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_030812_733281_8560E706 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

+ linux-wireless

Thomas Gleixner <tglx@linutronix.de> writes:

> cond_resched() can be used unconditionally. If CONFIG_PREEMPT is set, it
> becomes a NOP scheduler wise.
>
> Also the B43_BUG_ON() in that wrapper is a homebrewn variant of
> __might_sleep() which is part of cond_resched() already.
>
> Remove the wrapper and invoke cond_resched() directly.
>
> Found while looking for CONFIG_PREEMPT dependent code treewide.
>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: netdev@vger.kernel.org
> Cc: b43-dev@lists.infradead.org
> Cc: Kalle Valo <kvalo@codeaurora.org>
> Cc: Larry Finger <Larry.Finger@lwfinger.net>

I use patchwork and this doesn't show there as our patchwork follows
only linux-wireless linux. Can you resend and Cc also
linux-wireless@vger.kernel.org, please?

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
