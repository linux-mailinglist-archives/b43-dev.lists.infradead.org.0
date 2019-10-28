Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F0AE6EF8
	for <lists+b43-dev@lfdr.de>; Mon, 28 Oct 2019 10:21:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EfQTcKJvly6x6WF96UbgA6vcrNxeOdpDjAhR0OZuLI8=; b=W3nvwYjBkZUtFe
	DL3eROnvdug1b4PE+Kki1iTqnE2o4TRxsj6S/WD20Z3VM1GNoWPjqlWOLsLFP8pxyikNz2aX/PK5Y
	7dZqdCn0ElNKqTCzGedLIEY2cqlgSnHSH+T3bh5k/ExGDQ386Ggbje4KOcID0YWJL9WcfEszeA94q
	AOBpmXgoJdxNDf+cDG+vnE1YtcRIc6FrXspdDdeAEhDEZ9XsqYG8TXO7qs3fEfb6wxtskwimd9lej
	VNoi//w9FmFv5nxySb9bUwRHhF4Is/EWAdC5Y/tJZa59RANU5NQ7qxwSAoUPlxYQKdov3XysTRUoo
	dQ0Usm8HXY0yoDq114qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP1DG-0006Q3-8N; Mon, 28 Oct 2019 09:21:22 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP1D9-0006PY-8L
 for b43-dev@lists.infradead.org; Mon, 28 Oct 2019 09:21:16 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 345C26076A; Mon, 28 Oct 2019 09:21:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572254474;
 bh=VadqlEYYfxB7OwaJryx2n7rtLMjDQtS6L+9F+QovAbc=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=WKz+T/W5uKEyyW/O27wOpwhCdee/+JYZpj1lC8uhPHZeMV90qnZBEUU1hE1ATU3zx
 dvnwkzNs+ZpMRGQnPmacOBk/D9ImEwzBEuVUJTXBYeTaG8GQpAYL93+GkJZWlO/YD3
 9LamebTs+Mukr5XHg1mk2pqXAUuHOOuTay0smbYA=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (unknown [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 245736078F;
 Mon, 28 Oct 2019 09:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572254472;
 bh=VadqlEYYfxB7OwaJryx2n7rtLMjDQtS6L+9F+QovAbc=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=BdpVt/ohSPBR7p2rO6SPXPW9cFEAK4uwm4aH6CJZR/v9kZuK6rWpRnmdFTQvQujEs
 4gvci4q/6+ySyXE/Ivj6B4mNKOWYeN+N8su3LLoY4EiR7Ah1cyAnR1DRl4hMr7933u
 UGuNnejw+TkYRIXHydpStd+SJZFa410ecaGvD1Ko=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 245736078F
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Saurav Girepunje <saurav.girepunje@gmail.com>
Subject: Re: [PATCH] net: wireless: broadcom: Fix use true/false for bool type
 variable.
References: <20191027042422.GA7956@saurav>
Date: Mon, 28 Oct 2019 11:21:05 +0200
In-Reply-To: <20191027042422.GA7956@saurav> (Saurav Girepunje's message of
 "Sun, 27 Oct 2019 09:54:26 +0530")
Message-ID: <87wocp8bum.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_022115_320847_A7EFFDFA 
X-CRM114-Status: UNSURE (   9.07  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kstewart@linuxfoundation.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 saurav.girepunje@gmail.com, mcgrof@kernel.org, saurav.girepunje@hotmail.com,
 b43-dev@lists.infradead.org, opensource@jilayne.com, tglx@linutronix.de,
 davem@davemloft.net, allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

(manually fixing the Cc field)

Saurav Girepunje <saurav.girepunje@gmail.com> writes:

> use true/false for bool type variables assignment.
>
> Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>

I don't see any of your three patches in linux-wireless list and hence
neither in patchwork:

https://patchwork.kernel.org/project/linux-wireless/list/?state=*

One reason might be the ';' character in the To field:

To: kvalo@codeaurora.org;, davem@davemloft.net;, allison@lohutok.net;,
	kstewart@linuxfoundation.org;, opensource@jilayne.com;,
	mcgrof@kernel.org;, saurav.girepunje@gmail.com;, tglx@linutronix.de
	;, linux-wireless@vger.kernel.org;, b43-dev@lists.infradead.org;,
	netdev@vger.kernel.org;, linux-kernel@vger.kernel.org;

Please fix that and resend all patches. Also the title prefix should be
'b43:':

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches#commit_title_is_wrong

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
