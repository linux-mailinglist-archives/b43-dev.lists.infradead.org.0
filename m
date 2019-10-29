Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8072FE836E
	for <lists+b43-dev@lfdr.de>; Tue, 29 Oct 2019 09:43:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8yM7LmNKGQNhOcYtQqwxKZV76Xd8HcES51sv9RiGL6Y=; b=NNYbnIv4wRTc6G
	YrgSw4gNCUfoHuHhtRqOvb7TXYncWx51mRHtkPJXtHJs3s/U2Q5+WugOdw1Fux/VsI+TTrZisWl/a
	rD7YlgsAd3DllFfDXpjTQV9n5z1Zp2TPFuoiE4VXI0xb1KQy+CZOV2C53O6UVHFHXpb2nwiuS08wh
	GRSUR8bUkgbw/QiMQYgYvXSX0UfiI8V9V1Ba0ySvRuQXwDTG2Xj4MKGlbo4BNSGaKW0XwIVaPO18A
	v6jLP5XLINeRcul02k9iNzFv/i47BXdi3OjYdOmRQhFvtqXyIY7jubkmdgcCx1bPU6mWvqWn3Je6E
	GFFR/i7Mhb3QSGLNEQ7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPN68-00026W-Cz; Tue, 29 Oct 2019 08:43:28 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPN65-000260-2K
 for b43-dev@lists.infradead.org; Tue, 29 Oct 2019 08:43:26 +0000
Received: by mail-wr1-x443.google.com with SMTP id n15so12600715wrw.13
 for <b43-dev@lists.infradead.org>; Tue, 29 Oct 2019 01:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2Y1e6eXMXynj3RVm6A/v7p+Rx7z46GaGYsW4oOsjovc=;
 b=wavt2/1wTjV79EJap7JbgnE2Twi+9BnBLl1BHzBNl3vIs2ZXYZ5HrrxkfM3CKwswgj
 sw6aeOhyfWasmAuDA08IFOYHsMO5LIBf5pt7y/wA3OVWD1tdoJBDyMNGJDcZHed3K0hQ
 TGIps6ZZGwOZNPavurYTlkGlU30hmfoZIJOEcYN97v5MIS0O24fHR+K8ChWaH2zKHIsh
 ICO8D+vwppTHPxR+5+JldQ3zx6FnSsFOXwCb8M9bkBt88WuwnipSdlRin1MJUpzqVmXp
 EVrEom4gkCv75CNw3zuLBldoeXeMrrVQ1LiZ6DAEtqXZf6rd2VdeislzDMV+Bh1GEfnV
 poIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2Y1e6eXMXynj3RVm6A/v7p+Rx7z46GaGYsW4oOsjovc=;
 b=I0o9/6yBvr2EwhjueXweSfSYyigzvaM+NhY1NPV1kaEFC01E0LMoeDs7mrAqfQZSOf
 1031Pg0HZ4cyEneHK/XqF9uqF5iUIvzCWHPboZdwHbsg4h6Z1qjBDMDFbfyCTV6DiOCr
 WOqIJKZdlOQ5W8uyf42qkz2J/64l1acKKq0r0XhuFTqWJDrInZMboA7Tbbo7wB++4yiY
 j42g2+zeF5auvQwGbQVv/wEE1cv8TDGhCeQn2RZJDjSoEKtLYwgJuT296N/SvYv2Ig8A
 JkzeIKfL/ORoGmiU0plrnZIDgyhRR8JbmJREVwsiDEzc5rF9XCyhDDrih+A65GSeyjLn
 n+AA==
X-Gm-Message-State: APjAAAULJRjYS6TjAqJT5Gt2yZ8LOpA/E38NHRjUkkoHD0eneAj82326
 6cTBUtjqIFcno/kwEYsh3L+dfA==
X-Google-Smtp-Source: APXvYqx+LFWSW8vxJhxbdOsjx1jGLoXPJPKXrqqM25niggkWBSCsM/ioC7zlbwA136enGM6e3I1O9g==
X-Received: by 2002:adf:f152:: with SMTP id y18mr19562113wro.285.1572338603282; 
 Tue, 29 Oct 2019 01:43:23 -0700 (PDT)
Received: from netronome.com (fred-musen.rivierenbuurt.horms.nl.
 [2001:470:7eb3:404:a2a4:c5ff:fe4c:9ce9])
 by smtp.gmail.com with ESMTPSA id p10sm15381693wrx.2.2019.10.29.01.43.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 01:43:22 -0700 (PDT)
Date: Tue, 29 Oct 2019 09:43:21 +0100
From: Simon Horman <simon.horman@netronome.com>
To: Saurav Girepunje <saurav.girepunje@gmail.com>
Subject: Re: [PATCH] b43: Fix use true/false for bool type
Message-ID: <20191029084320.GC23615@netronome.com>
References: <20191028190204.GA27248@saurav>
 <20191029082427.GB23615@netronome.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029082427.GB23615@netronome.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_014325_108423_FBACD824 
X-CRM114-Status: GOOD (  19.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Tue, Oct 29, 2019 at 09:24:27AM +0100, Simon Horman wrote:
> Hi Saurav,
> 
> thanks for your patch.
> 
> On Tue, Oct 29, 2019 at 12:32:04AM +0530, Saurav Girepunje wrote:
> > use true/false on bool type variable assignment.
> > 
> > Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
> 
> This does not seem to cover the case in dma.c,
> which seems to want fixing for the sake of consistency.

I now see this handled in a separate patch, sorry for the noise.

> Also, I wonder why bools rather than a bitmask was chosen
> for this field, it seems rather space intensive in its current form.
> 
> > ---
> >  drivers/net/wireless/broadcom/b43/main.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
> > index b85603e91c7a..39da1a4c30ac 100644
> > --- a/drivers/net/wireless/broadcom/b43/main.c
> > +++ b/drivers/net/wireless/broadcom/b43/main.c
> > @@ -3600,7 +3600,7 @@ static void b43_tx_work(struct work_struct *work)
> >  			else
> >  				err = b43_dma_tx(dev, skb);
> >  			if (err == -ENOSPC) {
> > -				wl->tx_queue_stopped[queue_num] = 1;
> > +				wl->tx_queue_stopped[queue_num] = true;
> >  				ieee80211_stop_queue(wl->hw, queue_num);
> >  				skb_queue_head(&wl->tx_queue[queue_num], skb);
> >  				break;
> > @@ -3611,7 +3611,7 @@ static void b43_tx_work(struct work_struct *work)
> >  		}
> >  
> >  		if (!err)
> > -			wl->tx_queue_stopped[queue_num] = 0;
> > +			wl->tx_queue_stopped[queue_num] = false;
> >  	}
> >  
> >  #if B43_DEBUG
> > @@ -5603,7 +5603,7 @@ static struct b43_wl *b43_wireless_init(struct b43_bus_dev *dev)
> >  	/* Initialize queues and flags. */
> >  	for (queue_num = 0; queue_num < B43_QOS_QUEUE_NUM; queue_num++) {
> >  		skb_queue_head_init(&wl->tx_queue[queue_num]);
> > -		wl->tx_queue_stopped[queue_num] = 0;
> > +		wl->tx_queue_stopped[queue_num] = false;
> >  	}
> >  
> >  	snprintf(chip_name, ARRAY_SIZE(chip_name),
> > -- 
> > 2.20.1
> > 
> 

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
