Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E60671DBFE6
	for <lists+b43-dev@lfdr.de>; Wed, 20 May 2020 22:09:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Zon+oDfMo+mJrXbZpkag2zU4tJjY3j1L9Vsimyratu8=; b=seJtICmQSMXaPy8wo//pgSE1j
	1WJMBkQaCxLd2uWFNpXPIX805s+0JZIOFvg4u+UQiKTFe56nroMdGZbhoxB5aCG1kXQSnGBnpqCRI
	qMIFcz1DEdi+fB1iNBv/aMyXNrKQK7W4kL9aqPKAPRBUPA68k7b9QS6GNHNpT3pUBpWqSwYYwTL2b
	PLr9zSwMlZttQZlOKPdXwNdi8+fHqkhDO/YnjZPTug0/6dwsl5JT2SSNgQ3pM2At+EJoeZlmB1NyL
	hA0k4mgCP02ciBUAJBWlVn/e80B6ALWPm/T+/EX+CBKXO4ax+LEu4uKJ4hW4IpVjSA1WdZ5RvpGYB
	OqSAFF1GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbV1O-0005jj-V6; Wed, 20 May 2020 20:08:58 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbV0w-0005if-Cw
 for b43-dev@lists.infradead.org; Wed, 20 May 2020 20:08:31 +0000
Received: by mail-oi1-x244.google.com with SMTP id j145so4121499oib.5
 for <b43-dev@lists.infradead.org>; Wed, 20 May 2020 13:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=JTIq12nEFnaRPj0zVu/LWgxDphwDFMpWDi+VzEN9k/s=;
 b=YzE3j/Dj2wN8sl3oPrPAIEDWzaSL6wO7PmdGQW+k76HO/lY5rUsnmjAqoDVU06vtC/
 WYVW03G9wAB2gseeIvCAHaisaCNZw3btdvbuEY7FofZ5sbyH+Oi08AwYbhdJCp/OMd6d
 zrtOs4TUWSz/WQwkHe5BwzpUj0lhFLoy8n544zTbmRrnZ4821GjrEddmiY+2gT2Z/Io+
 XzAqBROZJ5JzBZPiwptN3/Xk7GOmzyFgYk1UG5BuKc74BOHCBidMM11hCAyD+hnUeaZU
 KiUyl3uEObb3F2LWvElYuCRocXw74zpBxxXU84rs1APitJobHT1KNquKJqrtSz+0t54E
 LE8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JTIq12nEFnaRPj0zVu/LWgxDphwDFMpWDi+VzEN9k/s=;
 b=owGkPDviBuOS+0pF49O0AEppnp59R+eKreI48nOogksYrSx095fJavLqTzW22K/PbC
 G9ri8lWCJ0W2v/nWJLz3CbRmF9UvazdifGrVLjESEoNOcFYjpdFBrFWSC9iIdEJY/vbf
 NfFqAYeWKNCIVRjVAQcKRBfbymKZGQHMvhiIABZpXVnINsh22I5fx1yGPdrtKEApvzgL
 pq1hWRLmV/2GBtWsW2+Aai+80qt+QuOe6SG69lACluZy9OiYkDxjrItN3onDBXxUSBzE
 uFjmDcb/VgmV+9rnjw2k8u4QtAak6v2x8Xgkvss0wRz9vXTg6I1TtiAqFNZLbKv147Xc
 6hfQ==
X-Gm-Message-State: AOAM533HwyICC9+xDcGeUNzHYeJaqrmeeD+scn9wzxDsHDDI03qQ9C6j
 zmkuwLz3iwdfGF1/qJKI2jeb2p7l
X-Google-Smtp-Source: ABdhPJxLUV6QNOhqL7R+WuYc7JLCB4fDXoJiajHL9YxvTOsc6XGqmsZ/wgfgp0dQcCBgoA/kS6itfQ==
X-Received: by 2002:aca:3254:: with SMTP id y81mr4418574oiy.172.1590005305853; 
 Wed, 20 May 2020 13:08:25 -0700 (PDT)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id l26sm1043524oos.43.2020.05.20.13.08.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 May 2020 13:08:25 -0700 (PDT)
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: Rui Salvaterra <rsalvaterra@gmail.com>
References: <CALjTZvbLOr5zAYyp75Cs6Zo8mWNUVq3ZRJu56G1iHdiihFejWQ@mail.gmail.com>
 <3483242e-c2ad-ec83-0c2c-ce952bc9b638@lwfinger.net>
 <CALjTZvatxQ2BvUeZGcTFijBf1PiLizJuDdENxg2b=tPQL_NAzQ@mail.gmail.com>
 <CALjTZvYSJOx0xeMVkN6dHcGTdgW9O9NVbgXPKK4d6-31VX+0JQ@mail.gmail.com>
 <29f5e3de-a32c-6292-9197-19dcc57fa6a3@lwfinger.net>
 <CALjTZvaroTrgK9=W8uTwq9YcYayfuEU31BUc0qNYJr+08hevfg@mail.gmail.com>
 <CALjTZvaPi2FL-epk-Vd2wOLye2O0J8G5aZPsqzHXt2b7u=HyuQ@mail.gmail.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <263e247c-3bf9-6d42-996b-bc513efe4b71@lwfinger.net>
Date: Wed, 20 May 2020 15:08:24 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CALjTZvaPi2FL-epk-Vd2wOLye2O0J8G5aZPsqzHXt2b7u=HyuQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_130830_456850_F2F3DCE9 
X-CRM114-Status: GOOD (  14.13  )
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

On 5/20/20 5:55 AM, Rui Salvaterra wrote:
> On Wed, 20 May 2020 at 09:24, Rui Salvaterra <rsalvaterra@gmail.com> wrote:
>>
>> Hi, Larry,
>>
>> On Wed, 20 May 2020 at 01:16, Larry Finger <Larry.Finger@lwfinger.net> wrote:
>>>
>>> It is necessary to load the driver with option nohwcrypt set to 1. I expect that
>>> you probably did that, but I forgot to mention it.
>>
>> Yes, of course. I don't use modules, so I pass b43.nohwcrypt=1 in the
>> kernel command line. I confirmed in sysfs the nohwcrypt parameter is
>> correctly set to 1.
>>
>>> It would likely help if you can get verbose logs from wpa_supplicant.
>>
>> No problem! Attached is a wpa_supplicant -d log. Let me know if you
>> need extra verbosity.
>>
>> Thanks,
>> Rui
> 
> By the way, I just tested with WPA2 forcing MFP (pmf=3 in the Network
> Manager connection) and it also doesn't connect.

I found this line in the b43 logs:
nl80211: NL80211_CMD_SET_PMKSA failed: -95 (Operation not supported)

Could we also see the supplicant log for the RaLink driver that works?

Larry


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
