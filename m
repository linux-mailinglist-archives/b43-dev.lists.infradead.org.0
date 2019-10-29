Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA99E8335
	for <lists+b43-dev@lfdr.de>; Tue, 29 Oct 2019 09:31:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6uKkxRIWAuU2gHPR1+JIzJdjHDlVmlhVpIuCZ2APbe8=; b=N4DupEUjZMoigi
	ypaGLjVjgqzJtGvhdlAoPRyKC3/Of4mPZiBRa3FgLLD6AFMskYLMh319LkqUgc2mfQNOu6+bS0Q6s
	hOW0gbzucQ9AZFbCXuMt/yyk6F/MGnUji3ekdsqgYZPcSzTcdUSgyeK0HN5AUvRbkqxR9cNdJtTOf
	2pU66lOJsQPpkg/5OWpE5rksqtjUc+DxgNNCw1NgF3EQuJqW64JaE7KFy8sta6j12y2bxWkcuxAO9
	AJ7857+22elvj7f/8edG/k6CRSYvIrGe5XDqoER80qTzch21gw2ewEOxg8PS+Ijvn/VNqkorUa78W
	17wQKkRHG2CDxuzTF73Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPMtz-0005mJ-JW; Tue, 29 Oct 2019 08:30:55 +0000
Received: from smtprelay0081.hostedemail.com ([216.40.44.81]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPMtv-0005l8-C6
 for b43-dev@lists.infradead.org; Tue, 29 Oct 2019 08:30:52 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id DEBF1181D3042;
 Tue, 29 Oct 2019 08:30:43 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::::::::::,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1538:1567:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3622:3870:3871:3872:3876:4321:5007:6119:6742:7903:10004:10400:10450:10455:11026:11232:11657:11658:11914:12043:12296:12297:12740:12760:12895:13069:13138:13231:13311:13357:13439:13548:14659:14721:19904:19999:21080:21627:21740:30054:30070:30091,
 0,
 RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:24,
 LUA_SUMMARY:none
X-HE-Tag: idea97_7a7d88050d930
X-Filterd-Recvd-Size: 1582
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf03.hostedemail.com (Postfix) with ESMTPA;
 Tue, 29 Oct 2019 08:30:41 +0000 (UTC)
Message-ID: <055503c8dce7546a8253de1d795ad71870eeb362.camel@perches.com>
Subject: Re: [PATCH] b43: Fix use true/false for bool type
From: Joe Perches <joe@perches.com>
To: Simon Horman <simon.horman@netronome.com>, Saurav Girepunje
 <saurav.girepunje@gmail.com>
Date: Tue, 29 Oct 2019 01:30:34 -0700
In-Reply-To: <20191029082427.GB23615@netronome.com>
References: <20191028190204.GA27248@saurav>
 <20191029082427.GB23615@netronome.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_013051_482434_CFA0B66F 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, baijiaju1990@gmail.com,
 saurav.girepunje@hotmail.com, swinslow@gmail.com, opensource@jilayne.com,
 tglx@linutronix.de, will@kernel.org, davem@davemloft.net, kvalo@codeaurora.org,
 b43-dev@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

On Tue, 2019-10-29 at 09:24 +0100, Simon Horman wrote:
> I wonder why bools rather than a bitmask was chosen
> for this field, it seems rather space intensive in its current form.

4 bools is not intensive.

> > diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
[]
> > @@ -3600,7 +3600,7 @@ static void b43_tx_work(struct work_struct *work)
[]
> > -				wl->tx_queue_stopped[queue_num] = 1;
> > +				wl->tx_queue_stopped[queue_num] = true;



_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
