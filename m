Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D81D1DD837
	for <lists+b43-dev@lfdr.de>; Thu, 21 May 2020 22:24:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qvXnMZxjT9uGrB9jt92uxsQPqODPb0OaKAKP7S7F+hQ=; b=iJ5TrZLfQQH0x5
	bKWmJp5pNe8XCU+0MRCEd9QQQTyppOYC/RV3MN1f8/JafkNHK6fTopvIzzZWAE0Z6B6ihjNNm0Vdz
	7ZUKrofGK9M/4EetcfpfoQtR1EAstS5sxIuDFy04T1E521WRfyKKKH7p4IVtjNirRWZfvCiQ0CDgk
	oijME+tMxVquXIB3iUoVc0lHIn4/zHZIh0uGC1YmOnqqgN7WS3ANd6UbbQxZqVfuUyyVdC0gcSA2f
	fCpl7gvt3jYR9RK/mYm1QDTu4ej2qGqAu/zaaa3aRxh1uk7c+edlvFzLDu/lFU/SWUB0F94mXIl7I
	+vJIKK5OGIj6u1g6AJdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbrjt-0003WV-WE; Thu, 21 May 2020 20:24:26 +0000
Received: from mail-vk1-xa31.google.com ([2607:f8b0:4864:20::a31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbrjR-0003VP-8A
 for b43-dev@lists.infradead.org; Thu, 21 May 2020 20:23:58 +0000
Received: by mail-vk1-xa31.google.com with SMTP id j28so2051793vkn.8
 for <b43-dev@lists.infradead.org>; Thu, 21 May 2020 13:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9e0CD2omGxMjl6kkm0vDCVk+dOjyiQaSx1KziuUsrBc=;
 b=tfdN6Kl346dtu75g+3Lh/fdnMee9cyTgKjs/HPfel2umy+i039EqFXAE0dTJ0T7/MP
 EW6HypyYSp8PiF0iaC4t7wBNa30+5+LpgpgBCxnDF3Qr20ClZ0u5qFgekt5gYmIvqAMm
 eFhSY17zekgw8hIRPD7x/hrlBixNiijnXOpjL50CYm/aPf4NwcDcrwsvl77SRMZybh5G
 nMlJhRazvd2rczsPwLRbxhdc8zgEpoDCNgbQLouvAFVLjNE12SV56iw2cBjU3afuYEOW
 TA1qPa8vJV8SCAUmz7t+ufDklwJsk3WL6yyjt/ZvQh2JaMmbPZGyJkSET2GSbKvSzucl
 LjQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9e0CD2omGxMjl6kkm0vDCVk+dOjyiQaSx1KziuUsrBc=;
 b=g9Yn52saaF691mMQjd/mhjqf1+vw+MoLRCrRKc0qRQXp+Xp1hI6/JoOSW3Ejlvk7Sq
 awtC/DUZapgYYI3IqsGdHqNnfN8LKcQSck3b1u+XjLqSZdCDJyu0XlbBePdtwKoEor+d
 naU+ay+8KbNFOrkh6somYSsymBOMQWE15bnLbegvj4sL25KVecdxnVg0AoB0NvGFjB9Q
 IHsIfr/DrnZlnhZTkuZQkZNLzMwvgPq0k2SjOowWt8QkUtQITzMXUtxT9HFRQCbBFFlm
 xh3WzZ6YapXF51XyVIgImsmgWBK3It1DdV9JaF8Eba60+EGlNYexeTGox0Y9JTfqj+Y3
 +cjg==
X-Gm-Message-State: AOAM531W/IkZNQXATtGzYxFxvJUUWTkqULkUak5ROmn2en/wzJDhTe6e
 OC3WvOPhXV6vrdJE89kuUvyul6l3U2zDvFc61Q==
X-Google-Smtp-Source: ABdhPJyjKQ47AgbjjmSeskqpRBR4h5zgpPg030Wp3jaDvKx84XAcI4yYaDXO61a63B6eQbuh+kAUokLvfohQfi0f/1c=
X-Received: by 2002:a1f:9fc9:: with SMTP id i192mr9293564vke.97.1590092636129; 
 Thu, 21 May 2020 13:23:56 -0700 (PDT)
MIME-Version: 1.0
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
 <2b22b778-2f89-9c42-93a0-5c165de26f35@lwfinger.net>
 <CALjTZva70Ni-s5VjRZL5BPswEtz5VZsX+dvE6rq2ztLJQ9v3kA@mail.gmail.com>
In-Reply-To: <CALjTZva70Ni-s5VjRZL5BPswEtz5VZsX+dvE6rq2ztLJQ9v3kA@mail.gmail.com>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Thu, 21 May 2020 21:23:44 +0100
Message-ID: <CALjTZvbvE_cDg9mfszscSBowznp1UpxqiN1LQfbgeCOYatKMNg@mail.gmail.com>
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: Larry Finger <Larry.Finger@lwfinger.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_132357_310896_5D6309CC 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a31 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

On Thu, 21 May 2020 at 20:19, Rui Salvaterra <rsalvaterra@gmail.com> wrote:
>
> Sure, I'll give it a spin. I'm now compiling the kernel for the laptop
> with the other b43 card (BCM4311).

Nope, kmsg is clean. I'm pretty sure the condition is evaluating to
false because we do have the firmware, it's just that the crypto
engine doesn't support the required algo.
Is hardware encryption an all-or-nothing thing in mac80211? Wouldn't
it be possible use the hardware as much as possible and fall back to
software only for the unsupported features? (I guess the answer is
"no, because the firmware gets in the way", but I had to ask.)

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
