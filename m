Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B911DD683
	for <lists+b43-dev@lfdr.de>; Thu, 21 May 2020 21:01:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kCZrpCKHlZL7MFoqih7fzE+BbL/1HZq2YX28t33D1Gg=; b=YhQUYXhqu3/1RsbYmH+nu+0nP
	ubWqvF09MYyOQfDRHdt8CzTqEhnCbhPQychMY/ltTw5GHn4pDyykbWX9wbjUuqBcbSsWwYBGfYT18
	bdcU3ZfG/hTLeyM6J7DXBIBSRMHthwakFwH3N0qp5FmfZMuV4FxJ+S/gVAAdwaDlEQzAGkaFCUH1S
	qCAP5w7D4trGtiUzHQpVmeaPmWes5J6bTEezrMSwPzciAkyQLdY9JkW+AtL23Lt9ppJgHxfeJKjdF
	nWuPQuep8I99HNIqlWUSxtCoz2LesrTDNkwTAShL8V9r14Jvs6kZa/5vBoBP05mByLLBwFhFHz0i2
	SNbN9EE0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbqRF-00017M-Ke; Thu, 21 May 2020 19:01:05 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbqQD-0006WE-4V
 for b43-dev@lists.infradead.org; Thu, 21 May 2020 19:00:03 +0000
Received: by mail-oi1-x233.google.com with SMTP id x23so7142078oic.3
 for <b43-dev@lists.infradead.org>; Thu, 21 May 2020 12:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language;
 bh=u3xRUP/EgKW0qRgBStwhII9XoIW+PTrEz9S9wi8N+9c=;
 b=Hi+V7Mf41eAel6x9M1CaxubVcfi+K3Dj3+sHArZnkvQsBecF3gYR0LEM9F/6YoVQBn
 8lptxfsz5KFlSOJSCafF8oVXmtLjkLePp1Rnyvbr33wmpqS0RBsYVesBh6VH+4+dd9HR
 m+T9uwzt0YhDaBGqdip5tmpboC+MS7HBs9G6Jllrp7YRk1jR4Ax7QOXe3FrFUdoJ6N/6
 mF7d29R7xDENHUATCxPWLA6GclzAwBetaxWJW4qQJDU17HbSP95VN68muhduo7lKpGsY
 cgXj0kmedjZ5FNtyeX21RUYk6MZfY6WJamH0X1F+gezOXA2co7W96iGddKfzsSyRtTab
 qhHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language;
 bh=u3xRUP/EgKW0qRgBStwhII9XoIW+PTrEz9S9wi8N+9c=;
 b=XpLW6Czk5Q8ze80usP+4USis1hc9ZbM1BvWePt3E1PsvFpNzIUgcWZCTSWNs3G2rXb
 o9T6c+hzk3NqQdDlS63OUzjVDht7glbMo6s0K7tShOGIpzl3mILWlE0WSE9gYc86cc0v
 vC2U7kQnHtZgiW4lY65FKmhXx40oGlmORmYW3QHsN9dQ9mL0o2LlaaRkAnUXTHWBgb2Z
 Bn3KfoMX4R8em44aa8baoG5Dlgl6bYjaIlNHX8RV+wNh03gyPwqCSdcY7oBRoWQ+J8Xa
 MeiEAfDpwdE4bHzbzHFrjhJfm5zvaJ5QK0MWAkSndwSWVD7eK76PBNpdDcizmTYetCQS
 1jbg==
X-Gm-Message-State: AOAM533cLY9p113qwdpsGLq1AJQV685x0CIRhYMvmOqdflvVDVH0YtAa
 pe61dJELqAPft5IFxaVA+kx8DQZ3
X-Google-Smtp-Source: ABdhPJzxtF7iFzNdpqLRTh3ZzNczQMXZ1LytG/tdmTUX+SEKIDiAydFFl+BfAgI0uokxgaEGCETHIQ==
X-Received: by 2002:aca:7288:: with SMTP id p130mr7599324oic.15.1590087599610; 
 Thu, 21 May 2020 11:59:59 -0700 (PDT)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id i2sm1834688oto.56.2020.05.21.11.59.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 11:59:58 -0700 (PDT)
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: Rui Salvaterra <rsalvaterra@gmail.com>, =?UTF-8?Q?Michael_B=c3=bcsch?=
 <m@bues.ch>
References: <CALjTZvbLOr5zAYyp75Cs6Zo8mWNUVq3ZRJu56G1iHdiihFejWQ@mail.gmail.com>
 <CALjTZvatxQ2BvUeZGcTFijBf1PiLizJuDdENxg2b=tPQL_NAzQ@mail.gmail.com>
 <CALjTZvYSJOx0xeMVkN6dHcGTdgW9O9NVbgXPKK4d6-31VX+0JQ@mail.gmail.com>
 <29f5e3de-a32c-6292-9197-19dcc57fa6a3@lwfinger.net>
 <CALjTZvaroTrgK9=W8uTwq9YcYayfuEU31BUc0qNYJr+08hevfg@mail.gmail.com>
 <CALjTZvaPi2FL-epk-Vd2wOLye2O0J8G5aZPsqzHXt2b7u=HyuQ@mail.gmail.com>
 <263e247c-3bf9-6d42-996b-bc513efe4b71@lwfinger.net>
 <CALjTZvauK0Hh+aoabcDX9kkQZ4zN2ZjPnB+aq7YrJ9+-4ihiAg@mail.gmail.com>
 <87fffd5d-242a-7195-c4cc-80260dbd53c5@lwfinger.net>
 <CALjTZvYCFNSQ6HMN4owkiGTVrYaiU8R-P1KXgvkwGqcOo8uMuw@mail.gmail.com>
 <CALjTZvYMF_ERBfzkhaHvsTu6kt7MW+L_979sOVs8hcH7zF_Nyg@mail.gmail.com>
 <20200521124608.4b5c78f2@wiggum>
 <CALjTZvan46UTwcUxOSN=RiE6XHm-29Ln8B6wiv40V_RVxWewtA@mail.gmail.com>
 <20200521134011.656381ad@wiggum>
 <CALjTZvZcfT-aURMa=j-1ksWyVdu42bLEsGOaq+Hw39ioiPFKAA@mail.gmail.com>
 <CALjTZvY3_wjAx9DOEgYxpc4_fG-HWh_=O7veFxeEoygPzTJptw@mail.gmail.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <2b22b778-2f89-9c42-93a0-5c165de26f35@lwfinger.net>
Date: Thu, 21 May 2020 13:59:57 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CALjTZvY3_wjAx9DOEgYxpc4_fG-HWh_=O7veFxeEoygPzTJptw@mail.gmail.com>
Content-Type: multipart/mixed; boundary="------------2F07E19256F81DFFF09A4C9B"
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_120001_284251_3DECB412 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:233 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [larry.finger[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

This is a multi-part message in MIME format.
--------------2F07E19256F81DFFF09A4C9B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 5/21/20 11:17 AM, Rui Salvaterra wrote:
> Hi, guys,
> 
> On Thu, 21 May 2020 at 15:52, Rui Salvaterra <rsalvaterra@gmail.com> wrote:
>>
>> It's not exactly a modern Wi-Fi card either, and being 802.11g might
>> actually help limiting the CPU overhead.
> 
> Yeah, as I expected, it's neither great nor terrible. I fired up iperf
> to do some quick and dirty testing: with WPA2 (hardware crypto) I get
> around 13 % CPU, with WPA3 (software crypto), around 34 %. The
> throughput is pretty much the same.

I did only a rough test, but turning off hardware encryption increased the b43 
interrupt routine from a maximum of 10% of a cpu to about 20%. Even on a fast 
cpu, it seems that hw encryption should be used if possible.

I have one additional test for you. With the attached patch, do you get the 
message that software crypto is required? It should appear only once.


Larry


--------------2F07E19256F81DFFF09A4C9B
Content-Type: text/x-patch; charset=UTF-8;
 name="b43_crypto.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="b43_crypto.patch"

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index 39da1a4c30ac..c5322f52040c 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -4161,6 +4161,7 @@ static int b43_op_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
 	u8 index;
 	int err;
 	static const u8 bcast_addr[ETH_ALEN] = { 0xff, 0xff, 0xff, 0xff, 0xff, 0xff };
+	static int encrypt_warn;
 
 	if (modparam_nohwcrypt)
 		return -ENOSPC; /* User disabled HW-crypto */
@@ -4189,6 +4190,10 @@ static int b43_op_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
 	if (dev->fw.pcm_request_failed || !dev->hwcrypto_enabled) {
 		/* We don't have firmware for the crypto engine.
 		 * Must use software-crypto. */
+		if (encrypt_warn++) {
+			b43info(wl, "***** A cipher used by this connection requires using software encryption\n");
+			b43info(wl, "***** Reload b43 with modules option 'nohwcrypt=1'\n");
+		}
 		err = -EOPNOTSUPP;
 		goto out_unlock;
 	}
@@ -5569,7 +5574,9 @@ static struct b43_wl *b43_wireless_init(struct b43_bus_dev *dev)
 	/* fill hw info */
 	ieee80211_hw_set(hw, RX_INCLUDES_FCS);
 	ieee80211_hw_set(hw, SIGNAL_DBM);
-
+	/* if hardware encryption is disabled, enable MFP (and WPA3) */
+	if (modparam_nohwcrypt)
+		ieee80211_hw_set(hw, MFP_CAPABLE);
 	hw->wiphy->interface_modes =
 		BIT(NL80211_IFTYPE_AP) |
 		BIT(NL80211_IFTYPE_MESH_POINT) |

--------------2F07E19256F81DFFF09A4C9B
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--------------2F07E19256F81DFFF09A4C9B--

