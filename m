Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D00144B09
	for <lists+b43-dev@lfdr.de>; Wed, 22 Jan 2020 06:13:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Cn0dxh4Baqq03k82LZD6uJVrktIS5uitOKwFF7tV3HQ=; b=hCy9e7uqsf7cLq+VzpzZp5jRZ
	/MrU3t8XVRYEPpggbw8smXhprR2m/wfgbHPXUe28j1F30E72iEbnJA77YCGFXuG3Vker4UezaZIaf
	CHyW01wrGic4DqgbNN1lNwURQ7uowZPKut+szw/oKMOHikZhR9V9aSMu2iBoZi7yhJExc9C81f5MQ
	npC3Vtg+m/pviGtaISNSYIq8TG/ToF4wXavPCABkPvZeOhjqkpcQh0TNfJDBO7BSns4Li+Pbh8sFb
	czM4f0Ls/qY+5Di/5KUVywyCftd4QCy2ccKKO2lEgJnFGwN0FS5NOfN4QUFy17yoLm3Rq3kaoP4Oa
	tSPpvPBXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu8K7-0001WX-4F; Wed, 22 Jan 2020 05:13:03 +0000
Received: from mail-qt1-f174.google.com ([209.85.160.174])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu8K2-0001WB-LD
 for b43-dev@lists.infradead.org; Wed, 22 Jan 2020 05:13:00 +0000
Received: by mail-qt1-f174.google.com with SMTP id i13so4712520qtr.3
 for <b43-dev@lists.infradead.org>; Tue, 21 Jan 2020 21:12:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=c2PQKpwPpbN7BugsbWQQCHshCAyCP0blkTn27XwX0ao=;
 b=jzsP67D9nNoIspXAEaLHpQ+gI5WkucoFgma3j4LrGyRWcJErcbyYfkWaKOd3yJC6HG
 /Hw3navzyNFyBOsLdEP7hyQmiQOHrv1RLy5eiZ1VPAu4F32qhh4VfyCwlkK0WzGKlD4T
 xqIlbg+kkV7xCWNidc7Gz7slAdFQraZToedImP98WMMQMb+yOhdYrvVNyYodpjXNlAdo
 OkbuxWEDXBg7zqU5J4cV9LWTKU7cNlMpXCRe654BICzMOe2z7B7Do8C1eRUnlMX4sfcl
 oz53kca7xVvP4i5EBrcHysT+L6tF2drQZH3Fjo31KzfZa9iNPEr6fMyAHb/a8gfOArD5
 jftw==
X-Gm-Message-State: APjAAAWt3MddUYHjC/ken8yFz4JPnYRa82/b+IqRpsR5/ZKPLuQaHuiM
 +Sh2QY/k4wUVPdv4d3tK89z6m0TJnVs=
X-Google-Smtp-Source: APXvYqzTjrOXquOm9h+q7XbhdW/g7LIwxKzxsTLSDwb+cDaadzd4DS50ZdLGsMgcG/pwzGceC0flBg==
X-Received: by 2002:ac8:4306:: with SMTP id z6mr8362311qtm.178.1579669974595; 
 Tue, 21 Jan 2020 21:12:54 -0800 (PST)
Received: from gmail.com ([2601:196:8502:c700:e480:33e1:2dca:1d5b])
 by smtp.gmail.com with ESMTPSA id w21sm20998628qth.17.2020.01.21.21.12.53
 for <b43-dev@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 Jan 2020 21:12:53 -0800 (PST)
Date: Wed, 22 Jan 2020 00:12:52 -0500
From: Bazz <bazz@bazz1.com>
To: b43-dev@lists.infradead.org
Subject: Re: B43 BCM43217
Message-ID: <20200122050110.rxcjtb453fvhrvak@gmail.com>
Mail-Followup-To: b43-dev@lists.infradead.org
References: <c746e24b-f678-9f24-1c46-c2a7623d7af4@alum.us.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c746e24b-f678-9f24-1c46-c2a7623d7af4@alum.us.es>
User-Agent: BazzyWazzy/13.37 (TempleOS/x86_64)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_211258_694449_C3DBF5F4 
X-CRM114-Status: UNSURE (   6.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.8 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.8 FSL_HELO_FAKE          No description available.
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.174 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.174 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mbazzinotti[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

You might notice improvement on different versions of the firmware.
For instance, users with certain b43 devices have gotten terrible
speed quality from wl firmware 784.2 (6.30.163.46).
https://bugs.gentoo.org/541080

In my case, I get best results on my N-phy BCM4322 with 784.2. YMMV.
Most people seem to be on 666.2 (5.100.138).

You can download the other firmware versions from your Linux distro.
Alternatively, here are direct firmware downloads that will require
b43-fwcutter: http://www.lwfinger.com/b43-firmware/
(thank you Larry, for hosting!)

Good luck

-Bazz

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
