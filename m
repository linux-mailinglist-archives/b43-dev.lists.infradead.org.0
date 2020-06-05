Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1191EFCC9
	for <lists+b43-dev@lfdr.de>; Fri,  5 Jun 2020 17:42:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SHRFUYPgHJTvABFd3A5BDbQ2oaDpOM91qGyLj4HDXxc=; b=TQQLgHYNDHjXDA
	DgaZPT/D49o6jWq7c5Mc3HtGZD3HW0+VaD+7fnALGc7/7M/UlBLPboxtDE17uaigYt5oT4E2QsvN4
	+xqwhf5csDnlPtYeiHNoaLuDAW2rX3wjSJQkmnMvJralVl6hp4Zmpd61V4EigO0shoWGF+Q87Docr
	ACfX2K2XHClCDZUA6t00pUe8HFHHvtLWAHga5+40oN8NDQj18FxnxAB5ZeTG5tfqWciS02kmuBgee
	FCsDPNylwRXHYJuROXtnFYcvMelvYLzrObg2KEpPMOdiLAeNHtwFPv+5APTk3/nA10mPv6CFCJ9Mo
	cimjKqeLZ6151F9s2Kig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhETx-0002A0-4o; Fri, 05 Jun 2020 15:42:09 +0000
Received: from smtp.asem.it ([151.1.184.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhETi-0001no-H4
 for b43-dev@lists.infradead.org; Fri, 05 Jun 2020 15:41:56 +0000
Received: from webmail.asem.it by asem.it (smtp.asem.it)
 (SecurityGateway 6.5.2) with ESMTP id SG000300870.MSG 
 for <b43-dev@lists.infradead.org>; Fri, 05 Jun 2020 17:41:31 +0200S
Received: from ASAS044.asem.intra (172.16.16.44) by ASAS044.asem.intra
 (172.16.16.44) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 5 Jun
 2020 17:41:28 +0200
Received: from flavio-x.asem.intra (172.16.17.208) by ASAS044.asem.intra
 (172.16.16.44) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Fri, 5 Jun 2020 17:41:28 +0200
From: Flavio Suligoi <f.suligoi@asem.it>
To: Johannes Berg <johannes@sipsolutions.net>, "David S . Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Kalle Valo <kvalo@codeaurora.org>, Christian Lamparter
 <chunkeey@googlemail.com>, Johan Hovold <johan@kernel.org>, Saurav Girepunje
 <saurav.girepunje@gmail.com>, Larry Finger <Larry.Finger@lwfinger.net>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>, Luca Coelho
 <luciano.coelho@intel.com>
Subject: [PATCH 4/9] net: wireless: atmel: fix wiki website url
Date: Fri, 5 Jun 2020 17:41:07 +0200
Message-ID: <20200605154112.16277-5-f.suligoi@asem.it>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200605154112.16277-1-f.suligoi@asem.it>
References: <20200605154112.16277-1-f.suligoi@asem.it>
MIME-Version: 1.0
X-SGHeloLookup-Result: pass smtp.helo=webmail.asem.it (ip=172.16.16.44)
X-SGSPF-Result: none (smtp.asem.it)
X-SGOP-RefID: str=0001.0A090215.5EDA67A9.0053, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0 (_st=1 _vt=0 _iwf=0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_084154_766873_3A4DC8FD 
X-CRM114-Status: UNSURE (   8.30  )
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

In at76c50x-usb.c the wiki url is still the old
"wireless.kernel.org" instead of the new
"wireless.wiki.kernel.org"

Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
---
 drivers/net/wireless/atmel/at76c50x-usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/atmel/at76c50x-usb.c b/drivers/net/wireless/atmel/at76c50x-usb.c
index 3b2680772f03..a63b5c2f1e17 100644
--- a/drivers/net/wireless/atmel/at76c50x-usb.c
+++ b/drivers/net/wireless/atmel/at76c50x-usb.c
@@ -17,7 +17,7 @@
  *
  * TODO list is at the wiki:
  *
- * http://wireless.kernel.org/en/users/Drivers/at76c50x-usb#TODO
+ * https://wireless.wiki.kernel.org/en/users/Drivers/at76c50x-usb#TODO
  */
 
 #include <linux/init.h>
-- 
2.17.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
