Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD731EF3F5
	for <lists+b43-dev@lfdr.de>; Fri,  5 Jun 2020 11:21:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=729TUjegKjBYXKKDhw4MoqyucGKqBaYfWew2vkngld0=; b=r2oanjAwNirn68
	xm4bca1aN4Llxs7P6faf4LbKwAg+oj9lUFIYYMjS21ScOjBY4chzlfvI7ITFrn0tDELWohgneo6pr
	2ir87YzBoWwb/g9Vl6RBCzTwGLxv2IPfD1rp5LLbYsyQIMUP2gL5ci6MxyP/Zg3YP/2gitD8UQlL9
	5CHpSOitw9032WcoVPsSQlpynuFq18o7+uV8R+Exn3MPli5tBU7I1ftL8GsIGTdeqpVymGcNvnDog
	UyTjvzzOSKw9nktcxUG9klB259nnrBB0ilRUh5XlR1eyGSSj7UxnwRsRHzrSlNxRsFYBah5n7VQI+
	VBnmBdj7s5i3ihYlbiXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh8XT-0002P1-OG; Fri, 05 Jun 2020 09:21:23 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh8XH-0002O3-Qi
 for b43-dev@lists.infradead.org; Fri, 05 Jun 2020 09:21:20 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591348879; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=kOyRDD2wM/7haweFJ6NAJPQaW5V0bTz8j0qf/YEB3F8=;
 b=F2A5TWdy6IaA7cJR+A5wfefYbrzAb8O7u7ArKoMGQ/m+OXzNgkhmFzHI5cBGoc42SCjUzhfN
 moU5dJHejMcrWapolJerhQS6BlL0m+BRTcvXQy92XhYeBxtAKUjUuwjoiFAVchBqtue5gvQ9
 Vb1uqKmG21KEfBPuGuyaip8EBDU=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyIxODVhOSIsICJiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n10.prod.us-east-1.postgun.com with SMTP id
 5eda0e7e3131442d95f7aea1 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 05 Jun 2020 09:21:02
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 4D54CC433AF; Fri,  5 Jun 2020 09:21:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from tynnyri.adurom.net (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0979DC433C6;
 Fri,  5 Jun 2020 09:20:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0979DC433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 03/10] b43: Remove uninitialized_var() usage
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-4-keescook@chromium.org>
Date: Fri, 05 Jun 2020 12:20:55 +0300
In-Reply-To: <20200603233203.1695403-4-keescook@chromium.org> (Kees Cook's
 message of "Wed, 3 Jun 2020 16:31:56 -0700")
Message-ID: <87d06dg96w.fsf@tynnyri.adurom.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_022119_620648_7FD0ADA9 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Andy Whitcroft <apw@canonical.com>, clang-built-linux@googlegroups.com,
 linux-ide@vger.kernel.org, netdev@vger.kernel.org, x86@kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-block@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, b43-dev@lists.infradead.org,
 Joe Perches <joe@perches.com>, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-clk@vger.kernel.org, drbd-dev@lists.linbit.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Kees Cook <keescook@chromium.org> writes:

> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings (e.g.
> "unused variable"). If the compiler thinks it is uninitialized, either
> simply initialize the variable or make compiler changes. As a precursor
> to removing[2] this[3] macro[4], just initialize this variable to NULL,
> and make the (unreachable!) code do a conditional test.
>
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
>
> Signed-off-by: Kees Cook <keescook@chromium.org>

[...]

> @@ -4256,9 +4256,13 @@ static void b43_nphy_tx_gain_table_upload(struct b43_wldev *dev)
>  			pga_gain = (table[i] >> 24) & 0xf;
>  			pad_gain = (table[i] >> 19) & 0x1f;
>  			if (b43_current_band(dev->wl) == NL80211_BAND_2GHZ)
> -				rfpwr_offset = rf_pwr_offset_table[pad_gain];
> +				rfpwr_offset = rf_pwr_offset_table
> +						? rf_pwr_offset_table[pad_gain]
> +						: 0;
>  			else
> -				rfpwr_offset = rf_pwr_offset_table[pga_gain];
> +				rfpwr_offset = rf_pwr_offset_table
> +						? rf_pwr_offset_table[pga_gain]
> +						: 0;

To me this is ugly, isn't there a better way to fix this?

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
