Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 488EC55A2B
	for <lists+b43-dev@lfdr.de>; Tue, 25 Jun 2019 23:46:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1INNPrI9BTNK7C42+janYFYH5AKJ+e810DLePZBO0hc=; b=W/O6l+4LdPrCLkFW5oR0SoIce
	2zHViHW2gA7+zwKmN1+KdBQbn+OCG//x1uoCs704LkBRj+bjWUh0b+oKcqDoQpswZD06UE2vPKDWb
	W3CMBw7g3tibyqjjQT2eseCrYKgZn1/TlEwb3K6P6Ment/XVPsN8I7pn+cv2gJxJm8Q6TkMAMXsY4
	OkWC9l6K/2bRXYRrN6wC/hp+G8yJjslVt4U0LUl9q0twww71GuzzqVAMn+pWLU30VgorZf/F22h5a
	UfDG03xBCJXobWrL/p9hMAkbCAfTg1Xt8ru/LSYhjsdjXqU/UHGgp4hzxSnV+/9iZN/aijrLctmiA
	85XjyYMaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hftGL-0007KL-Ns; Tue, 25 Jun 2019 21:46:01 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hftGE-0007Ja-8N
 for b43-dev@lists.infradead.org; Tue, 25 Jun 2019 21:45:55 +0000
Received: by mail-oi1-x241.google.com with SMTP id w79so292632oif.10
 for <b43-dev@lists.infradead.org>; Tue, 25 Jun 2019 14:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=JjiTBZ0hm0NbqUS5/4bd1p2NmNnTTnu1Dvo2Kh058WY=;
 b=Fygl8X6neXLKligulReeilyoG0dSjibvXxzB5K3QiSEGWUHn53omMxJXVy6dtXuree
 kapPpf24Ab1SCrm8PcyefWC/Whia9xV1+TwqVpAQZ7sZAUkrSZNwMphtaXACYNcTJHJi
 rSbPkODKXdqJ9kDKvCdN+77fOhnStuSZ0bF2Xqy2yzt3JWH+DpJoMrRKy2Uq4anb3f6Q
 uGwTxo4t3VZXMKgs26OTPKLVpHtn2kXEeFXsnjj/byWFUM0K29RXkjfBg2MCKGWF5yM3
 NTS0mPV+wehGpSuUUPtDptFBNn49ZtpRemI0eP+XnGCfBt18sdjjIrYnBETTN3fEfdUQ
 gs3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JjiTBZ0hm0NbqUS5/4bd1p2NmNnTTnu1Dvo2Kh058WY=;
 b=JOFsOuPO4Fdm2UQbn+LrPsuGOqCC0b3bKqaE3+QzC8o9P3xiT7fw+Z1oN2PYyWYnAc
 fqnkFicJd6IFkM8qm7ypMv/qAkzCvi/KynqgQ3ZDjbckI7uKOwtTWVBFq6Os/4rZfO3/
 TCKbI2RY4XqswpkrunqjVj5pirFZzKj/eHNcTIwR1kXTffhoy6BYByr7fYv6WFeAEss8
 F4uxU9C9wRI6P6KnW4ZhhAXgqy67Ylw2iCFFGO/d5qYmNJ2jT197g8Vb/tCpbnRmECax
 gmv65TMUAwElJR+SYG0jQFmiDTCBSlV1TuHK0m9SoAX68V0352U9aHa4raA4+oynBi05
 2TmA==
X-Gm-Message-State: APjAAAX2gIfgwH0CCk+rOEBH/H0V9D6TcpsUy8UiAtgcmJiGGd9mxk8j
 u8igTJx0H38LmWhIb618DdQ=
X-Google-Smtp-Source: APXvYqyvvvk+AYvxBruu9uR3BNyKTd9Flkw47/n6y+yQBiIPTNOFBXO56QK9Z9AECIulsn+YmQwmlA==
X-Received: by 2002:aca:3a55:: with SMTP id h82mr2257138oia.49.1561499152775; 
 Tue, 25 Jun 2019 14:45:52 -0700 (PDT)
Received: from [192.168.1.112] (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id l145sm5772594oib.6.2019.06.25.14.45.51
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 14:45:52 -0700 (PDT)
Subject: Re: [PATCH 1/4] b43legacy: remove b43legacy_dma_set_mask
To: Christoph Hellwig <hch@lst.de>, Kalle Valo <kvalo@codeaurora.org>
References: <20190625102932.32257-1-hch@lst.de>
 <20190625102932.32257-2-hch@lst.de>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <55cf8864-3fa8-a0ed-0887-39ea21085492@lwfinger.net>
Date: Tue, 25 Jun 2019 16:45:51 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190625102932.32257-2-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_144554_327551_2439373F 
X-CRM114-Status: GOOD (  20.20  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (larry.finger[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

On 6/25/19 5:29 AM, Christoph Hellwig wrote:
> These days drivers are not required to fallback to smaller DMA masks,
> but can just set the largest mask they support, removing the need for
> this trial and error logic.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/net/wireless/broadcom/b43legacy/dma.c | 39 +------------------
>   1 file changed, 1 insertion(+), 38 deletions(-)

The patches work for PPC32 for both b43legacy and b43.

Tested-by: Larry Finger <Larry.Finger@lwfinger.net>

Thanks,

Larry

> 
> diff --git a/drivers/net/wireless/broadcom/b43legacy/dma.c b/drivers/net/wireless/broadcom/b43legacy/dma.c
> index 2ce1537d983c..0c2de20622e3 100644
> --- a/drivers/net/wireless/broadcom/b43legacy/dma.c
> +++ b/drivers/net/wireless/broadcom/b43legacy/dma.c
> @@ -797,43 +797,6 @@ void b43legacy_dma_free(struct b43legacy_wldev *dev)
>   	dma->tx_ring0 = NULL;
>   }
>   
> -static int b43legacy_dma_set_mask(struct b43legacy_wldev *dev, u64 mask)
> -{
> -	u64 orig_mask = mask;
> -	bool fallback = false;
> -	int err;
> -
> -	/* Try to set the DMA mask. If it fails, try falling back to a
> -	 * lower mask, as we can always also support a lower one. */
> -	while (1) {
> -		err = dma_set_mask_and_coherent(dev->dev->dma_dev, mask);
> -		if (!err)
> -			break;
> -		if (mask == DMA_BIT_MASK(64)) {
> -			mask = DMA_BIT_MASK(32);
> -			fallback = true;
> -			continue;
> -		}
> -		if (mask == DMA_BIT_MASK(32)) {
> -			mask = DMA_BIT_MASK(30);
> -			fallback = true;
> -			continue;
> -		}
> -		b43legacyerr(dev->wl, "The machine/kernel does not support "
> -		       "the required %u-bit DMA mask\n",
> -		       (unsigned int)dma_mask_to_engine_type(orig_mask));
> -		return -EOPNOTSUPP;
> -	}
> -	if (fallback) {
> -		b43legacyinfo(dev->wl, "DMA mask fallback from %u-bit to %u-"
> -			"bit\n",
> -			(unsigned int)dma_mask_to_engine_type(orig_mask),
> -			(unsigned int)dma_mask_to_engine_type(mask));
> -	}
> -
> -	return 0;
> -}
> -
>   int b43legacy_dma_init(struct b43legacy_wldev *dev)
>   {
>   	struct b43legacy_dma *dma = &dev->dma;
> @@ -844,7 +807,7 @@ int b43legacy_dma_init(struct b43legacy_wldev *dev)
>   
>   	dmamask = supported_dma_mask(dev);
>   	type = dma_mask_to_engine_type(dmamask);
> -	err = b43legacy_dma_set_mask(dev, dmamask);
> +	err = dma_set_mask_and_coherent(dev->dev->dma_dev, dmamask);
>   	if (err) {
>   #ifdef CONFIG_B43LEGACY_PIO
>   		b43legacywarn(dev->wl, "DMA for this device not supported. "
> 


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
