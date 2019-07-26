Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3E977279
	for <lists+b43-dev@lfdr.de>; Fri, 26 Jul 2019 22:00:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/8CW/rT93ROBOB+A8zV2X4CXiMjsQxJDWpBcKPTggj4=; b=Jo6ez4+RMnfrzU
	yNcFi6HZ0miVIRe1l2BYR3uBLXZsNNsYXiLbTYxZx1crrB+c8V1ejtGrgwO+Orszc8tnZW2tvmIzu
	ikyzsWCINzM6btDMxSCVw8OODLsD6sKIkPZeROJIiyWksFnCxJkSYoGKGkotqIZ/UMlMKF6iVXf0t
	Y4uys5/cl5S1k8RmK0w3SW3iTDeMQu4BO12jjtaY8oeiBn2v7dX60pirGyCQmmiAPO6K9l1XpPs/r
	xZAkK50gnx/KcgX3x3wYGg64Bf1dPRFLsgFDJ8ZNXv+PnGetF92QwntQakqSxltdLVOyIT06p3yCw
	z0RV5qwQY2rq9mRi68RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr6OM-0006sp-CB; Fri, 26 Jul 2019 20:00:38 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr6OD-0006oM-IX
 for b43-dev@lists.infradead.org; Fri, 26 Jul 2019 20:00:31 +0000
Received: from pd9ef1cb8.dip0.t-ipconnect.de ([217.239.28.184] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hr6O8-0001q7-GC; Fri, 26 Jul 2019 22:00:24 +0200
Date: Fri, 26 Jul 2019 22:00:23 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: netdev@vger.kernel.org
Subject: [PATCH] b43legacy: Remove pointless cond_resched() wrapper
Message-ID: <alpine.DEB.2.21.1907262157500.1791@nanos.tec.linutronix.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_130029_764268_6D4794F8 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: b43-dev@lists.infradead.org, Kalle Valo <kvalo@codeaurora.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

cond_resched() can be used unconditionally. If CONFIG_PREEMPT is set, it
becomes a NOP scheduler wise.

Also the B43_BUG_ON() in that wrapper is a homebrewn variant of
__might_sleep() which is part of cond_resched() already.

Remove the wrapper and invoke cond_resched() directly.

Found while looking for CONFIG_PREEMPT dependent code treewide.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: netdev@vger.kernel.org
Cc: b43-dev@lists.infradead.org
Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: Larry Finger <Larry.Finger@lwfinger.net>
---
 drivers/net/wireless/broadcom/b43legacy/phy.c |   21 +++++----------------
 1 file changed, 5 insertions(+), 16 deletions(-)

--- a/drivers/net/wireless/broadcom/b43legacy/phy.c
+++ b/drivers/net/wireless/broadcom/b43legacy/phy.c
@@ -69,17 +69,6 @@ static const s8 b43legacy_tssi2dbm_g_tab
 
 static void b43legacy_phy_initg(struct b43legacy_wldev *dev);
 
-
-static inline
-void b43legacy_voluntary_preempt(void)
-{
-	B43legacy_BUG_ON(!(!in_atomic() && !in_irq() &&
-			  !in_interrupt() && !irqs_disabled()));
-#ifndef CONFIG_PREEMPT
-	cond_resched();
-#endif /* CONFIG_PREEMPT */
-}
-
 /* Lock the PHY registers against concurrent access from the microcode.
  * This lock is nonrecursive. */
 void b43legacy_phy_lock(struct b43legacy_wldev *dev)
@@ -1124,7 +1113,7 @@ static u16 b43legacy_phy_lo_b_r15_loop(s
 		ret += b43legacy_phy_read(dev, 0x002C);
 	}
 	local_irq_restore(flags);
-	b43legacy_voluntary_preempt();
+	cond_resched();
 
 	return ret;
 }
@@ -1253,7 +1242,7 @@ u16 b43legacy_phy_lo_g_deviation_subval(
 	}
 	ret = b43legacy_phy_read(dev, 0x002D);
 	local_irq_restore(flags);
-	b43legacy_voluntary_preempt();
+	cond_resched();
 
 	return ret;
 }
@@ -1591,7 +1580,7 @@ void b43legacy_phy_lo_g_measure(struct b
 			b43legacy_radio_write16(dev, 0x43, i);
 			b43legacy_radio_write16(dev, 0x52, phy->txctl2);
 			udelay(10);
-			b43legacy_voluntary_preempt();
+			cond_resched();
 
 			b43legacy_phy_set_baseband_attenuation(dev, j * 2);
 
@@ -1642,7 +1631,7 @@ void b43legacy_phy_lo_g_measure(struct b
 					      phy->txctl2
 					      | (3/*txctl1*/ << 4));
 			udelay(10);
-			b43legacy_voluntary_preempt();
+			cond_resched();
 
 			b43legacy_phy_set_baseband_attenuation(dev, j * 2);
 
@@ -1665,7 +1654,7 @@ void b43legacy_phy_lo_g_measure(struct b
 		b43legacy_phy_write(dev, 0x0812, (r27 << 8) | 0xA2);
 		udelay(2);
 		b43legacy_phy_write(dev, 0x0812, (r27 << 8) | 0xA3);
-		b43legacy_voluntary_preempt();
+		cond_resched();
 	} else
 		b43legacy_phy_write(dev, 0x0015, r27 | 0xEFA0);
 	b43legacy_phy_lo_adjust(dev, is_initializing);

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
