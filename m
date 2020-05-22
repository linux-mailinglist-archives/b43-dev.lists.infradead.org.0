Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 468C61DEDFD
	for <lists+b43-dev@lfdr.de>; Fri, 22 May 2020 19:15:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aCGw/2W9a69XgoIFnYY5//UR9C07mMMdfE2ZgTmRPjQ=; b=pRlYOvbyYcFV/Cn7DXamTfb+8
	UQfOvb1fRG9K8kw6eO9DEtyqDLsrDePkknJYeEMcevFSytVn/1KrBvjdmYmp49Gtok+jVDQlEYL5+
	y/5XD7wG2i4SZ1+dUcBKDOMhmffv04Ot3yMnoA4TaFiOnH0BlHOupdJvhdjut+HoNonuPkXTrEEbS
	nXqkLM6EJ5U1O+F+FITI9F6IN4zSzUpQD7xH8y4jIOImEsnlXFIjQoom62kQDhg+K+l7JKYjWLp3P
	RcYjGVJ6YrU6Vd1BO2Bf2/ep1vzv/d5vM9fW/rVY45je/rv7DRHvPN3xu79SXgzFFBQYbKLW8HlY/
	VnTeI2VrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcBGH-00032V-3S; Fri, 22 May 2020 17:15:09 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcBGB-00023g-AG
 for b43-dev@lists.infradead.org; Fri, 22 May 2020 17:15:05 +0000
Received: by mail-oi1-x22a.google.com with SMTP id i22so9899266oik.10
 for <b43-dev@lists.infradead.org>; Fri, 22 May 2020 10:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ckgg64SC7fdaahBmYEinAAOpnv23m7eSUns6AU0ttpM=;
 b=WV++N2+NBkx939H4jCUnBjEIa5vqsfMYuYB9/gNv32VZ01Vt1N4KUaqF8YeMW+S1B6
 ML8n9WN17S5sY970pKC9/Smncy1NGrEAV+GdSRlaybfdHyHAnSLOigLVTKbMmz7JRYYc
 psgyf9xT4D2PdYq0m0wXX2N0HwGA5xNBSrmu4Yp3Gsi19NXEysm2FG0iGaOsrEDMkJ+9
 96NbUqdPqbykiEKhJmc396bcP5SCgwly7PBrNOQh9zANC2V0teZVaDEFrpxRXz0+4Ye0
 LzgcuR5UIPDEjQPgf48bl85nX0fDh6wypvtbi3jkeKT87uc+01LHqZwYPv+xPL9OdWP5
 5Uqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ckgg64SC7fdaahBmYEinAAOpnv23m7eSUns6AU0ttpM=;
 b=EP9iTG708y1LIdt6s2XPcLywfPNbbD70xCy9g6yc6eGwdRaTLoIPEJDALSuBZqU1Rg
 i6AQSuz7JmVaUjnaP0FnWKoe8djjyl4oEi/XjsqVep8A5DAyMcZNoA89dGP11a2oQS1R
 PSLcNYHtujkEetK63ZFYkKaekXC64MUE8chGvLsTsRo1INjPDp0VLhRLS0umSxPfwAHv
 4s3rwHsiuKjzMOKQ7MjYeWfG8xqzTHYpjcAB+uf2Ci9Y65JNsra3GrGvBTVpgzXtsgvV
 P5UoqxSgwQ0AIau82gTcBBAfuKcQ3WGLtEZguzDh4QRRHcP+l79AlTSP0lqGMYNCtxHs
 ZL6A==
X-Gm-Message-State: AOAM533bXC7bnLek1jpKaQN/+5s+YVsWHaJo6dSeHVphgAeF56k7IpGP
 wYdxeIgH8Hz6fUGEkXDJ1xxzPbmH
X-Google-Smtp-Source: ABdhPJxcM6bXLt737eva3Gj24e82sS+5h+WaUPfDEvgAJ/BEkVNj9TGuK+NG3G0OJOBNl2tJgxqJ9g==
X-Received: by 2002:aca:d609:: with SMTP id n9mr3372266oig.77.1590167702013;
 Fri, 22 May 2020 10:15:02 -0700 (PDT)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id z12sm2707473oor.0.2020.05.22.10.15.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 10:15:01 -0700 (PDT)
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: Kalle Valo <kvalo@codeaurora.org>, =?UTF-8?Q?Michael_B=c3=bcsch?=
 <m@bues.ch>
References: <CALjTZvbLOr5zAYyp75Cs6Zo8mWNUVq3ZRJu56G1iHdiihFejWQ@mail.gmail.com>
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
 <2b22b778-2f89-9c42-93a0-5c165de26f35@lwfinger.net>
 <CALjTZva70Ni-s5VjRZL5BPswEtz5VZsX+dvE6rq2ztLJQ9v3kA@mail.gmail.com>
 <CALjTZvbvE_cDg9mfszscSBowznp1UpxqiN1LQfbgeCOYatKMNg@mail.gmail.com>
 <f6152cd7-1043-dde2-7fc1-634d8b07a231@lwfinger.net>
 <20200522121910.254aefc1@wiggum> <87a720gpfb.fsf@tynnyri.adurom.net>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <842ae4a0-5aa5-a464-3218-8955a3ee445a@lwfinger.net>
Date: Fri, 22 May 2020 12:15:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <87a720gpfb.fsf@tynnyri.adurom.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_101503_387802_5AF2A9AA 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:22a listed in]
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
 Rui Salvaterra <rsalvaterra@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

On 5/22/20 6:49 AM, Kalle Valo wrote:
> 
> And did the "bad" performance even have any real visible changes to the
> user? IMHO this "bad" performance is small price to pay from getting
> WPA3 supported out-of-box, especially when the data throughput is
> unaffected.

Kalle,

The only bad effect is to consume 2-3 times more CPU than used if the firmware 
handles encryption. On a modern system, the effect is negligible; however, these 
cards are found only on older systems that have uni-processors.

I have reread the mac80211 documentation (comments in code at least), and it 
appears that it should be possible to set MFP_CAPABLE unconditionally, and use 
the set_key() callback to let mac80211 know if the driver/firmware will handle 
encryption. The module parameter could be removed; however, I favor leaving it 
in case of broken hardware.

@Rui: I will send you a new patch for testing.

Larry



_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
