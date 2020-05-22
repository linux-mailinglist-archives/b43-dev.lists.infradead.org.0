Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 179231DE845
	for <lists+b43-dev@lfdr.de>; Fri, 22 May 2020 15:46:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JkKm8YG55Hm0rE/LfsX3OnKusH0wvnNtlftDQBNjj4A=; b=harCg1EU+giAZc
	f95U6PyLdHyF8t8153dqX7lhDxtXhkwiUuVbDn+piO7DGqHVekGafH7sOegLvJdO+8ZQsaB1X90dC
	/jk7PgPrJH9k4EFm7MoiRTr3ICuC4D3MpglUC6+1mi5kJX8mq4JJeLcKgf/OjmZAXkvmdVkIE4CXv
	vDDsUrDzeaabmAmr/voqIpPxCXO/SxprxKlxLQIP8H3tOmgc0r0A70xbHDae7fuar9zxiGTn+yDrv
	mkl97I0MjxLH1gKeCL/0+P1AC6HiXY0xS92Em904eVt+qgO0wQXUaBRf0bUyp6VdZtEXj94PYKV1r
	arXYaGCmO4pkeS0s9ruA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc80Z-0000G8-36; Fri, 22 May 2020 13:46:43 +0000
Received: from mail-vs1-xe2b.google.com ([2607:f8b0:4864:20::e2b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc80W-0000FS-0I
 for b43-dev@lists.infradead.org; Fri, 22 May 2020 13:46:41 +0000
Received: by mail-vs1-xe2b.google.com with SMTP id 1so6058670vsl.9
 for <b43-dev@lists.infradead.org>; Fri, 22 May 2020 06:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kR7qqMGRLRdfRzqK6+0vu/8LZfKbHqHc5WGvZ7+qZ14=;
 b=gioZKgijyezBfiTPIag9dJrvK1gzJxnfWstFDEVoystTRDaMN4EuMTQ+W/QcQnc+zF
 rZN0QricxHYWU1G8i0CEO/xUbM1dIXpAyZydHWYNF1zDUaEPoXAhneYNXm55qkBfTADQ
 00yWfXCbqn81SbEazN2dJ+fODyjXY4BIy0hiLa09KY833vvLpMBscd5uCqlDAV3/tOQr
 slJy9i6cX5zqgvA+XCqVIyEl9fXExl1LqU31OMAlMTdPcUGDyq4ydf6Zrg0vGHAkDtxY
 E0tZCI2LZMr8w36mazMMxBYMo09IQvS9n0ocwTP5sTFSFJjmhYnvSbVNnb/WErqbGR/R
 cE8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kR7qqMGRLRdfRzqK6+0vu/8LZfKbHqHc5WGvZ7+qZ14=;
 b=O2rp4jOxTrzzt3StuvHwhTv7E5UPFq8OXRZ9mIWeKN0r77Be9rMqe+FDbqWuoyn0dm
 L4wS+zcaoByfHQQhMk46EHPcTmrntrOn1WUtkcDsI1YvKXy7XXhIuqSNGor41Uh86h4F
 x3aVRgutqGmKnCxtDN5sHa3iwd6WcELoP6lfYY59ryYVotwHJX8drjGO/VmuKe9hLmhl
 qXQRIGw+U+0QPFKKAtGgiBStT14ci2YxA/I8SN9WzkPxeB87R8R/vqejUrmnBNoT+4hn
 WMTvnfhC42jK/HIIg5GeT7jlDa474dIJI7Ql2S+f26Vbnv2Zq/7KsmxdAZN6PE/+60hB
 mGQQ==
X-Gm-Message-State: AOAM531e/wTsIReA0Fl43J5JuC2A135GGhkk2bZXs4/j1pJ8N2Fou6DK
 SwXlen8tugEOLxtqG+bp1wBJaJYzNXbtk6xxyg==
X-Google-Smtp-Source: ABdhPJwbz3E3I2HcF1B/r20RAYkb7RaUDHXKNLxz3TlKY7BtTmXqiFUumBdudKcACf52Ky650mnEcjQX3HphUXxyX9U=
X-Received: by 2002:a05:6102:22f7:: with SMTP id
 b23mr10327693vsh.172.1590155197806; 
 Fri, 22 May 2020 06:46:37 -0700 (PDT)
MIME-Version: 1.0
References: <CALjTZvbLOr5zAYyp75Cs6Zo8mWNUVq3ZRJu56G1iHdiihFejWQ@mail.gmail.com>
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
 <CALjTZvbvE_cDg9mfszscSBowznp1UpxqiN1LQfbgeCOYatKMNg@mail.gmail.com>
 <f6152cd7-1043-dde2-7fc1-634d8b07a231@lwfinger.net>
 <20200522121910.254aefc1@wiggum>
 <87a720gpfb.fsf@tynnyri.adurom.net>
In-Reply-To: <87a720gpfb.fsf@tynnyri.adurom.net>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Fri, 22 May 2020 14:46:26 +0100
Message-ID: <CALjTZvYiFfqN3UMSM89Pg1rB9fJga+L1hVkBriEDeaej7oXcPw@mail.gmail.com>
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_064640_076761_B49287D8 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e2b listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Hi, Kalle,

On Fri, 22 May 2020 at 12:49, Kalle Valo <kvalo@codeaurora.org> wrote:
>
> And did the "bad" performance even have any real visible changes to the
> user? IMHO this "bad" performance is small price to pay from getting
> WPA3 supported out-of-box, especially when the data throughput is
> unaffected.

I agree, I also believe the additional security provided by WPA3 is
more important. The CPU overhead impact exists and is measurable but,
to be honest, I didn't notice any worse performance while browsing the
web, for example (which is already slow enough on a G4 CPU, as you can
imagine).

Thanks,
Rui

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
