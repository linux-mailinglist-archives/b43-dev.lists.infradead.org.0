Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E1E1DD9A8
	for <lists+b43-dev@lfdr.de>; Thu, 21 May 2020 23:47:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+khf7SMCA0rXSzZEMR/z/m3V9P95DyvBCUNleXVc8+U=; b=TCnxzzD3FMI7IysLxyS2WVc48
	K7/TjkJf81XVOWoyQbFIUZbKx4HkVymOUu6tjU2uJxEAxZvbCufLVsLxQQScKaAJgXjV5AlB8aCqo
	rLRXdwwagS9cUs7mkD0rt7TKN8324jyxUX9M0I4P/rpSH6IXeuc/m9rWSqptDtFRp48PE+gvzrQ7s
	Rjtl9WnKLIYlb2WlfP8wawnN0OU/xqEmj3S1L9xiElTd1/8oC0h3piT719253Lny4SZw/4IP8uwNT
	7GTPYr+RcWVNTwSyVcD9lnf68RekzrF7J25b7ZwPM6RQ/kX2wPzjd8FoCBQMGS4JgMW2kV5BP2OeI
	xUADxk7YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbt2Z-0003x4-Tr; Thu, 21 May 2020 21:47:47 +0000
Received: from mail-oo1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbt2W-0003wl-Hg
 for b43-dev@lists.infradead.org; Thu, 21 May 2020 21:47:45 +0000
Received: by mail-oo1-xc41.google.com with SMTP id a83so1756767oob.9
 for <b43-dev@lists.infradead.org>; Thu, 21 May 2020 14:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=T2yhvBq7ofDzMuFj4VZNUtemkK2Wi4xQKWpsyTkcffw=;
 b=aeiYUNKp+K5GF3K4VLIeedQwGFSAZY1D3xFoUPO2L/V8cKmpT1hDHZ1BqxljP12y41
 1BTIYioeSqGPp12K8ZVaIPaoiIeHLYyY7Q/FZdi804D644ajjPdOivXF4u8/PHbh/ulw
 69gUfJQb2sN0UN7rANBdbKVOt3sFBi49xBV4ZuCHjMXoqYiIdbWbka/kvrEdOKoJZx0J
 klMTRXLcbO9gW1Qo/lzoH3JvRQzkesw/BwZsfrKCeRBmdSTsiLfyi32KiOKTst/KYMQm
 rwL4UogudY5gnTE+jEiSFqx1XytCalvUNSzkZF03EaEUaoW4U9iOXkGaU8j++/BjGul9
 BpSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=T2yhvBq7ofDzMuFj4VZNUtemkK2Wi4xQKWpsyTkcffw=;
 b=KVcn4vJdaRJd1kbO8rOpkprAf61Wbj6ogkByB2v+zk4DUGKjrQ6MIzbgNZlchW/oL3
 XXFhBdQ5jlx3cte3Rxs0VMuXYMrkuuiI5zFVvjv6XUC6XVm61l4EkwciSxv1Nf7imQta
 4JNKqYrf58NKptjWP3EPH7vSHUQ91RKM3AuOiiJIQrzwwQ3TlaS08acjptI3P+Ps7g1o
 ph8qMfDiapLK0zls64Sa1qKHpLx/5vaJPePbFVmWdF5xWUYYlsmwiK3tbzk6Xsnut8Li
 4pBekpR2V7YWxLvB+IRgYvo+ewuMATLq4wAh4Wyqvp0hBUkFxHRVtGbGGvx+t+0MLYCF
 SObw==
X-Gm-Message-State: AOAM531yAP7eZ7WgKw/4gYYM2n3NWX8mJIwmv0d0kE891o8Bdxx/o/Cr
 ADf6uy2DBzEpz5CuClqrf8k=
X-Google-Smtp-Source: ABdhPJzE4+TxhzZKb4iZghU3Zn6HG2LufYbOUjFKtmBWsJDYGMFzCm0Fl0Su312vljqMb5EkuVWXlA==
X-Received: by 2002:a4a:9c55:: with SMTP id c21mr602529ook.25.1590097662956;
 Thu, 21 May 2020 14:47:42 -0700 (PDT)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id v9sm2004405oop.8.2020.05.21.14.47.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 14:47:42 -0700 (PDT)
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: Rui Salvaterra <rsalvaterra@gmail.com>
References: <CALjTZvbLOr5zAYyp75Cs6Zo8mWNUVq3ZRJu56G1iHdiihFejWQ@mail.gmail.com>
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
 <CALjTZvbvE_cDg9mfszscSBowznp1UpxqiN1LQfbgeCOYatKMNg@mail.gmail.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <f6152cd7-1043-dde2-7fc1-634d8b07a231@lwfinger.net>
Date: Thu, 21 May 2020 16:47:41 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CALjTZvbvE_cDg9mfszscSBowznp1UpxqiN1LQfbgeCOYatKMNg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_144744_603780_8AB10C2A 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
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
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 =?UTF-8?Q?Michael_B=c3=bcsch?= <m@bues.ch>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

On 5/21/20 3:23 PM, Rui Salvaterra wrote:
> On Thu, 21 May 2020 at 20:19, Rui Salvaterra <rsalvaterra@gmail.com> wrote:
>>
>> Sure, I'll give it a spin. I'm now compiling the kernel for the laptop
>> with the other b43 card (BCM4311).
> 
> Nope, kmsg is clean. I'm pretty sure the condition is evaluating to
> false because we do have the firmware, it's just that the crypto
> engine doesn't support the required algo.
> Is hardware encryption an all-or-nothing thing in mac80211? Wouldn't
> it be possible use the hardware as much as possible and fall back to
> software only for the unsupported features? (I guess the answer is
> "no, because the firmware gets in the way", but I had to ask.)
> 

My first failure indicates the mac80211 needs to know from the start that 
software encryption is to be used. The only places that the driver makes note of 
the nohwcrypt is in b43_op_set_key() where it returns -ENOSPC, and our new one 
where MFP_CAPABLE is set. Otherwise, the packet flags indicate that encryption 
is not needed.

Larry


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
