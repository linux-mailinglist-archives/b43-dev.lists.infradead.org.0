Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D6BE832D
	for <lists+b43-dev@lfdr.de>; Tue, 29 Oct 2019 09:25:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AQeMp6w7rxD/MR+zlaGr49BFVh2U8VxNIRuqxlsQW/I=; b=kkBRz1ouXQYeW6
	zWuCMUElzlbEsE6XkziwNHwAmVmuI1qMUYdhzbS5vbstZznjrpdKnhLS43MoUcz4V+HSIrM0ygWW1
	5CRpqc6oaTinvhMDNGRmyiemVsCVDwdQCN8hDHgLBUgjT8OYz/bbesoLQdbkX5WfM2LmNlQ3yOLd9
	xFJvNgDAlodBE7JCgRAPvaLUb4jmBI+EGaSBSWdqw+C5B+xTbg1treahjCENtTy24kE9jkDVkTbVt
	hHirkn+dZq2Lcp7MQK39N3bYsgWpTctvrIo8sqFWSGfdbaZc8pNxgh9byskk5BtD4CBsPtgTteysV
	xgsD706tw7eOe2AuPfUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPMnr-0002Mf-Ee; Tue, 29 Oct 2019 08:24:35 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPMno-0002Ly-3r
 for b43-dev@lists.infradead.org; Tue, 29 Oct 2019 08:24:33 +0000
Received: by mail-wm1-x344.google.com with SMTP id n7so1506794wmc.3
 for <b43-dev@lists.infradead.org>; Tue, 29 Oct 2019 01:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mlvWUHz6b/I7z2o6G925iPKfRblwtc3ymYLiU24jl8Y=;
 b=znJoO/4IcDqIxbCVMPW+19bVBXc9sqwbd7aZWWqNPGo3LmGX2CLxOoCeZeP0nLObqa
 u06zZhdIVgYt/u9fE7Pkq+FDbWGt50hkMi2TDCNCORd3PbP65XA91VNNkPbGOj0ikZsn
 GNN37Kh92uMv8OLqpIBnEvbYuwP2nwQWx2bRbZqAJ/0vvxY7Yjq6JgcqOjOkJJJVcwwp
 JJS8wD97kwyOzxa0glC5AMUiRsyfFOYUkA3o5QzEhp/rWxlv7P+uOFP2Lnxe+7oCcv9p
 I6q9un3AtibUNcLt/LGVA/DCuybUP6j1NJQnJ9t51hMRUcgU/MIFCYiEDgpMHgslO9Ul
 /HNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mlvWUHz6b/I7z2o6G925iPKfRblwtc3ymYLiU24jl8Y=;
 b=N/Kse8hwGyrtgTpV6jvRQ26/lYFDdhQ5QemLkmPuduFKm1xWAVidLUvSRmS2rVmKSx
 szzSyn88+zVODu3HZuj0T3nsiSJFVhVXhArACXAS62AhRkby03mLK5vmejUhxg5SshEJ
 29xYA5ysUlE9Fc0tylVybhu9WWX00oQsL8yX5N7qS4LhsCGax7dEszSmyantOn5CW2R7
 07qsMtFu2VvrCgcy8Rz2ZTNep6ELsI4rh20sVJis/RUTSsTIDXpb5u7/0oKKz4IT2K/b
 O+EYNBB01XXLG6g0dlFT0PgpZ5Gl6EhNdKQ/ttVMETK4Sd/C7ha/D5IY+nOLsVLj/6bM
 4SiQ==
X-Gm-Message-State: APjAAAUXuyTMUpLwSeqTH9G5stSynYxRQmrxzHJlKY4zASu8iaRzcG66
 ees66XvrTLuhxyWCfy0CVC4gAQ==
X-Google-Smtp-Source: APXvYqyaUuIZzfuyser7xEw58tuvIXgnZdKtOozf/OE2exXkKYqPqXT6Z0Ey71mdOmuLPrwcvaQymA==
X-Received: by 2002:a7b:caa9:: with SMTP id r9mr2699781wml.47.1572337469034;
 Tue, 29 Oct 2019 01:24:29 -0700 (PDT)
Received: from netronome.com (fred-musen.rivierenbuurt.horms.nl.
 [2001:470:7eb3:404:a2a4:c5ff:fe4c:9ce9])
 by smtp.gmail.com with ESMTPSA id y5sm2001272wmi.10.2019.10.29.01.24.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 01:24:28 -0700 (PDT)
Date: Tue, 29 Oct 2019 09:24:27 +0100
From: Simon Horman <simon.horman@netronome.com>
To: Saurav Girepunje <saurav.girepunje@gmail.com>
Subject: Re: [PATCH] b43: Fix use true/false for bool type
Message-ID: <20191029082427.GB23615@netronome.com>
References: <20191028190204.GA27248@saurav>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028190204.GA27248@saurav>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_012432_157532_6D65B531 
X-CRM114-Status: GOOD (  16.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

Hi Saurav,

thanks for your patch.

On Tue, Oct 29, 2019 at 12:32:04AM +0530, Saurav Girepunje wrote:
> use true/false on bool type variable assignment.
> 
> Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>

This does not seem to cover the case in dma.c,
which seems to want fixing for the sake of consistency.

Also, I wonder why bools rather than a bitmask was chosen
for this field, it seems rather space intensive in its current form.

> ---
>  drivers/net/wireless/broadcom/b43/main.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
> index b85603e91c7a..39da1a4c30ac 100644
> --- a/drivers/net/wireless/broadcom/b43/main.c
> +++ b/drivers/net/wireless/broadcom/b43/main.c
> @@ -3600,7 +3600,7 @@ static void b43_tx_work(struct work_struct *work)
>  			else
>  				err = b43_dma_tx(dev, skb);
>  			if (err == -ENOSPC) {
> -				wl->tx_queue_stopped[queue_num] = 1;
> +				wl->tx_queue_stopped[queue_num] = true;
>  				ieee80211_stop_queue(wl->hw, queue_num);
>  				skb_queue_head(&wl->tx_queue[queue_num], skb);
>  				break;
> @@ -3611,7 +3611,7 @@ static void b43_tx_work(struct work_struct *work)
>  		}
>  
>  		if (!err)
> -			wl->tx_queue_stopped[queue_num] = 0;
> +			wl->tx_queue_stopped[queue_num] = false;
>  	}
>  
>  #if B43_DEBUG
> @@ -5603,7 +5603,7 @@ static struct b43_wl *b43_wireless_init(struct b43_bus_dev *dev)
>  	/* Initialize queues and flags. */
>  	for (queue_num = 0; queue_num < B43_QOS_QUEUE_NUM; queue_num++) {
>  		skb_queue_head_init(&wl->tx_queue[queue_num]);
> -		wl->tx_queue_stopped[queue_num] = 0;
> +		wl->tx_queue_stopped[queue_num] = false;
>  	}
>  
>  	snprintf(chip_name, ARRAY_SIZE(chip_name),
> -- 
> 2.20.1
> 

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
