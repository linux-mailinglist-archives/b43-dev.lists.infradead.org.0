Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD7CE8370
	for <lists+b43-dev@lfdr.de>; Tue, 29 Oct 2019 09:44:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3PNvqK4gJJbvxQwGwQPVL7VN58c/PdIz6TeQrUmXP/s=; b=DQnAw/7a52HQMM
	u65UxTDqoEUE5JRCRIw31P7uT7UleV1Hae1ztmeb4/weRNcW8mj66VscnDyS96A7NpXPr8clPHONO
	uMO7BXh6U+RqT20KhPFSCyCRy9An59USW/86BAaN1EfmfnRSdPZobPN46XUyzv6mXVvWfwg/KrMGw
	qOYebNPTO5pJ/3IOR09ilr6wL7+W8JRaV9B6/oH2VaLG9o3FKXMFGMk4VFZN15nwAF9BPT2LFitK8
	iPquJfO6wHxrBIhac1VeViQrzxFiu/pFGYn8N3R6ubGTsqstn9oKGdxJLDrlXl8uSySEBMnsh6TcU
	hIDKMvkPWldgEuCb5X1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPN6X-0002Qt-55; Tue, 29 Oct 2019 08:43:53 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPN6R-0002NP-Sh
 for b43-dev@lists.infradead.org; Tue, 29 Oct 2019 08:43:49 +0000
Received: by mail-wr1-x441.google.com with SMTP id a11so12627865wra.6
 for <b43-dev@lists.infradead.org>; Tue, 29 Oct 2019 01:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=U88yheObN+4ggJffRHrczNdJdHrli+5k282weA3zmys=;
 b=UWxTNpUj0SpmspSoeCVT8jWoJw3f34L0dLvZYLStfybqEFBCPn2e2AlgHmO0xhvKGm
 grjbzGyIrKbP7lal6JDVcB+aInE+hHfT06WpRjlM7fFAlIF2Hjh+x4p92KBB66jvpE04
 +QZSbvcAXfUbscunom8hd1nr1oMy9rEwVVEZaa4wTytbntlAryf+Yw+XNmBWbVIDLVzC
 /oCHObbo6+47ZgaTp7NhAQMTxqfzgpt2lC6UqRUX7Sm23lwPVXJ9VMs/mbtKCxIH3cGk
 XUI/fK+UDK79JK6ztv22QRiRQOMI6Gwa1snOn8g5PAIH4B1k00fs+fo4MSZ6ZK7/G+T7
 v2hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=U88yheObN+4ggJffRHrczNdJdHrli+5k282weA3zmys=;
 b=jL1Vo1FCxSqratUBCfLubIlxGvfQ1QxXBQiBn0bshRG+dSRawrXEdZpsF3E7vCKOPE
 uziv6iv04e9/6CXpnVf6CzfO1l/ytXx30cZ3GmqGSE0vAydtT1o68xQyTr2x5k3LzWfg
 cCczVkZ8y1WGY2VCqPkyHIH3t8rW6/+WbiPwyQSwWys6/Vv05O6RYkqQSG/b98BM1vqm
 RgusMsmhjw+v0pXZEfGfnLSjgN/aTegt3Lu9uitJOMNQS9OFH8dZb9lEPweUd8niCuj2
 qzIKbwHKLVrm2LYpDSGisq12bcQj9vd/G8AIPLyNlhehI7B3mjsEnAw9P+3epO+rGn+P
 NgUw==
X-Gm-Message-State: APjAAAU5DWoItk1QwHcp4p0LOoKWySEVWqigGVrsVYSt62y3YmvOoaEy
 VQP7VVEbNiOOMOEl0XzT+HRFMQ==
X-Google-Smtp-Source: APXvYqxRRsQAmnunlnuxpBCGvAUEzg9Kx7yBGFf0A1pBDmvOd/v+CXTq3tGGCyX6dcNLA0ezvj2JBw==
X-Received: by 2002:a05:6000:1c9:: with SMTP id
 t9mr19959327wrx.171.1572338626088; 
 Tue, 29 Oct 2019 01:43:46 -0700 (PDT)
Received: from netronome.com (fred-musen.rivierenbuurt.horms.nl.
 [2001:470:7eb3:404:a2a4:c5ff:fe4c:9ce9])
 by smtp.gmail.com with ESMTPSA id u10sm2793363wmj.0.2019.10.29.01.43.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 01:43:46 -0700 (PDT)
Date: Tue, 29 Oct 2019 09:43:44 +0100
From: Simon Horman <simon.horman@netronome.com>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH] b43: Fix use true/false for bool type
Message-ID: <20191029084344.GD23615@netronome.com>
References: <20191028190204.GA27248@saurav>
 <20191029082427.GB23615@netronome.com>
 <055503c8dce7546a8253de1d795ad71870eeb362.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <055503c8dce7546a8253de1d795ad71870eeb362.camel@perches.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_014347_982090_2AE8F711 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
 linux-kernel@vger.kernel.org, Saurav Girepunje <saurav.girepunje@gmail.com>,
 baijiaju1990@gmail.com, saurav.girepunje@hotmail.com, swinslow@gmail.com,
 opensource@jilayne.com, tglx@linutronix.de, will@kernel.org,
 davem@davemloft.net, kvalo@codeaurora.org, b43-dev@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 01:30:34AM -0700, Joe Perches wrote:
> On Tue, 2019-10-29 at 09:24 +0100, Simon Horman wrote:
> > I wonder why bools rather than a bitmask was chosen
> > for this field, it seems rather space intensive in its current form.
> 
> 4 bools is not intensive.

Thanks, point taken.

> 
> > > diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
> []
> > > @@ -3600,7 +3600,7 @@ static void b43_tx_work(struct work_struct *work)
> []
> > > -				wl->tx_queue_stopped[queue_num] = 1;
> > > +				wl->tx_queue_stopped[queue_num] = true;
> 
> 

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
