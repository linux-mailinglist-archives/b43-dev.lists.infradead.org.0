Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B481DA649
	for <lists+b43-dev@lfdr.de>; Wed, 20 May 2020 02:17:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QvRSXyqYzaO8hN4OMGsUK86ydxCi08a910oqh0PLm2c=; b=c+M0/+ePZWi60G79/Z2Xhc8CQ
	tNZmZYgcQtzRoyIu28THxU3D/Rh0QfP8DEM2fexSqQvlYrzkF4uq9Snm2zJtsi5E+qdSk41xxdXXy
	q3trWQQLkoXJk9hXbNkKO6P8i+AAH2Z3mDzUBH+VrbEek0qN12k0yTxcAf7REPBJmdI46cbUg11U2
	wEGgT3BoCTDLJtFUYUR0NFvkx9B3T69t1bC51g1/fcS2oZ8beR9GKQHNqsPNOVUBTIUFzAOqUmwej
	3svxXaoPnpQMKYmhokkKNq5ea2PcPUoFtVXX0DrPWgIolub2JTeoFJ3go1I4IZ421RwVDCGw9EELm
	N9ICEfxlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbCPr-00008Z-3P; Wed, 20 May 2020 00:16:59 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbCPi-00007i-Ji
 for b43-dev@lists.infradead.org; Wed, 20 May 2020 00:16:56 +0000
Received: by mail-oi1-x244.google.com with SMTP id r25so1439029oij.4
 for <b43-dev@lists.infradead.org>; Tue, 19 May 2020 17:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=dhvleQ689QNEHgOIdHy+23CP7Vfnnoy7TGPjbydhzcw=;
 b=UFyn+oLPY8K5X5MI8gl2yXzOJFJCCMSXKMLkcApvfQU5faLRUHg45HpOpBLKGHPZGN
 Sldjxdd3PCM/XI6jWYhpJ9c94fcMOWQuGTO/ZAQ9pHKIooxP+UVxrlB1ebm9G045cX0S
 oONwz99oMJRIV+a6UM2mtNrlpJydNvnUMcr0ai6FgQ+mRvvKIuDWsliaNmanH5O8nZu8
 fEeerj7uZBRXcflMITtSF/3b0qJEK/BRPsXniPLVBBio5VvLi5A+3hYIKWL9X9YOwEJz
 oXeAWVVzGgOLakRUxYMUWcYU8ki6JGEs01n7EjvTS6z9HzhGqCPPKTKjj45VsRLxQGlV
 7acg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dhvleQ689QNEHgOIdHy+23CP7Vfnnoy7TGPjbydhzcw=;
 b=D5KujqcigpS8w9UPeMlUGTLC6m9zCH7SydytLL+7iyhbZqrn3jIlF/lP4vYrSlpOh2
 YDYPEE09fvnt57F6JYKV6PKYGZS5MuWpa4+VCiAwIlO8oU103JxFx00lPEYEEecmBVoX
 gCligg3o7MFnHTsgVnUvVT8jcShaaiiQpXRBpwwiGdNyDZVM8j7pZgoVU0elp4t1i8do
 TxQigxsStG0g1dWUh3K3VaXi2DYerePEI8tyhTMu2mJts/uLf5zl70x7cSafUpMNPnqf
 JLmQOWIlEhA8/EtvZb20uo+4vxDhaZ0ofFBQPsramr1h5UYQjICJO+gs3YX5RPPdrZ/q
 ve7A==
X-Gm-Message-State: AOAM5307stqt35zEoUtCVnTfheQGc22ZttMDJQYq70I2cDI9VBzgPlDH
 QFdeUk41cgpeTc4xBW8Z5cwClwbk
X-Google-Smtp-Source: ABdhPJx8E4I8W0gDgftY9I8uF6ivgwtF69zBfsr1Uaqz2eYnYUqyPKye/3ZnEymoGruRZG/qHmQnYg==
X-Received: by 2002:aca:1a18:: with SMTP id a24mr1554914oia.99.1589933807621; 
 Tue, 19 May 2020 17:16:47 -0700 (PDT)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id k12sm365799oik.30.2020.05.19.17.16.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 May 2020 17:16:46 -0700 (PDT)
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: Rui Salvaterra <rsalvaterra@gmail.com>
References: <CALjTZvbLOr5zAYyp75Cs6Zo8mWNUVq3ZRJu56G1iHdiihFejWQ@mail.gmail.com>
 <3483242e-c2ad-ec83-0c2c-ce952bc9b638@lwfinger.net>
 <CALjTZvatxQ2BvUeZGcTFijBf1PiLizJuDdENxg2b=tPQL_NAzQ@mail.gmail.com>
 <CALjTZvYSJOx0xeMVkN6dHcGTdgW9O9NVbgXPKK4d6-31VX+0JQ@mail.gmail.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <29f5e3de-a32c-6292-9197-19dcc57fa6a3@lwfinger.net>
Date: Tue, 19 May 2020 19:16:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CALjTZvYSJOx0xeMVkN6dHcGTdgW9O9NVbgXPKK4d6-31VX+0JQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_171653_863600_72983AA6 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [larry.finger[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

On 5/19/20 6:13 PM, Rui Salvaterra wrote:
> On Tue, 19 May 2020 at 21:36, Rui Salvaterra <rsalvaterra@gmail.com> wrote:
>>
>> Hi, Larry,
>>
>> On Tue, 19 May 2020 at 21:30, Larry Finger <Larry.Finger@lwfinger.net> wrote:
>>>
>>>   From other drivers, it appears that handling WPA3 might be as simple as setting
>>> MFP_CAPABLE in the hardware capabilities. Please try this patch:
>>
>> Fantastic, thanks for the quick reply! I will do it ASAP and get back to you.
> 
> Unfortunately, looks like in this driver it's not so simple, the
> association is still rejected. I looked at the other drivers too and,
> sure enough, they just set the MFP_CAPABLE flag unconditionally with
> software crypto (I would expect mac80211 to magically handle it, but
> with b43 it doesn't seem to be the case).

It is necessary to load the driver with option nohwcrypt set to 1. I expect that 
you probably did that, but I forgot to mention it.

It would likely help if you can get verbose logs from wpa_supplicant.

Larry


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
