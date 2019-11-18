Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D36100F8A
	for <lists+b43-dev@lfdr.de>; Tue, 19 Nov 2019 00:52:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0U1Hgy7ylG0hvmg28ggl904jjjD55wKhQCLK6m1X/5w=; b=pdb
	q0OM69CF1WGVOt8T1VDoaB34562rs+2hIVdEILaWg+7xLD/o2sw8LgcVVulT/EcuGnkPGYTtdNM0S
	8KsrGNKUJ3tf9rmOMDAlTXGzy+4/Ewo12JO8yAJMc81CwpHr2JCGRnwry7KYT90xmjRgcPYRu/reN
	3vUIqA5CwHIkmaoMdAPmNdfYlcMF3uNINbNeAYxr50o3qNWJHBYRQe9U5dQ0un8w6EhB2LDgoOLMm
	erlGD7Gra2HSz++FxSADT6JQERJUk9WVVHDEmTAg2P8F9eb6vIW5dwBTMHpvEF7Y3MLlX6vCrefNZ
	yb341Q7FJsPHEA/Aw0INXT2S/hPgH3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWqoU-00006h-Ha; Mon, 18 Nov 2019 23:52:10 +0000
Received: from mail-il1-f175.google.com ([209.85.166.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWqoN-00006H-HX
 for b43-dev@lists.infradead.org; Mon, 18 Nov 2019 23:52:04 +0000
Received: by mail-il1-f175.google.com with SMTP id z12so17816904ilp.2
 for <b43-dev@lists.infradead.org>; Mon, 18 Nov 2019 15:51:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=fhtVBpM4iOtrBySGZiBggi/O8BREf4kfDxO8yUi7MXE=;
 b=Bjj/nsWHds5HmUq0f212SDZ0pSnlCoavsWj4moDdkD4hzo8+bKgmC9A4OjTQtpibLB
 RFse8V5P6kM1LIYfAgpyv/phdXmtCIhD5EM6vvQT1CLwRK2upCY8pskWI3DEt2pfLSF1
 E1+9G+aRWz/ktMuj/6J0hHqvoGx1t7pImp6qXi3/K50eiHj5Zn4pbP7SovViwLJ5lua1
 Asl5Pe0GZP9b/YxF6k1Z+2h+cG0K+uzq/mim1BKVL6v1oWULMwOhM26vN2LE+U6jZJaT
 fQk/dxtr+Mn9fsWyeiHGHkCDnJ4sCm6DmwVLZ+kkT4hkqfKB1KFPzSkHI/NIfhRcmASp
 8GoA==
X-Gm-Message-State: APjAAAWldXgbMtDzA3BPuFxov7KLWWXzcqDli6s3zlc4Q/68sIsagmjb
 gzq+SI6JcLacpDmmrkOFpvrKhxXbtcNC0AgmRMUu6b16
X-Google-Smtp-Source: APXvYqy3xYcrHy7o2dvEPdoRIEPhZOAhLMNCiXiHbt0FyHfLmeugIf5NrxQRC/idhT0QXoG4v2HbXgHCLIxAEtyL7QU=
X-Received: by 2002:a92:9a85:: with SMTP id c5mr17305258ill.99.1574121118880; 
 Mon, 18 Nov 2019 15:51:58 -0800 (PST)
MIME-Version: 1.0
From: Stephen Schmiechen <turtle@think-electric.com>
Date: Mon, 18 Nov 2019 15:51:02 -0800
Message-ID: <CA+-AwzDewm3donFWk-zO3SMpVadZ2KKgFiMBLoseGDmS2T22ww@mail.gmail.com>
Subject: BCM4352 [14e4:43b1]
To: b43-dev@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_155203_581904_45A9B1E3 
X-CRM114-Status: UNSURE (   3.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.175 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (turtle.schmiechen[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.175 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Greetings all I have a BCM4352 [14e4:43b1] and am interested in
getting it to work while learning more about Linux kernel drivers.
I have been reading thru the code to familiarize my self.
Does anyone have any thoughts on how to proceed?
Thanks
--Turtle

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
