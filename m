Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4631DCF3D
	for <lists+b43-dev@lfdr.de>; Thu, 21 May 2020 16:11:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HID46YDCXzsf0BwGbdbhkkHxI4UiOGDuq01HWWMeGu4=; b=Ufaqtwot+pP4whTh39yKMp5O6
	nsVdWHkDGNg6d+Y7A4aSHNQsqNaxJ0FzLSmOF0kjwtyMd8hWwErKH/GQ32TnowUhFWfqkrmcEfdR1
	T56m/304l+J79bP4qDR7Cbat+F/xutU+SqufMyHZ9hwFTyhBnGoGQVkqkH2xncm71L6+DCwkppkAJ
	P464B2ftgA/Vc08fLowQgWiCyXJ1PqwWziWaN8L98PxiqydrCk5xX/WClAXbst53XWgcWzMrZwCfn
	y4PAVWERgHKg1iAjmRkL/hNFODv1GYiv7CMTVe93G1H2ImDQ2mXyJM7Ei1Ko6Z+0TpYtjxdBa6/MT
	E8muY8htw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbluF-0006kz-EL; Thu, 21 May 2020 14:10:43 +0000
Received: from mail-oo1-xc33.google.com ([2607:f8b0:4864:20::c33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblu8-0006ju-Kk
 for b43-dev@lists.infradead.org; Thu, 21 May 2020 14:10:38 +0000
Received: by mail-oo1-xc33.google.com with SMTP id a83so1462444oob.9
 for <b43-dev@lists.infradead.org>; Thu, 21 May 2020 07:10:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=aMJeVUM1wAAh22sySV2lmbc3Pmg8bbmB6WxZxgSOH7I=;
 b=a+vr7oSiOtKlE2RJUc+P2EqgCxnPO88D+H8KuQ3dQBaNRmpqGVF3aejCVkDUQ04P2+
 xUe78XGqblMS4lzJA4Q96IYMptjjeziB32ezax4M5R4znV8OOOj8xNfXGYUJMLHSo0JE
 tTVF70LQS9QxVFC/J18vqNEuo1+/THUhFcGb0IZE/Ak6ZV9/jzG5fPrHlcVCzu7FiWf1
 9bAt+mf5woScLZjhr1mt+dJzGr5VuT88jEsCrRm0wIZoBhnpTqzXTH3ejQ24mdaw0DX8
 NbN5pEwqa5Ryxny2rgNVkROApj/l/G5Q7s0dHEAjGeJ/T8srH4+Y79SEvEYhyqzxHPJe
 MbIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aMJeVUM1wAAh22sySV2lmbc3Pmg8bbmB6WxZxgSOH7I=;
 b=mKf3MxNfoUVRGHPDpRcnfp8yXrbhzcuQco5EJjFJljyGGK7AIO8pytBsjSbqfuo1Yl
 eB+jSQXKBXR54dZSNSVr8kdYhe/5/LICwBI35xDavY6VDscM/aTXIK2H6dtXagDpkvS6
 hGZmrOi6uGByGFFHIfczrv7UdkNEXk3VNnWX0ZLgj2sFyFSP0fd9IoxYgW7PZcfEQlyp
 7Zgw0SyPFIpwd7EJaA/o6ckxQrzZxdiQ5jvu2pz0MspaYVXfrxqIdxkW4/AL0lNM2G5C
 RV9LcMwR1Ryh9LpzPmeW1g2bi7+5ARz8zGgUWhaAnO1NdDd/+lra39OhGjUAoTTHz0Hq
 O4hQ==
X-Gm-Message-State: AOAM533SR7GftwCSerAq5IAEpHrUzlUw1dZZFtw0reytVJ7SBMJ0BglJ
 xpbZ5OAQTxDFgv/W+MpX0pSzRGCv
X-Google-Smtp-Source: ABdhPJzyTFm/CoI4i2cbYOKO5IRZqEaMAqwKMNeC8Eww4nCTPBUs6D8ZHhd3FBJOIShxd+QxtF9asg==
X-Received: by 2002:a4a:9843:: with SMTP id z3mr7517711ooi.31.1590070235121;
 Thu, 21 May 2020 07:10:35 -0700 (PDT)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id v24sm1603628otn.59.2020.05.21.07.10.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 07:10:34 -0700 (PDT)
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: =?UTF-8?Q?Michael_B=c3=bcsch?= <m@bues.ch>,
 Rui Salvaterra <rsalvaterra@gmail.com>
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
 <CALjTZvYMF_ERBfzkhaHvsTu6kt7MW+L_979sOVs8hcH7zF_Nyg@mail.gmail.com>
 <20200521124608.4b5c78f2@wiggum>
 <CALjTZvan46UTwcUxOSN=RiE6XHm-29Ln8B6wiv40V_RVxWewtA@mail.gmail.com>
 <20200521134011.656381ad@wiggum>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <462b5428-bd66-a844-9bb3-7113ee9e5ef0@lwfinger.net>
Date: Thu, 21 May 2020 09:10:33 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200521134011.656381ad@wiggum>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_071036_681865_DAF1073B 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c33 listed in]
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

On 5/21/20 6:40 AM, Michael B=FCsch wrote:
> On Thu, 21 May 2020 12:30:43 +0100
> Rui Salvaterra <rsalvaterra@gmail.com> wrote:
> =

>> Also note that this a PowerPC laptop (iBook G4).
> =

> That's not exactly a modern CPU, but measurements would be useful
> anyway.

Michael,

Thanks for a hearty morning laugh. I needed the endorphins.

I will be able to run some tests using a BCM4312 on an Intel i7 CPU running=
 at =

2.90 GHz. It is a Haswell chip launched is Q3 2013 - a little more modern. =
My =

setup will be using WPA2 connecting to an AC1750 AP.

Larry


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
