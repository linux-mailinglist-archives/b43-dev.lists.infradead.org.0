Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF54775BD
	for <lists+b43-dev@lfdr.de>; Sat, 27 Jul 2019 03:52:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=95BVLxvdWz05KvfVBMi9ekjQxJrEFEKkU/VsCtIMkh0=; b=XSBMjak/Q3fmpSu3VR5sVlpYn
	d0tKW0AlJ7656zEns/NnjHaHRp9p011i3E0+HBIZgMx5ai1zEgqyJtJxfu5LWkJMnMeUKUC2elpCD
	WlADUT8I+c85niFSnIAhpk14yi+w2/PDNahn0qd/YDS2vvtea54LislXZBj1B6WTvn6LNKGPDxzEf
	8h2VaZmkQEkRlFTQ6E/bSjWNzXIfT63xp0T9ZL71c4kflO4jF4R1zVThTq/bjGqx7+wsi/agOs6qa
	VUni2DWM9lIvDzIbB994x9tsWu3WEM8GsdrIAq0wgHhslqLi/zPk6pizypXs0m2Q9PeaoRrvtvW01
	mSsgo0SQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrBsi-0002rT-AY; Sat, 27 Jul 2019 01:52:20 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrBsa-0002r6-7A
 for b43-dev@lists.infradead.org; Sat, 27 Jul 2019 01:52:13 +0000
Received: by mail-ot1-x343.google.com with SMTP id d17so57203734oth.5
 for <b43-dev@lists.infradead.org>; Fri, 26 Jul 2019 18:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=GkP9juew67RSsJdqIVfBOEIXrHlACP1JKEVuOlV1hIg=;
 b=IAKiU3nzbXTVOh+Xh4evLMwiGugjHz1C3Mu1mIHQIKXFIVghsWJUqEZRc8RFcMjydv
 unNaZ3WHntdmM69FK2uadVcVZ31L5MOuSNqXir5f4OSrGvNQoCoqG8b0Adzb6PRsp1YD
 arkPANS5tf/3hGHTlGoFjd4FclrmWDUnjxCHoKjTzIpBBgGJZEbttImO7FNXPmO57eyI
 SC20k/tisZszstZ6mSQzT4aoQjF0mPBp/g12YYuRXoE2V5HB4V3yrY7IR8gFVu0n3je1
 7UwJU0fXUYkqqw9XU1XkeWiIPAZJjZOzKdiaS6rhZfniEfSxGd80bfdEibMvstYWhWxY
 6U0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GkP9juew67RSsJdqIVfBOEIXrHlACP1JKEVuOlV1hIg=;
 b=Jx+ELeg3llqJbq+A1YlZPOK9mxkVF/akkbHZAnNzOvK51qSlXXUwtLHj7+oRS6W18T
 Xfw03YkGcjyYNTmWea0OihnW1vWkzzX95ifL0QFI3ALgeA2TXS9uvPXUC2sdBoUHpo/F
 LPf9PqP7WoOoAmI03SRpka/6fQPWkwCUvDeSVVIggbJnn9vpMM7gOa3LOQ3NN82YGb9u
 wOgiWQIQhK9JR1DjVpHxhVOAT/0tLNYK89gNq8VBBOqVz056uCNdldXPnsd3kYejgXIP
 tHPmT+XU+ipQ0dwM5G5dgUT1cVRJ2NUDYcHRyITQy8lSq26GJNz9UcwLW/dGrQMv63hI
 fhOg==
X-Gm-Message-State: APjAAAWwX2FI6lCQaLRJHwa0hyuQs+zS4OEGLPiUsjG59zAx4qv7pgca
 lf6qCS48oWFx4eJXAxxZ+Jk=
X-Google-Smtp-Source: APXvYqySC86U82U5gbGK8XU35ayAJK2Qg1PX8S+ItWtjob+IFJA8X4SolIEOsI1dLHeEsDxjLbgmfQ==
X-Received: by 2002:a9d:5c0d:: with SMTP id o13mr8478218otk.310.1564192330662; 
 Fri, 26 Jul 2019 18:52:10 -0700 (PDT)
Received: from [192.168.1.139] (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id x19sm18671489oto.42.2019.07.26.18.52.09
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 26 Jul 2019 18:52:10 -0700 (PDT)
Subject: Re: [PATCH] b43legacy: Remove pointless cond_resched() wrapper
To: Thomas Gleixner <tglx@linutronix.de>, netdev@vger.kernel.org
References: <alpine.DEB.2.21.1907262157500.1791@nanos.tec.linutronix.de>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <46a1581f-6fd7-92b4-4eec-8196254e63cc@lwfinger.net>
Date: Fri, 26 Jul 2019 20:52:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1907262157500.1791@nanos.tec.linutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_185212_287427_F6697500 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (larry.finger[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: b43-dev@lists.infradead.org, Kalle Valo <kvalo@codeaurora.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

On 7/26/19 3:00 PM, Thomas Gleixner wrote:
> cond_resched() can be used unconditionally. If CONFIG_PREEMPT is set, it
> becomes a NOP scheduler wise.
> 
> Also the B43_BUG_ON() in that wrapper is a homebrewn variant of
> __might_sleep() which is part of cond_resched() already.
> 
> Remove the wrapper and invoke cond_resched() directly.
> 
> Found while looking for CONFIG_PREEMPT dependent code treewide.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: netdev@vger.kernel.org
> Cc: b43-dev@lists.infradead.org
> Cc: Kalle Valo <kvalo@codeaurora.org>
> Cc: Larry Finger <Larry.Finger@lwfinger.net>

Reviewed- and Tested-by: Larry Finger <Larry.Finger@lwfinger.net>

Thanks.

Larry

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
