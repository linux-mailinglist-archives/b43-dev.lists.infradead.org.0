Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC641F54C5
	for <lists+b43-dev@lfdr.de>; Wed, 10 Jun 2020 14:27:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Date:Message-Id:To:References:
	In-Reply-To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IHBRmwLci/9uxIGaTzGHyh9QH96b61G+GiGmBEr4bAQ=; b=eOBK1Cxlm4tONR
	CSbyAtGvXdYFJJMfgFi5Z7iUROocmaJx8MpcSgjZ5wT4pXdjgXTu6RoymDZmV9qlHCiEI9TpWicuR
	JT34it9sUxU8hYuw6Kz3r0XC1g07eliZvWi0A0mU9Iaqb7nKIeNbRvZU9OMp/Jh9/Ltm8EJG4Jove
	+hrbOG16GIfWdZo7VbqPo56hXwchbfFB+uhOvwjnopPxII3u1sHbizG2v1PAFT9bB5Ie5SoUALJgY
	CkTQ5iKqN3dq7ekaV5dM3Y1pkevDZcofFiy1EehjzjBlv3+UR02kEX/IL0Fgx0grPp2Ogn0GdLK09
	fvsX0wYv6t43ckG2E4cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jizoJ-0000uN-Jr; Wed, 10 Jun 2020 12:26:27 +0000
Received: from paleale.coelho.fi ([176.9.41.70] helo=farmhouse.coelho.fi)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jizoB-0000em-Oz
 for b43-dev@lists.infradead.org; Wed, 10 Jun 2020 12:26:22 +0000
Received: from 91-156-6-193.elisa-laajakaista.fi ([91.156.6.193]
 helo=[127.0.1.1]) by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
 (envelope-from <luca@coelho.fi>)
 id 1jizng-0015Qs-DI; Wed, 10 Jun 2020 15:25:48 +0300
MIME-Version: 1.0
From: Luca Coelho <luca@coelho.fi>
In-Reply-To: <20200605154112.16277-7-f.suligoi@asem.it>
References: <20200605154112.16277-7-f.suligoi@asem.it>
To: Flavio Suligoi <f.suligoi@asem.it>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.8.3
Message-Id: <E1jizng-0015Qs-DI@farmhouse.coelho.fi>
Date: Wed, 10 Jun 2020 15:25:48 +0300
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=3.4.4
Subject: Re: [PATCH 6/9] net: wireless: intel: fix wiki website url
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_052619_829969_0FC4CE16 
X-CRM114-Status: UNSURE (   5.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>, linux-doc@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, netdev@vger.kernel.org,
 Intel Linux Wireless <linuxwifi@intel.com>, linux-wireless@vger.kernel.org,
 Johan Hovold <johan@kernel.org>, linux-kernel@vger.kernel.org,
 Saurav Girepunje <saurav.girepunje@gmail.com>,
 Luca Coelho <luciano.coelho@intel.com>, b43-dev@lists.infradead.org,
 Christian Lamparter <chunkeey@googlemail.com>,
 Jakub Kicinski <kuba@kernel.org>, Johannes Berg <johannes@sipsolutions.net>,
 Flavio Suligoi <f.suligoi@asem.it>, "David S . Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Flavio Suligoi <f.suligoi@asem.it> wrote:

> In some Intel files, the wiki url is still the old
> "wireless.kernel.org" instead of the new
> "wireless.wiki.kernel.org"
> 
> Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>

Patch applied to iwlwifi-next.git, thanks.

e00c6d8d491b net: wireless: intel: fix wiki website url


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
