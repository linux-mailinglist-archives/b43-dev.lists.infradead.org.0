Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F2A1EFCBF
	for <lists+b43-dev@lfdr.de>; Fri,  5 Jun 2020 17:42:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NWSZQcOse2LT1TMB5flsUMewU9R3J/PjE7p8+3Fm+gk=; b=L9GyGj1yRYi2Jh
	AEGY30m8AeG3tiON0jNDTXWIuzLVUvcEAThc2yStIx1ohIDiAD0jYg2+7rDg9KN/epWzS9+/zkb6Z
	cM2x/iDpFWP4oKCJclHh/JWNn+HkTcTM2ZRCDJU2FUQctb7paq0ETJ4NA8AuGpKCNjf8HosDcRUOY
	iGD3vNnnrSmTc+W+cR0ZNh5D2OS5UUJ/WvEYjzovdNOS0Ax7tQdQ3JvlfmgTb7ri4Sw4vlxAXRruN
	SbIOK9Zy6rYn7JsQHVxuMN39PQDDtooL74x9ouhJ3MtqDveW4cJWsM+fYrNrfObsrs2BSb6ts/WJ/
	ZtlYriBL9XlMcfK3bM0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhETc-0001pH-1p; Fri, 05 Jun 2020 15:41:48 +0000
Received: from smtp.asem.it ([151.1.184.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhETY-0001no-G1
 for b43-dev@lists.infradead.org; Fri, 05 Jun 2020 15:41:46 +0000
Received: from webmail.asem.it by asem.it (smtp.asem.it)
 (SecurityGateway 6.5.2) with ESMTP id SG000300866.MSG 
 for <b43-dev@lists.infradead.org>; Fri, 05 Jun 2020 17:41:29 +0200S
Received: from ASAS044.asem.intra (172.16.16.44) by ASAS044.asem.intra
 (172.16.16.44) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 5 Jun
 2020 17:41:27 +0200
Received: from flavio-x.asem.intra (172.16.17.208) by ASAS044.asem.intra
 (172.16.16.44) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Fri, 5 Jun 2020 17:41:27 +0200
From: Flavio Suligoi <f.suligoi@asem.it>
To: Johannes Berg <johannes@sipsolutions.net>, "David S . Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Kalle Valo <kvalo@codeaurora.org>, Christian Lamparter
 <chunkeey@googlemail.com>, Johan Hovold <johan@kernel.org>, Saurav Girepunje
 <saurav.girepunje@gmail.com>, Larry Finger <Larry.Finger@lwfinger.net>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>, Luca Coelho
 <luciano.coelho@intel.com>
Subject: [PATCH 0/9] net: wireless: fix wireless wiki website url
Date: Fri, 5 Jun 2020 17:41:03 +0200
Message-ID: <20200605154112.16277-1-f.suligoi@asem.it>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-SGHeloLookup-Result: pass smtp.helo=webmail.asem.it (ip=172.16.16.44)
X-SGSPF-Result: none (smtp.asem.it)
X-SGOP-RefID: str=0001.0A090215.5EDA67A8.0060, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0 (_st=1 _vt=0 _iwf=0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_084144_723031_A12D1B9F 
X-CRM114-Status: UNSURE (   6.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [151.1.184.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-doc@vger.kernel.org, netdev@vger.kernel.org,
 Intel Linux Wireless <linuxwifi@intel.com>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, b43-dev@lists.infradead.org,
 Flavio Suligoi <f.suligoi@asem.it>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

In some files, related to the net wireless sub-system, the wireless wiki
URL is still the old "wireless.kernel.org" instead of the new
"wireless.wiki.kernel.org"


Flavio Suligoi (9):
  doc: networking: wireless: fix wiki website url
  net: wireless: fix wiki website url in main Kconfig
  net: wireless: ath: fix wiki website url
  net: wireless: atmel: fix wiki website url
  net: wireless: broadcom: fix wiki website url
  net: wireless: intel: fix wiki website url
  net: wireless: intersil: fix wiki website url
  include: fix wiki website url in netlink interface header
  net: fix wiki website url mac80211 and wireless files

 Documentation/networking/mac80211-injection.rst        | 2 +-
 Documentation/networking/regulatory.rst                | 6 +++---
 drivers/net/wireless/Kconfig                           | 2 +-
 drivers/net/wireless/ath/Kconfig                       | 4 ++--
 drivers/net/wireless/ath/ath9k/Kconfig                 | 5 +++--
 drivers/net/wireless/ath/ath9k/hw.c                    | 2 +-
 drivers/net/wireless/ath/carl9170/Kconfig              | 2 +-
 drivers/net/wireless/ath/carl9170/usb.c                | 2 +-
 drivers/net/wireless/ath/wil6210/Kconfig               | 2 +-
 drivers/net/wireless/atmel/at76c50x-usb.c              | 2 +-
 drivers/net/wireless/broadcom/b43/main.c               | 2 +-
 drivers/net/wireless/broadcom/b43legacy/main.c         | 4 ++--
 drivers/net/wireless/intel/iwlegacy/4965-mac.c         | 2 +-
 drivers/net/wireless/intel/iwlwifi/Kconfig             | 2 +-
 drivers/net/wireless/intersil/Kconfig                  | 2 +-
 drivers/net/wireless/intersil/p54/Kconfig              | 6 +++---
 drivers/net/wireless/intersil/p54/fwio.c               | 5 +++--
 drivers/net/wireless/intersil/p54/p54usb.c             | 2 +-
 drivers/net/wireless/intersil/prism54/islpci_hotplug.c | 3 ++-
 include/uapi/linux/nl80211.h                           | 2 +-
 net/mac80211/rx.c                                      | 2 +-
 net/wireless/Kconfig                                   | 2 +-
 22 files changed, 33 insertions(+), 30 deletions(-)

-- 
2.17.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
