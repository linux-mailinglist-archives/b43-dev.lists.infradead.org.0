Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 944595297B
	for <lists+b43-dev@lfdr.de>; Tue, 25 Jun 2019 12:29:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MJlAEe7LHub9A697m3ygyp5ThcHb6OjY+E1/Pu+P4Hs=; b=j2ipvaff+Av9ux
	/+IhFb4REkLmLHTvwDrpzefyDyAq33dEjj7+fpxAl0XO/5+olxQohA4FyuR9TDbXHe91D8X3XDvld
	65p4fhHmhZC1SHq3EvnAcgEAf+L01mNQNrD80a9O1eJiSre1vvy0+PIxV0r3YiEAWLT7FQKbw3NZs
	jT40fAGc9Hg2MDO+dh8bW+StvXRq5ZrcjPM3E3c4i1+W4WxOpHOTWOe6DQ12hZ7ruzDfE6kJJcxP9
	UEApuKbCOippy8zgFi2FrmwMhdBJ4NvTIIP/G6wnk1f2Mv7cTa5DIgF13BCEMKuiH1ffLe7xeMrrm
	2PFUFWOwPdGs6pIYLwAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfihp-0005Sx-VA; Tue, 25 Jun 2019 10:29:41 +0000
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hfihj-0005S9-O8; Tue, 25 Jun 2019 10:29:36 +0000
From: Christoph Hellwig <hch@lst.de>
To: Larry Finger <Larry.Finger@lwfinger.net>, Kalle Valo <kvalo@codeaurora.org>
Subject: b43 / b43 legacy dma mask cleanups
Date: Tue, 25 Jun 2019 12:29:28 +0200
Message-Id: <20190625102932.32257-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
 b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Hi all,

below are a few cleanups for the DMA mask handling.  I came up with these
untested patches after looking through the code to debug the 32-bit pmac
30-bit dma issue involving b43legacy.

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
