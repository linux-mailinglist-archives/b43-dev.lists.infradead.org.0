Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E816D14442F
	for <lists+b43-dev@lfdr.de>; Tue, 21 Jan 2020 19:24:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HUI815WvAVntzXyUA1llKY8+63NLVJTIjkgxcokMtJ8=; b=FagzID9EpX3njLjBK4XBRnJBv
	gp9hrZBTdtl/hEN2f1S/+Kw64+aOgyh8uPnWEEzukR5iay4bIgYTFV4zfZAVFaTmUcZftaWvBg52m
	u4Jz3jnplt3BXUZcK/QelrEaZ7ALS/jDvcghLHePGxplotm5oyoNFO1dckqz2G8a+oF6qnORgpqju
	QPWPv1EtpJJUxRLGCHYk2yWiUS0eTfHel5pWvhJXO/Lzm79qddnB5+7qpWL80Obx/Boow8PqTLmVL
	VSiEnsZ6OxQTMX/9vCfCURq/XgfYV0ZFMBf9BFauLkT31Zpm/270RC+S3PPfPH1K3FjFMIa3W7hhE
	/0oEo6WqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ityCU-0003T4-AM; Tue, 21 Jan 2020 18:24:30 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ityCP-0003SX-KI
 for b43-dev@lists.infradead.org; Tue, 21 Jan 2020 18:24:28 +0000
Received: by mail-oi1-x22f.google.com with SMTP id i1so3494976oie.8
 for <b43-dev@lists.infradead.org>; Tue, 21 Jan 2020 10:24:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=cglv7ZXEpTeEZ4KclGzoJhF5Ot5yeeGaJqUiCeSThik=;
 b=U3bumMRjukxIdnSGJOtaj1j87pvPQHY+8vcNQimufkaPfTQOgCqLmERpA0GUNE/4jb
 tiiR3ecnqFDDVM6akqzUrPLIuaLpujMvLsFm1Z/WIJaIV4p+iDP5ZxywI4NB9ETdqlwE
 MUJDvG7Yt9v5mY28C+T9O5VWcJoOl1O0oCGPxMJaHQ4AYHH5ciRuKgOzCaYcMTRxai0M
 m7dHkmQwmd/5i3FKARnHmeKUXGCXpjaU2aIkquxEgAH3no+18wfUgCVhx5hSYq1vw9AO
 YaTcu2YGPwkZPfxKT+FHmhhAuOVk6LrtuD7myrh6NRc4TM8BEp5Wtgfu4joN6GiVyxvJ
 CqBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cglv7ZXEpTeEZ4KclGzoJhF5Ot5yeeGaJqUiCeSThik=;
 b=otl6vW8BmRsKs9+qWbn7FPYmN2BVt61Rwo+Faw0KgFLs6OykXh1Aq419blkq7QScuA
 HUF11ib2Cuq27VabJH6DijISWPXRWwinfKpsQZbDw3CNnwAs6wfTtV9EfpiTI9RURtSb
 +wahFugS6ACojhWcv8tr4osXfywNMlryPETf+ah0iPyYVTyWt/nlqpb0WaxES1PaucQf
 hChNQYOUJ46MQL2g7QDsEK4MXHAtnWhJjHgMNfO2V2cWL5Jd3Mm6PXNasX8f4MV7xAeY
 MN7wuPAu9Ha74g92j8aQFiL7rvbILFhHyhygC+zXJiLe59ixFZVBbP9IDHvZehpB5yyx
 GC2Q==
X-Gm-Message-State: APjAAAU4iAuS6Hlx1OQ1V/xc+8Vd+hUSLEhvT0tHaFJzMyTNwJVVvQnB
 U6FfxZ1Bx56y3/Bh5XhKl9lIclyZ
X-Google-Smtp-Source: APXvYqxCDlz3FycNJZ34qdzLUzdMYmXZegDABaVO/CTZHP2jisu63Kew3qaQ0wwbpi/tCGdbXxkiNw==
X-Received: by 2002:a05:6808:315:: with SMTP id
 i21mr3848248oie.139.1579631063663; 
 Tue, 21 Jan 2020 10:24:23 -0800 (PST)
Received: from [192.168.1.120] (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id d131sm12404147oia.36.2020.01.21.10.24.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jan 2020 10:24:22 -0800 (PST)
Subject: Re: B43 BCM43217
To: frasanlop7 <frasanlop7@alum.us.es>, b43-dev@lists.infradead.org
References: <c746e24b-f678-9f24-1c46-c2a7623d7af4@alum.us.es>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <615a9bda-98cb-2079-bcfe-7e2f74ea3497@lwfinger.net>
Date: Tue, 21 Jan 2020 12:24:21 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <c746e24b-f678-9f24-1c46-c2a7623d7af4@alum.us.es>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_102425_669229_53CBB050 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:22f listed in]
 [list.dnswl.org]
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [larry.finger[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 1/21/20 10:47 AM, frasanlop7 wrote:
> Hi, I've a arm router with a BCM43217 and openwrt 18.06. The wifi its working 
> but it has a poor quality. I've a 70 per cent of packets retries, it often loss 
> packets (every 6-7 secs) and the bandwidth is about 500kB/s. Also it shows a 
> good signal quality. I'm using this card as a client and not as access point. 
> With other computers I got a much better connection (no losses, 10% retries, 
> 5MB/s). I'would like to ask if there is some drivers parameters to tune or 
> something else to get a better connection. The default firmware uses the wl 
> driver. Thanks

I was involved in the reverse engineering (RE) project that extended B43 to run 
with 802.11n chips. The base driver (wl) is very complicated, the RE results 
were less than perfect, and the resulting drivers have many problems, as you 
note. In addition, as shown in 
http://linuxwireless.sipsolutions.net/en/users/Drivers/b43/, this card was never 
tested! I am surprised that it works as well as it does. To my knowledge, there 
are no parameters that would tune the driver.

I am a little intrigued what use there would be for a consumer-grade router as a 
wifi client.

Larry



_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
