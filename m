Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9BF1DF38B
	for <lists+b43-dev@lfdr.de>; Sat, 23 May 2020 02:36:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Df8TOzuUHpS4ycjiRkGDy4q/W9I4W/ZXUOw9EeGRAwU=; b=pR3vd24rMUhlGr
	ZrP865XPVKY0m57OgzVcYqLDtQaTdnRUNXJnR9RQJSZQJ2ER/hDhIYdaAfjtbCV/7cMegNvV8s4r1
	Og9u8ImzNnAlGqyWpp9vHlj9dfcnhaJ+3RMOUKgfNnThE4wIyG8iIlBh4mS+WzOFLjT+TSdQIM3er
	ldhPjER2Tyz3S3eggSLQR1K149919KFoynKhkVM+R7MGnYaxuW+BQ9t4hfrbvqYRKNpzLRbfyQnGh
	wJTqdXxpSQ5eALssMVITfyJLyerkwvLvCY5DGnI07ING9k0M+xtGNWhEtznoTl5WRSOC8/R39NFAm
	0dSYMn2FcHgW/DH7ty+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcI8x-00023j-8d; Sat, 23 May 2020 00:36:03 +0000
Received: from mail-vs1-xe34.google.com ([2607:f8b0:4864:20::e34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcI8t-00022c-5M
 for b43-dev@lists.infradead.org; Sat, 23 May 2020 00:36:00 +0000
Received: by mail-vs1-xe34.google.com with SMTP id w65so7019047vsw.11
 for <b43-dev@lists.infradead.org>; Fri, 22 May 2020 17:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QcO/ucQVMvQiApRZiTPxDNZkiNYiWG9EVqH96FDN/fo=;
 b=QCiD9k5KRoyWpcx5xQtw19B6CixFXzUtnca8lXUQsHL7mLRDcB/YIjY7O+zO8Klvxb
 F/7mAjh1bt/MJ+EtlcMu63VsjQ6S53xXmT9PTzifnvVZrhbvYuIJ81qPb8u5/1UnH8gH
 z8VM8rOVVH9tVMWmgp2GTIKQJjOBDlhMzTvktmDKIGBi3GyKDIiOnb67jQYB+r1sEwJp
 kenKGvtmbHvESeWUQnoenvcpAbZ8eyc/RyVinF+tMUaAXXyNSuq5WMtEzgMzenKHOMMx
 v2gYeCpwNGPiQW64own8/qtXHAeiklqEoRQH2V8XlAfO4UMcURadVwBQZ8VZUHOzw7q7
 7MpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QcO/ucQVMvQiApRZiTPxDNZkiNYiWG9EVqH96FDN/fo=;
 b=Pvt/g16q+K+FBn6Oh8k7BB/CIYlWdnoNCKtMmVpMLG+9RM85sPotuKmlRSusg686FD
 8OcxP5Nyc0Dbf3cM7Vv+OTRA5AAVHSKEWwSang/El+6ZpqqnQMdmgm+/+v7mybfUuyZ1
 eMIka1XOjcGVa9RiYIl+rtQT6kbjo2DX6Cetq9yf8Ccq0CxjSmw1QYUq3hvGPt6fNB9p
 tzv+sir71tVn+AT6oLMi7ZhlgboDWH/4isTFtysqn0i2o9wJULgg8gvHmurQjwzaM6RQ
 aJ8ldZEtHUndJS7a2HgO+BDE4DV1k0A2N1IoZzJgCL+MCotbRV3UnTwruPDtjHRzhKIJ
 4r8w==
X-Gm-Message-State: AOAM531fC7v8g869y809nxsfQdXqtyxtMqdEdux3ty2hpcpXa5CB6GrH
 0IuZ8b6zgEyuDrL4yl9MEaF5mfJ8QbD30ir1TYJ4U+sX0Q==
X-Google-Smtp-Source: ABdhPJwTH+diMEXL1RcLUiBszUmg9uYllw6e+FW/b19An5Fjfm0klwoRMxhtxNBMdwlWrW2rQq+fkWhDB5C/ZlmRtMY=
X-Received: by 2002:a67:6dc7:: with SMTP id i190mr12248325vsc.75.1590194157927; 
 Fri, 22 May 2020 17:35:57 -0700 (PDT)
MIME-Version: 1.0
References: <CALjTZvbLOr5zAYyp75Cs6Zo8mWNUVq3ZRJu56G1iHdiihFejWQ@mail.gmail.com>
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
 <CALjTZvYiFfqN3UMSM89Pg1rB9fJga+L1hVkBriEDeaej7oXcPw@mail.gmail.com>
 <f1f97888-e7f6-d272-6ed1-8c040d8a7c91@lwfinger.net>
 <CALjTZvZV4kwLgoTijxsC2AYcxGeT1R_fsTdh3Gb=M03Rn_RsAg@mail.gmail.com>
 <8252e6a1-b83c-64eb-2503-2686374216ae@lwfinger.net>
In-Reply-To: <8252e6a1-b83c-64eb-2503-2686374216ae@lwfinger.net>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Sat, 23 May 2020 01:35:46 +0100
Message-ID: <CALjTZvaDDHvj1gPPrt4K81prxg=qgsROZbkgyS5bhTwB1Vv4OQ@mail.gmail.com>
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: Larry Finger <Larry.Finger@lwfinger.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_173559_220782_AC6EFBF4 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e34 listed in]
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
Cc: linux-wireless@vger.kernel.org, =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>,
 Kalle Valo <kvalo@codeaurora.org>, b43-dev@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

On Fri, 22 May 2020 at 22:06, Larry Finger <Larry.Finger@lwfinger.net> wrote:
>
> It will do supported ciphers in hardware, and unsupported using software. The
> patch tells mac80211 that we will accept the newer ciphers, then in the
> set_key() callback, we tell it whether the current type will be handled in
> hardware. Operations will be transparent. I will keep the nohwcrypt option just
> in case someone has a hardware malfunction that prohibits hardware use for all
> ciphers, but it will not be needed in cases like yours. Performance will be as
> you did earlier.

Wonderful, I didn't know mac80211 was that smart. But I have even
better news (and it would be great if someone else could verify this):
with your unconditional enablement of MFP, the CPU overhead of WPA3 is
on par with WPA2, I believe it's doing hardware crypto. And it makes
sense when you think of it, WPA3 Personal uses the same AES cypher as
WPA2, but with SAE handshake, if I'm not mistaken.

> Thanks for testing.

My pleasure!

Rui

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
