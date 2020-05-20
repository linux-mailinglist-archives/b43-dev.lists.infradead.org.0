Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E61931DC0AB
	for <lists+b43-dev@lfdr.de>; Wed, 20 May 2020 22:56:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CnQsvuSvzK4u2bb6OAiDmEUJZWexFa3Lh2vKSJjd9fY=; b=UGnNEfW+qCKG2JfLbj9yj9Xlg
	fIGyewsVbs1oVVJ4wSHwFlkhlo3RvP9zzVuXt9SfExjKnDEQrv8/c3OrD9WYFLsNeH8zrUelL3Qq3
	r11C765a5kwybFcgfJBn9iD3izjJqd91Q7D+v/g80kGieXvrXVOi5UxVAVW4QfucqJTOPctVI+Qql
	AlKVQ+Y8s1U5RXDufkSKzJPwsrxMJe87B1d3PhFvs81cIry9HyD9bZrhClYLPaUU3uOkih1z8QQxV
	zNpQT/CF+FDbckaYKoA/Zezf4XERCX1p2G4wxoK9lyE+5uleJmshcOusSVYNYj94IbEHcOw3TLVHP
	LSuCaZXDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbVlH-0002qD-E5; Wed, 20 May 2020 20:56:23 +0000
Received: from mail-oo1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbVlE-0002pK-EK
 for b43-dev@lists.infradead.org; Wed, 20 May 2020 20:56:21 +0000
Received: by mail-oo1-xc44.google.com with SMTP id p123so968446oop.12
 for <b43-dev@lists.infradead.org>; Wed, 20 May 2020 13:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Z5984Y6a+qDCOEn0z7BxJFP/LZWybUR8jBVn+MZPqzU=;
 b=bx5Dek8bIuSdHGgRSOJMqztYvhd7IYJEdLijM0NZy3OscNjvkmgg5mJB6ILcyu2F7h
 wqa5iMI6wqAJtDacHoWSONy9OmeLRinwvM6HoOgUwB7t94IOOu4VIxDfFdlwvlOSvFcs
 OziZiPBQDcv+dLEizyAoZJHOzQC9nOTg34bzVyhnQBfwHPizENTTCm/pOqu2/Bxa/weP
 xXX8IerAaVNDOw/xJIatxpNZk9SlnDeBnqyXj/QoGI6P/nek3ah2g7ttJZl4PLyvjvY3
 UAZncG1LHFr6Akm1HjC9y41X9lq01kY5g0+IIpoH7ByOzO76BAFGr9ploN80KEzj18q8
 ZtIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Z5984Y6a+qDCOEn0z7BxJFP/LZWybUR8jBVn+MZPqzU=;
 b=hPfIw9QH17ZCQiI5ofFB547G52x8V3jmNG9YOkL0X44HKiYPZ7lml1h8lMa76Mlo8P
 LDn2W5khsxyW8crUByckRjxaNuZWbZjKK7LxNZtBxSw1zEiZ5MybAFccMqAlELv5K/yo
 SFtuI4lBWhKGj28PcPn5xFAWzQIFf58e1UoH7Q2bnbHAP62AkU3O2zJy65Ggrp9OV61W
 ol+8pv4oQkXFMjnh9abpaPoU5xi8zEdtfIFL/LqOnNOjJU3FuZRekMXWKhJR3CyvXg64
 fbtNPYrBp7BRRVVkKOKg+nEZ45kGrOP6sK+qOS0o7B5Oh1Z6Qk5RgS9SUylxtzy+Ou+V
 V7Fw==
X-Gm-Message-State: AOAM532Ypn7dNhVBUp7yKH29MJ85/rCt5Q0in46qc13vGu3gbu/cgOZs
 GOgydFhEK4cBCiyk4gGoUCR14JOu
X-Google-Smtp-Source: ABdhPJxG01/Dr6KTDEEXmLD1kP1QzYtrY4GCTFkON1SZKwqJJrkgW+5HLgZbtzyUi7v+IK5hmqKGTQ==
X-Received: by 2002:a4a:94eb:: with SMTP id l40mr4965781ooi.30.1590008179073; 
 Wed, 20 May 2020 13:56:19 -0700 (PDT)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id f5sm666682oig.32.2020.05.20.13.56.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 May 2020 13:56:18 -0700 (PDT)
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: Rui Salvaterra <rsalvaterra@gmail.com>
References: <CALjTZvbLOr5zAYyp75Cs6Zo8mWNUVq3ZRJu56G1iHdiihFejWQ@mail.gmail.com>
 <3483242e-c2ad-ec83-0c2c-ce952bc9b638@lwfinger.net>
 <CALjTZvatxQ2BvUeZGcTFijBf1PiLizJuDdENxg2b=tPQL_NAzQ@mail.gmail.com>
 <CALjTZvYSJOx0xeMVkN6dHcGTdgW9O9NVbgXPKK4d6-31VX+0JQ@mail.gmail.com>
 <29f5e3de-a32c-6292-9197-19dcc57fa6a3@lwfinger.net>
 <CALjTZvaroTrgK9=W8uTwq9YcYayfuEU31BUc0qNYJr+08hevfg@mail.gmail.com>
 <CALjTZvaPi2FL-epk-Vd2wOLye2O0J8G5aZPsqzHXt2b7u=HyuQ@mail.gmail.com>
 <263e247c-3bf9-6d42-996b-bc513efe4b71@lwfinger.net>
 <CALjTZvauK0Hh+aoabcDX9kkQZ4zN2ZjPnB+aq7YrJ9+-4ihiAg@mail.gmail.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <87fffd5d-242a-7195-c4cc-80260dbd53c5@lwfinger.net>
Date: Wed, 20 May 2020 15:56:17 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CALjTZvauK0Hh+aoabcDX9kkQZ4zN2ZjPnB+aq7YrJ9+-4ihiAg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_135620_484267_442B6CDB 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
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

On 5/20/20 3:28 PM, Rui Salvaterra wrote:
> On Wed, 20 May 2020 at 21:08, Larry Finger <Larry.Finger@lwfinger.net> wrote:
>>
>> I found this line in the b43 logs:
>> nl80211: NL80211_CMD_SET_PMKSA failed: -95 (Operation not supported)
>>
>> Could we also see the supplicant log for the RaLink driver that works?
> 
> Sure thing, here you go! This one's much shorter, since the connection
> was successful.

A quick difference - this one supports 3 additional ciphers:

vedder wpa_supplicant[376]: nl80211: Supported cipher 00-0f-ac:13
vedder wpa_supplicant[376]: nl80211: Supported cipher 00-0f-ac:11
vedder wpa_supplicant[376]: nl80211: Supported cipher 00-0f-ac:12

The one with :13 is for  BIP-CMAC-256, :11 is BIP-GMAC-128, and :12 is 
BIP-GMAC-256. I did not find a reference that says that these are needed for 
WPA3, but I am suspicious.

Thus far, I have not found where the driver tells nl80211 what should be supported.

Perhaps, we were calling ieee80211_hw_set() in the wrong place. Try

diff --git a/drivers/net/wireless/broadcom/b43/main.c 
b/drivers/net/wireless/broadcom/b43/main.c
index 39da1a4c30ac..211d6126734f 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -5569,7 +5569,10 @@ static struct b43_wl *b43_wireless_init(struct 
b43_bus_dev *dev)
         /* fill hw info */
         ieee80211_hw_set(hw, RX_INCLUDES_FCS);
         ieee80211_hw_set(hw, SIGNAL_DBM);
-
+       if (modparam_nohwcrypt) {
+               printk(KERN_INFO "b43: Setting MFP_CAPABLE\n");
+               ieee80211_hw_set(hw, MFP_CAPABLE);
+       }
         hw->wiphy->interface_modes =
                 BIT(NL80211_IFTYPE_AP) |
                 BIT(NL80211_IFTYPE_MESH_POINT) |

In addition, check that the printk message is seen in dmesg.

Larry


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
