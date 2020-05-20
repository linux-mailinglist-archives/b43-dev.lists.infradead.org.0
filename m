Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F961DB0C5
	for <lists+b43-dev@lfdr.de>; Wed, 20 May 2020 12:55:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GmCXJwZAf4d+b3shWxIOUl2bKWCaqluPteAInb+/z0U=; b=f3T+t6IiujH77L
	Rb8tPfA0fwtU0CAdWjDe2vzjCPtuQ84jz7pPJbcXAAsxCmSr4GT2VhCbYFKOKo+LYH7HiE6hu6whT
	gcjSi87YdZ0pH61Ds5fgjDqmI1FXF3aCYli5Lj4nPOWCeQs/O4y9i7kjx49gtpczmjdPiD7n7xDe0
	paB1UAOK582oE3FPmm3ZlEyat1YtWENiHcIh8QJNoCjmx72XX9bWH2kchGxszg+4u6M0Tqrhaiy0m
	H29OGGm4wAPashavo7UchGpuyZ9l3rrzfACPVKymzzzw/UdHKqzvWFoTUu4NTZEivWtA3muD5PCwc
	Cx29xLz5CXisf5oU7crA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMNv-0008SL-Ob; Wed, 20 May 2020 10:55:39 +0000
Received: from mail-ua1-x92d.google.com ([2607:f8b0:4864:20::92d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMNs-0008Rh-62
 for b43-dev@lists.infradead.org; Wed, 20 May 2020 10:55:37 +0000
Received: by mail-ua1-x92d.google.com with SMTP id b13so1096671uav.3
 for <b43-dev@lists.infradead.org>; Wed, 20 May 2020 03:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/xogcsC1PDYO4tt9telvTYSybbsqc2itTHfyESpqeig=;
 b=NV4CkdgVaXrJLjR8P+H7JegAOVCNMkSGO7R8zGLSmZnkROfTDbpdfUl9d53F2BHrze
 z46QhhsTMkM7w20wIypW9Gp6ytmxiRE2Muh+mp/iRcFoPmadQEcWhH165UJHNESeveOq
 lqx8OikCS5bQEo1RjH9K9dUnTg9TPBTkBMYK7LOJhLPUhXxj+PRp4x+FqGX49Gm2uodS
 +D9heMnSIk/s7GGw2eGhkljFkvWBrY90FQk6v9WNRUkM0GR8u8Nuhlxq9HUVOmlXp7RZ
 2A6XG5MmN+bbQCog5C1rHLRYIVqqIYWnsUC8g9gbciIYBOtMlWfZQKjYIi58CpifS7Dl
 j78w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/xogcsC1PDYO4tt9telvTYSybbsqc2itTHfyESpqeig=;
 b=ukam9n2zYzIJKuDS5RvUfg51OTyLB5wGXwc0hP3S6FHsRAUW7MJc9c63f16JjDy5Xm
 wxa8Zd/0XEJjPp0sP/K6NCRN5MphCl+X6+ebpywLw+Nhj6/RTzP1xr2y9++KSQ2uNgtZ
 Ax2lfEiJ7TrBJvAf7mM2VjdnEnXSaf3o7A8Z/CS0bFWuxU4pms9rKpkovcC4vzY+rtHc
 sRSOb9LAOKJUN6K6EKtRyMcKyP6wJm7Gtsg4w1N0gyn/SuC8tqTI2x2FXV01BFF8FsOc
 UwdfJKaIwVdhjl+nF6V5pRqvctRT1Sy341sGqc2nKUns5g86cnGZMw+LQt0iky03qL8W
 l+lw==
X-Gm-Message-State: AOAM531pFkxmiCRR3vqPethNBiPelWk2oQ1rKiBVOqcd2p9M/ZOj7Y4M
 ovtuRFCAkY2QehxuuF2Kr8C6B05djG/1eO3V2v1qLsLsaw==
X-Google-Smtp-Source: ABdhPJwoGuMRhXKfQOkJ0VxTVCDRDF7OkMT3j2YJ2zWa/XrsIusDgy4eUHRB5FQv+IJ3FkyMBz3Dg/6QESXgXteQweI=
X-Received: by 2002:ab0:268a:: with SMTP id t10mr2718952uao.20.1589972134999; 
 Wed, 20 May 2020 03:55:34 -0700 (PDT)
MIME-Version: 1.0
References: <CALjTZvbLOr5zAYyp75Cs6Zo8mWNUVq3ZRJu56G1iHdiihFejWQ@mail.gmail.com>
 <3483242e-c2ad-ec83-0c2c-ce952bc9b638@lwfinger.net>
 <CALjTZvatxQ2BvUeZGcTFijBf1PiLizJuDdENxg2b=tPQL_NAzQ@mail.gmail.com>
 <CALjTZvYSJOx0xeMVkN6dHcGTdgW9O9NVbgXPKK4d6-31VX+0JQ@mail.gmail.com>
 <29f5e3de-a32c-6292-9197-19dcc57fa6a3@lwfinger.net>
 <CALjTZvaroTrgK9=W8uTwq9YcYayfuEU31BUc0qNYJr+08hevfg@mail.gmail.com>
In-Reply-To: <CALjTZvaroTrgK9=W8uTwq9YcYayfuEU31BUc0qNYJr+08hevfg@mail.gmail.com>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Wed, 20 May 2020 11:55:24 +0100
Message-ID: <CALjTZvaPi2FL-epk-Vd2wOLye2O0J8G5aZPsqzHXt2b7u=HyuQ@mail.gmail.com>
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: Larry Finger <Larry.Finger@lwfinger.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_035536_226017_31A5F213 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:92d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

On Wed, 20 May 2020 at 09:24, Rui Salvaterra <rsalvaterra@gmail.com> wrote:
>
> Hi, Larry,
>
> On Wed, 20 May 2020 at 01:16, Larry Finger <Larry.Finger@lwfinger.net> wrote:
> >
> > It is necessary to load the driver with option nohwcrypt set to 1. I expect that
> > you probably did that, but I forgot to mention it.
>
> Yes, of course. I don't use modules, so I pass b43.nohwcrypt=1 in the
> kernel command line. I confirmed in sysfs the nohwcrypt parameter is
> correctly set to 1.
>
> > It would likely help if you can get verbose logs from wpa_supplicant.
>
> No problem! Attached is a wpa_supplicant -d log. Let me know if you
> need extra verbosity.
>
> Thanks,
> Rui

By the way, I just tested with WPA2 forcing MFP (pmf=3 in the Network
Manager connection) and it also doesn't connect.

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
