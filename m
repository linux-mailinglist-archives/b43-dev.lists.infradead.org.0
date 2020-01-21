Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50667144268
	for <lists+b43-dev@lfdr.de>; Tue, 21 Jan 2020 17:47:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LLIINnA7ppdI+50qsaKYQnT2B7NqBCN/ZFOnHdt9foo=; b=a3QCy9VN8G9V+3
	ncYKYZqIQng39HgJ86g2+E3q6bVknVLsWAkvOWd7EIvoRJ/0bAa2hqp94UPAOQpfbErixk7DqPAOP
	eDM8KTSfTp8aMJ+SfTxnIoSibMI6ntqB50rZBmjVHEZuD3ongUO3B0kf0bMScY3xkKAEl7gC2WOxt
	KzHJSQTinTgktoiTi1mhGUVg6iO/mvlV0eHgDnepyqCURtrfbha0PLCM1aa8MvuvKbc7/3a7eyNsL
	JerkFFNTbeJvpdjJGRnpwoNUfNwIimCXnFIn9rDAVOYpOX413STMpnmibk5dnfBI6SChFKNDz0RnW
	WdK7fbqzTJs8xQjE/xkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itwgl-0003pO-RV; Tue, 21 Jan 2020 16:47:39 +0000
Received: from correo.us.es ([193.147.175.20] helo=mail.us.es)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itwgY-0003nx-SJ
 for b43-dev@lists.infradead.org; Tue, 21 Jan 2020 16:47:33 +0000
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
 by mail.us.es (Postfix) with ESMTP id 9282D4FFE0C
 for <b43-dev@lists.infradead.org>; Tue, 21 Jan 2020 17:47:15 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
 by antivirus1-rhel7.int (Postfix) with ESMTP id 84A8BDA709
 for <b43-dev@lists.infradead.org>; Tue, 21 Jan 2020 17:47:15 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
 id 7A5B9DA705; Tue, 21 Jan 2020 17:47:15 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-7.4 required=7.5 tests=ALL_TRUSTED,BAYES_50,
 SMTPAUTH_US2,SUBJ_ALL_CAPS autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
 by antivirus1-rhel7.int (Postfix) with ESMTP id 8ED3EDA710
 for <b43-dev@lists.infradead.org>; Tue, 21 Jan 2020 17:47:13 +0100 (CET)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Tue, 21 Jan 2020 17:47:13 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from [10.100.188.222] (unknown [10.100.188.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: frasanlop7@alum.us.es)
 by entrada.int (Postfix) with ESMTPSA id 8B29C42EE38E
 for <b43-dev@lists.infradead.org>; Tue, 21 Jan 2020 17:47:13 +0100 (CET)
To: b43-dev@lists.infradead.org
X-SMTPAUTHUS: auth mail.us.es
From: frasanlop7 <frasanlop7@alum.us.es>
Subject: B43 BCM43217
Message-ID: <c746e24b-f678-9f24-1c46-c2a7623d7af4@alum.us.es>
Date: Tue, 21 Jan 2020 17:47:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_084727_065039_63E768A7 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -1.8 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [193.147.175.20 listed in list.dnswl.org]
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [193.147.175.20 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Hi, I've a arm router with a BCM43217 and openwrt 18.06. The wifi its 
working but it has a poor quality. I've a 70 per cent of packets 
retries, it often loss packets (every 6-7 secs) and the bandwidth is 
about 500kB/s. Also it shows a good signal quality. I'm using this card 
as a client and not as access point. With other computers I got a much 
better connection (no losses, 10% retries, 5MB/s). I'would like to ask 
if there is some drivers parameters to tune or something else to get a 
better connection. The default firmware uses the wl driver. Thanks


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
