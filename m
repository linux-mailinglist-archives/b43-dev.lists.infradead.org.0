Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF7A1DA53B
	for <lists+b43-dev@lfdr.de>; Wed, 20 May 2020 01:14:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qSbn0hUAaYvV/YxKHdbU7fPMj9hW1VnYMlCIeChvMVI=; b=fcDm8jTD2IIAlb
	1tzeOKzLNDvTlqrWjuP278oh+vCm4F3EaxryZgy9Q2NsQ12rpGvMn2NNrUoNiMmz0Panr1JMDbTeD
	AqOCpy4Ikr42XZwyOUr8Yahlk1uElnXpYQoHlowzPD5VUSiH0jqzBj3s5wtL5KTLM2BCzJhPs2ZUv
	ayD2A2AwP6ID/wbte5+K/Y1PtUBeOdJj0f8pbddqknlaK8DAd+tPJdNt1YN9hP3mHeaH8FGBrDJ1P
	3WitaR9TAsirMDAtY85TC1wUWH7i3xH3nPg0KtC6F7Foj6N+iXojMlZbBxazZHxEOrrrfq3mAo2U2
	Fnx+DfxF45jDTqQZYW5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbBQu-0005jh-MQ; Tue, 19 May 2020 23:14:00 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbBQr-0005jE-29
 for b43-dev@lists.infradead.org; Tue, 19 May 2020 23:13:58 +0000
Received: by mail-vs1-xe42.google.com with SMTP id u2so700180vsi.13
 for <b43-dev@lists.infradead.org>; Tue, 19 May 2020 16:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Jb5TrPmyRiGoq4P8G0LO5+ceLeAkI5ybri0s413IZBM=;
 b=bcIezp7cDg8VBsw+G/u7xnRe90zrbzCHYNSdAZxNrC/2/xC2Rg4fMoFFr/7lK5t0TL
 Fqs7NAszbrUJY+3BuH0zgXoxUNvRbf6ZMZVvuCsI/wBQdWz0i4f2PmanpsAmS+5N93d7
 27J9epyGxpHwZZdnLzctw1NglnkkMaILMF5FQieWnsKJrF+t+KI8QEBXYsNrxW4TB7ZS
 jRNj6pV2W6huz1fHOGRl1IZAon4WEsOqWbgLsvKgIcaZFmKeTTUU9coxLzOFd2B9DeOk
 Uo78TdHoPxRXjScux+X0Twb3zMEWYygUED2OBDyD0TeeVLQB6x852/AxNrnvxR89fEC4
 NGbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Jb5TrPmyRiGoq4P8G0LO5+ceLeAkI5ybri0s413IZBM=;
 b=s9/2MzXsJK1wXU9GC5hdJLYFCJZCyvxLBi/5KoGKsABVW6E7jWP601z3CHapu1u+J7
 hqPFVuXhijfBf577qdk6oxSr7VYj6ZWV4cut/1ojEXJksqsesJKx+2PKoW5t0JAdk7BJ
 hpgymw9t8RAoX0I+Z4UoGxdWeVPzk0UYdrTofnGlhDGpIDj1n5Z2q1RRRkJwKYHs5ErB
 ERQwMq24j06Jh09V3u9sBXje8Gnkkf3SYZHQNbbSftId7v6yf8fdR/aii25U2RHYgqWq
 aSAMIVzji2wUyLLxkQXpEtkOkQ9hg8bKcUL+/FXrVmCh8CsMuCT0Jobm1Is3NpIDPxeN
 4B+g==
X-Gm-Message-State: AOAM5333aeZ+vE+u0WGp4Q65qb4N78HcXcfemWN/s5t7WcgkbAWwUwHA
 1hGsxWRIVFrHT2FIDVAkBlYqMMsN11gi+o7tBw==
X-Google-Smtp-Source: ABdhPJzDRuZbZKNBs5VEupHCaZavel/AxZk2yTuEtokCQrXPNyNNaDQvzKsIV0ukeGTvDs65N1IDYOd2usKWTeIx4vc=
X-Received: by 2002:a67:6dc7:: with SMTP id i190mr1284679vsc.75.1589930036051; 
 Tue, 19 May 2020 16:13:56 -0700 (PDT)
MIME-Version: 1.0
References: <CALjTZvbLOr5zAYyp75Cs6Zo8mWNUVq3ZRJu56G1iHdiihFejWQ@mail.gmail.com>
 <3483242e-c2ad-ec83-0c2c-ce952bc9b638@lwfinger.net>
 <CALjTZvatxQ2BvUeZGcTFijBf1PiLizJuDdENxg2b=tPQL_NAzQ@mail.gmail.com>
In-Reply-To: <CALjTZvatxQ2BvUeZGcTFijBf1PiLizJuDdENxg2b=tPQL_NAzQ@mail.gmail.com>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Wed, 20 May 2020 00:13:44 +0100
Message-ID: <CALjTZvYSJOx0xeMVkN6dHcGTdgW9O9NVbgXPKK4d6-31VX+0JQ@mail.gmail.com>
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: Larry Finger <Larry.Finger@lwfinger.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_161357_105966_714E2ADD 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
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

On Tue, 19 May 2020 at 21:36, Rui Salvaterra <rsalvaterra@gmail.com> wrote:
>
> Hi, Larry,
>
> On Tue, 19 May 2020 at 21:30, Larry Finger <Larry.Finger@lwfinger.net> wrote:
> >
> >  From other drivers, it appears that handling WPA3 might be as simple as setting
> > MFP_CAPABLE in the hardware capabilities. Please try this patch:
>
> Fantastic, thanks for the quick reply! I will do it ASAP and get back to you.

Unfortunately, looks like in this driver it's not so simple, the
association is still rejected. I looked at the other drivers too and,
sure enough, they just set the MFP_CAPABLE flag unconditionally with
software crypto (I would expect mac80211 to magically handle it, but
with b43 it doesn't seem to be the case).

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
