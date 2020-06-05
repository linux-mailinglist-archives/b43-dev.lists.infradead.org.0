Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10BA41EFCC7
	for <lists+b43-dev@lfdr.de>; Fri,  5 Jun 2020 17:42:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=msajys0sJGcFjwyTd+w/H9nt4O1FInADaEvx16TcNkM=; b=iKR0dMU/k518iW
	GOQ6rNh9/4/tAMK8vm4VXYJ/oRmeMbygZlIA2D8Bu3Dzh+WXbwDhAEkQweFEIOl9u0znPrD5c7+2G
	yi+CRaWpmftXyOqtq8nGddRx898d8R58BfS7RHRHYdFGMHhXq5FAT5ZT9xRI0l/VyRwPaP79dHKHU
	jTgMTXuGimHfCSApvJS1eeGKNtG/KtkQS+CtVBNRLbyeaZ0ha3bhg6/0kGMWXikFn3C8ngBFCo728
	qM5LmiS/aFvTdR4Tomib99crtyd48K3TQkXcHdP1FrbY9XdOBpqpu+1avf4ldoGi0J8Jf6AVbRiXz
	WmN0P7jQc3m44jK3/eFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhETs-00023y-3X; Fri, 05 Jun 2020 15:42:04 +0000
Received: from smtp.asem.it ([151.1.184.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhETf-0001no-UU
 for b43-dev@lists.infradead.org; Fri, 05 Jun 2020 15:41:53 +0000
Received: from webmail.asem.it by asem.it (smtp.asem.it)
 (SecurityGateway 6.5.2) with ESMTP id SG000300869.MSG 
 for <b43-dev@lists.infradead.org>; Fri, 05 Jun 2020 17:41:29 +0200S
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
Subject: [PATCH 3/9] net: wireless: ath: fix wiki website url
Date: Fri, 5 Jun 2020 17:41:06 +0200
Message-ID: <20200605154112.16277-4-f.suligoi@asem.it>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200605154112.16277-1-f.suligoi@asem.it>
References: <20200605154112.16277-1-f.suligoi@asem.it>
MIME-Version: 1.0
X-SGHeloLookup-Result: pass smtp.helo=webmail.asem.it (ip=172.16.16.44)
X-SGSPF-Result: none (smtp.asem.it)
X-SGOP-RefID: str=0001.0A090215.5EDA67A9.0030, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0 (_st=1 _vt=0 _iwf=0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_084152_345858_88FBA022 
X-CRM114-Status: GOOD (  11.35  )
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

In some ath files, the wiki url is still the old
"wireless.kernel.org" instead of the new
"wireless.wiki.kernel.org"

Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
---
 drivers/net/wireless/ath/Kconfig          | 4 ++--
 drivers/net/wireless/ath/ath9k/Kconfig    | 5 +++--
 drivers/net/wireless/ath/ath9k/hw.c       | 2 +-
 drivers/net/wireless/ath/carl9170/Kconfig | 2 +-
 drivers/net/wireless/ath/carl9170/usb.c   | 2 +-
 drivers/net/wireless/ath/wil6210/Kconfig  | 2 +-
 6 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/net/wireless/ath/Kconfig b/drivers/net/wireless/ath/Kconfig
index b10972b6cba4..0138d415f4e1 100644
--- a/drivers/net/wireless/ath/Kconfig
+++ b/drivers/net/wireless/ath/Kconfig
@@ -15,11 +15,11 @@ config WLAN_VENDOR_ATH
 
 	  For more information and documentation on this module you can visit:
 
-	  http://wireless.kernel.org/en/users/Drivers/ath
+	  https://wireless.wiki.kernel.org/en/users/Drivers/ath
 
 	  For information on all Atheros wireless drivers visit:
 
-	  http://wireless.kernel.org/en/users/Drivers/Atheros
+	  https://wireless.wiki.kernel.org/en/users/Drivers/Atheros
 
 if WLAN_VENDOR_ATH
 
diff --git a/drivers/net/wireless/ath/ath9k/Kconfig b/drivers/net/wireless/ath/ath9k/Kconfig
index 78620c6b64a2..28b46ca9ee3b 100644
--- a/drivers/net/wireless/ath/ath9k/Kconfig
+++ b/drivers/net/wireless/ath/ath9k/Kconfig
@@ -34,7 +34,7 @@ config ATH9K
 	  APs that come with these cards refer to ath9k wiki
 	  products page:
 
-	  http://wireless.kernel.org/en/users/Drivers/ath9k/products
+	  https://wireless.wiki.kernel.org/en/users/Drivers/ath9k/products
 
 	  If you choose to build a module, it'll be called ath9k.
 
@@ -185,7 +185,8 @@ config ATH9K_HTC
 	  Support for Atheros HTC based cards.
 	  Chipsets supported: AR9271
 
-	  For more information: http://wireless.kernel.org/en/users/Drivers/ath9k_htc
+	  For more information:
+	  https://wireless.wiki.kernel.org/en/users/Drivers/ath9k_htc
 
 	  The built module will be ath9k_htc.
 
diff --git a/drivers/net/wireless/ath/ath9k/hw.c b/drivers/net/wireless/ath/ath9k/hw.c
index 052deffb4c9d..8c97db73e34c 100644
--- a/drivers/net/wireless/ath/ath9k/hw.c
+++ b/drivers/net/wireless/ath/ath9k/hw.c
@@ -2410,7 +2410,7 @@ static u8 fixup_chainmask(u8 chip_chainmask, u8 eeprom_chainmask)
  * of tests. The testing requirements are going to be documented. Desired
  * test requirements are documented at:
  *
- * http://wireless.kernel.org/en/users/Drivers/ath9k/dfs
+ * https://wireless.wiki.kernel.org/en/users/Drivers/ath9k/dfs
  *
  * Once a new chipset gets properly tested an individual commit can be used
  * to document the testing for DFS for that chipset.
diff --git a/drivers/net/wireless/ath/carl9170/Kconfig b/drivers/net/wireless/ath/carl9170/Kconfig
index b1bce7aad399..b2d760873992 100644
--- a/drivers/net/wireless/ath/carl9170/Kconfig
+++ b/drivers/net/wireless/ath/carl9170/Kconfig
@@ -10,7 +10,7 @@ config CARL9170
 
 	  It needs a special firmware (carl9170-1.fw), which can be downloaded
 	  from our wiki here:
-	  <http://wireless.kernel.org/en/users/Drivers/carl9170>
+	  <https://wireless.wiki.kernel.org/en/users/Drivers/carl9170>
 
 	  If you choose to build a module, it'll be called carl9170.
 
diff --git a/drivers/net/wireless/ath/carl9170/usb.c b/drivers/net/wireless/ath/carl9170/usb.c
index 486957a04bd1..ead79335823a 100644
--- a/drivers/net/wireless/ath/carl9170/usb.c
+++ b/drivers/net/wireless/ath/carl9170/usb.c
@@ -61,7 +61,7 @@ MODULE_ALIAS("arusb_lnx");
  * Note:
  *
  * Always update our wiki's device list (located at:
- * http://wireless.kernel.org/en/users/Drivers/ar9170/devices ),
+ * https://wireless.wiki.kernel.org/en/users/Drivers/ar9170/devices ),
  * whenever you add a new device.
  */
 static const struct usb_device_id carl9170_usb_ids[] = {
diff --git a/drivers/net/wireless/ath/wil6210/Kconfig b/drivers/net/wireless/ath/wil6210/Kconfig
index 0d1a8dab30ed..8c9dd673b9e7 100644
--- a/drivers/net/wireless/ath/wil6210/Kconfig
+++ b/drivers/net/wireless/ath/wil6210/Kconfig
@@ -10,7 +10,7 @@ config WIL6210
 	  wil6210 chip by Wilocity. It supports operation on the
 	  60 GHz band, covered by the IEEE802.11ad standard.
 
-	  http://wireless.kernel.org/en/users/Drivers/wil6210
+	  https://wireless.wiki.kernel.org/en/users/Drivers/wil6210
 
 	  If you choose to build it as a module, it will be called
 	  wil6210
-- 
2.17.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
