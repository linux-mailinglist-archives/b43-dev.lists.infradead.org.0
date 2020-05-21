Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB921DC96F
	for <lists+b43-dev@lfdr.de>; Thu, 21 May 2020 11:08:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gqJMtHV0JyXQmNWyCqTrPwmJyRAvFZMBwoTxqMMD/gs=; b=P+/zeI6csKBpoP
	WihvfhnJKqo84tTzNffoU8YlXr3Lb/et70EgOvohp1VRKSpDCucqC4ltJFa9SUwPea9ZApvn4Y3bM
	qPfe1K0WrNCD4lYgE0eCvAnpUfDJMPJIAtrQcwwf3r/z5cOxSlI210STKUVeDL2NQL1RoSTHsILpG
	Fg9tZbthaM9b1DDEIZWLvxGPOEuisglSjURCOwoPfE5bOepYhNKzLayRfUWNrOk60hhelcO8lBulB
	meKihONv7zr0C3UNW1OUl0zg1R2kvquMKVVKxHZ4d5wWeh8Xw8zW/J6tscQFa1FTxqWuRY7WE2/4p
	BSFEqefh4Pjx5B1CAGeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbhBT-0004Cl-CE; Thu, 21 May 2020 09:08:11 +0000
Received: from mail-vs1-xe31.google.com ([2607:f8b0:4864:20::e31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbhB9-0003zY-9M
 for b43-dev@lists.infradead.org; Thu, 21 May 2020 09:07:52 +0000
Received: by mail-vs1-xe31.google.com with SMTP id o26so3587315vsr.10
 for <b43-dev@lists.infradead.org>; Thu, 21 May 2020 02:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xBFl+AT7rMy9k5RY9HxyJOSNZnoxzsmczmjQr0Kwl80=;
 b=KnolGB7+mDs6ffMRAkF7yF0t7ONpzOaVq0baceSx0OKYSzqUbxfEj1vIIPq623OEzg
 3BI65h7eqIlRiGboHx/yX2/U2D9egUMwISR6SmYQDjZCtaCOHKrtK9+udB03HlHI2JHQ
 N/zDVcWHxdvSV5Gdhe8adgrQCfRj7dW4lhLMWa03PhdJ0icAt8smUl9+nNeUdNiUgIg1
 INBc1Piw7ZFnTqO6muw8xNBSdA7OSq5agn23cUGoWSnoPnDCd0ohR8Fh4Wg6vDSzNSEN
 MHGPAIpzbZt3WFLeUihmkoS4PymaDla0dOC9KcT/twtYjAlNcFdFyEDjGe3vGadhQ4/k
 ul+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xBFl+AT7rMy9k5RY9HxyJOSNZnoxzsmczmjQr0Kwl80=;
 b=WTtUTAz7qaXt3U0gujG0766n5gXSQsQVvAp/aqnAMGQEFjOj7mzhdl2upAZUnYcHzr
 DYUXkBEXuWj2Wz3qUOi8sOnW+kPLNX/ozoe12/CuSpQRhdR//8NUPVkpHudyRNsLrWh6
 ZRpx60nJa0E3BKmQQ/FYVdyG6UNpGNj7+Ru7u/lzFp744zMoxyGd0ngTCbGRH7HfvGvI
 RkJ//SC4KyswUl/jj6k9ACVdxoA2nm0lLalibf+qe2VC8wEawhSxHCmCh8PxuHRCU7mG
 zKn9JE543Uhq5wFSdH98bE5gW2MSksFm/qCie8cDBIE71Bge2akrM8lY+slIp1oCfjlt
 Y53g==
X-Gm-Message-State: AOAM530VTShJIIFrzrayWAhpgwSI5t+q6DjPCXjVeVW2K0BFeaIGKNnx
 yQW8OWhyzW0yiTPop0O5Y18nkNKxst//B+zRRg==
X-Google-Smtp-Source: ABdhPJwlnqG6GbAPmAkCOsNNeHPgBXELXKv+jW+i4X5t/s+icPUk4V0vn+xwqfn/cXpx0rMuiz66G89h26aQFpmj56o=
X-Received: by 2002:a05:6102:22f7:: with SMTP id
 b23mr6030820vsh.172.1590052069591; 
 Thu, 21 May 2020 02:07:49 -0700 (PDT)
MIME-Version: 1.0
References: <CALjTZvbLOr5zAYyp75Cs6Zo8mWNUVq3ZRJu56G1iHdiihFejWQ@mail.gmail.com>
 <3483242e-c2ad-ec83-0c2c-ce952bc9b638@lwfinger.net>
 <CALjTZvatxQ2BvUeZGcTFijBf1PiLizJuDdENxg2b=tPQL_NAzQ@mail.gmail.com>
 <CALjTZvYSJOx0xeMVkN6dHcGTdgW9O9NVbgXPKK4d6-31VX+0JQ@mail.gmail.com>
 <29f5e3de-a32c-6292-9197-19dcc57fa6a3@lwfinger.net>
 <CALjTZvaroTrgK9=W8uTwq9YcYayfuEU31BUc0qNYJr+08hevfg@mail.gmail.com>
 <CALjTZvaPi2FL-epk-Vd2wOLye2O0J8G5aZPsqzHXt2b7u=HyuQ@mail.gmail.com>
 <263e247c-3bf9-6d42-996b-bc513efe4b71@lwfinger.net>
 <CALjTZvauK0Hh+aoabcDX9kkQZ4zN2ZjPnB+aq7YrJ9+-4ihiAg@mail.gmail.com>
 <87fffd5d-242a-7195-c4cc-80260dbd53c5@lwfinger.net>
 <CALjTZvYCFNSQ6HMN4owkiGTVrYaiU8R-P1KXgvkwGqcOo8uMuw@mail.gmail.com>
In-Reply-To: <CALjTZvYCFNSQ6HMN4owkiGTVrYaiU8R-P1KXgvkwGqcOo8uMuw@mail.gmail.com>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Thu, 21 May 2020 10:07:38 +0100
Message-ID: <CALjTZvYMF_ERBfzkhaHvsTu6kt7MW+L_979sOVs8hcH7zF_Nyg@mail.gmail.com>
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: Larry Finger <Larry.Finger@lwfinger.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_020751_351950_116A85A9 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e31 listed in]
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
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Hi again, Larry,

On Thu, 21 May 2020 at 09:35, Rui Salvaterra <rsalvaterra@gmail.com> wrote:
>
> With that said, I'm going to try your patch, but I'm 95 % confident
> the result will be the same.

Well, I'm glad I was wrong. :) With your second patch, not only MFP is
working in WPA2, but also WPA3. And iw list shows all the cyphers as
supported.
I suggest removing the printk altogether or at least demote it to
b43dbg (b43 seems to have its own printk wrappers). In any case, feel
free to add my

Tested-by: Rui Salvaterra <rsalvaterra@gmail.com>

Thanks a lot,
Rui

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
