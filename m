Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34CAD1DEECE
	for <lists+b43-dev@lfdr.de>; Fri, 22 May 2020 20:02:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q/QgBUAhGQPnCi78fWgYpr6f9DEAyOhdUY/L9iWrddE=; b=cnoYVXb38NRyw9JfkmIE39HVs
	hcUfs17OQGYuTtxYuphg0OifiZg7xfMeBX30O5QXAFqXHUzClhg7XgAnwR9JIfFNViU4ZpEFzfeNX
	+RRPFCPh1Lcs2cQHDjABgb62z5KontL7HyWFHoKgLFXGg3xnc1P78Oek3LQ8MGLgqqgFwbjo4gm4n
	c6WPgmVjiwhqvEwMz9rkkNkp73inNh9GtfnSPS9jRadjEKV7HMj4MwEvelqC9K2BiEAVRu7RwwYvk
	7UO0bdwpxC6zr01iqI5lwMM6wGxTk7K9AUgcMo9z4S88bKJq0stCX2IORzaRZjO37hAN44xjCjhCn
	tJsYFgZzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcC0G-00085b-Fy; Fri, 22 May 2020 18:02:40 +0000
Received: from mail-oo1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcC0C-000856-T2
 for b43-dev@lists.infradead.org; Fri, 22 May 2020 18:02:38 +0000
Received: by mail-oo1-xc41.google.com with SMTP id p123so2329256oop.12
 for <b43-dev@lists.infradead.org>; Fri, 22 May 2020 11:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=GSCGiEHsC3ZI9KkAAWSs4IF8BYPJlvX2P9br2V/0CYY=;
 b=kc6ySc7htv/sdXoWpcKgEwVDH/I8bN4tLrXxQOTr96bwgtmdfz94141cTihoyVqcNa
 TLsIr2ZVSx0muS+daWEPFrJyMGKlk/CzJY2OLR1JqISkwTnzUjo2tnMeG578WNlLy9Dh
 oPkdoYPft6BwC6NBEcKYUAw5olnHQRdEkKd6c/bCxAKN1yv5ruxL+MxyAemNZ/UXarid
 EEsnazb070uj7oCNHbCeAWx4ys7O7/L/c6Khb+PUgQQW7Zwh0gXj40IuB3gt1wgDWIZZ
 OmFnPiz0EOmHNfMhygQaSfdAme7T9aaDhCimS/SFCya9fidilr78YBYXyOQ9+pHobx+O
 DllQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GSCGiEHsC3ZI9KkAAWSs4IF8BYPJlvX2P9br2V/0CYY=;
 b=ny1utSiDFCW/wpZjnq0M3iZcHB3CGNa/VBPh6BHd37/j5u2l6ZX45UDEbAyCkj47Xf
 ZtgGZW+HJXOaRw6RyonOo0ATZ6TGFEt2c8yBOz3SJUeghJO+nOBXa0CIIlC74TuLzFfs
 De8uqADFKEPc4XtUQrH1YFwsa1ERTFOOaJ0oQUN1oLIQPAJY07OkM1MrR065hRAJM1Ys
 uXTMMDArtHbAaTBJWD9xgRsD4HXFpmf0XALr0nTfI5v3KDuUl4aLqSuTjZJez3uEQtZk
 z5VUz/24h0W6mPLBazyKbgZJG85W/RgIiCS6fR/Ghk/iXKuLyVjL3eAhlHN6iHkg42YV
 srXQ==
X-Gm-Message-State: AOAM532Z5y3sihwmUu6gZoKis16kuozGKTPV/BdDR9RBMEgrbeSFjj5i
 /G0k1P7AKW6An+Zibg83z0iC7N4V
X-Google-Smtp-Source: ABdhPJw3fJr7z57yyO2xSEloYu70PYL9yCldhdxZGiPi/OE57BVHbFQoxztyB/SMYdpUCMvdu47+yg==
X-Received: by 2002:a4a:5147:: with SMTP id s68mr3953933ooa.86.1590170555804; 
 Fri, 22 May 2020 11:02:35 -0700 (PDT)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id d11sm2638792otc.5.2020.05.22.11.02.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 11:02:34 -0700 (PDT)
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: Rui Salvaterra <rsalvaterra@gmail.com>, Kalle Valo <kvalo@codeaurora.org>
References: <CALjTZvbLOr5zAYyp75Cs6Zo8mWNUVq3ZRJu56G1iHdiihFejWQ@mail.gmail.com>
 <CALjTZvauK0Hh+aoabcDX9kkQZ4zN2ZjPnB+aq7YrJ9+-4ihiAg@mail.gmail.com>
 <87fffd5d-242a-7195-c4cc-80260dbd53c5@lwfinger.net>
 <CALjTZvYCFNSQ6HMN4owkiGTVrYaiU8R-P1KXgvkwGqcOo8uMuw@mail.gmail.com>
 <CALjTZvYMF_ERBfzkhaHvsTu6kt7MW+L_979sOVs8hcH7zF_Nyg@mail.gmail.com>
 <20200521124608.4b5c78f2@wiggum>
 <CALjTZvan46UTwcUxOSN=RiE6XHm-29Ln8B6wiv40V_RVxWewtA@mail.gmail.com>
 <20200521134011.656381ad@wiggum>
 <CALjTZvZcfT-aURMa=j-1ksWyVdu42bLEsGOaq+Hw39ioiPFKAA@mail.gmail.com>
 <CALjTZvY3_wjAx9DOEgYxpc4_fG-HWh_=O7veFxeEoygPzTJptw@mail.gmail.com>
 <2b22b778-2f89-9c42-93a0-5c165de26f35@lwfinger.net>
 <CALjTZva70Ni-s5VjRZL5BPswEtz5VZsX+dvE6rq2ztLJQ9v3kA@mail.gmail.com>
 <CALjTZvbvE_cDg9mfszscSBowznp1UpxqiN1LQfbgeCOYatKMNg@mail.gmail.com>
 <f6152cd7-1043-dde2-7fc1-634d8b07a231@lwfinger.net>
 <20200522121910.254aefc1@wiggum> <87a720gpfb.fsf@tynnyri.adurom.net>
 <CALjTZvYiFfqN3UMSM89Pg1rB9fJga+L1hVkBriEDeaej7oXcPw@mail.gmail.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <f1f97888-e7f6-d272-6ed1-8c040d8a7c91@lwfinger.net>
Date: Fri, 22 May 2020 13:02:33 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CALjTZvYiFfqN3UMSM89Pg1rB9fJga+L1hVkBriEDeaej7oXcPw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_110236_935450_DFA10FD9 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [larry.finger[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 =?UTF-8?Q?Michael_B=c3=bcsch?= <m@bues.ch>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

On 5/22/20 8:46 AM, Rui Salvaterra wrote:
> Hi, Kalle,
> 
> On Fri, 22 May 2020 at 12:49, Kalle Valo <kvalo@codeaurora.org> wrote:
>>
>> And did the "bad" performance even have any real visible changes to the
>> user? IMHO this "bad" performance is small price to pay from getting
>> WPA3 supported out-of-box, especially when the data throughput is
>> unaffected.
> 
> I agree, I also believe the additional security provided by WPA3 is
> more important. The CPU overhead impact exists and is measurable but,
> to be honest, I didn't notice any worse performance while browsing the
> web, for example (which is already slow enough on a G4 CPU, as you can
> imagine).

Rui,

Does this one-line
patch work for WPA3 without setting the nohwcrypt option?

diff --git a/drivers/net/wireless/broadcom/b43/main.c 
b/drivers/net/wireless/broadcom/b43/main.c
index 39da1a4c30ac..3ad94dad2d89 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -5569,7 +5569,7 @@ static struct b43_wl *b43_wireless_init(struct b43_bus_dev 
*dev)
         /* fill hw info */
         ieee80211_hw_set(hw, RX_INCLUDES_FCS);
         ieee80211_hw_set(hw, SIGNAL_DBM);
-
+       ieee80211_hw_set(hw, MFP_CAPABLE);
         hw->wiphy->interface_modes =
                 BIT(NL80211_IFTYPE_AP) |
                 BIT(NL80211_IFTYPE_MESH_POINT) |


Larry

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
