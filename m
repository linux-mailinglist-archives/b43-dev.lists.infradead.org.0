Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD191DD70F
	for <lists+b43-dev@lfdr.de>; Thu, 21 May 2020 21:19:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UF27MLSSvQPo2/FzJXKOFi7K7hOtLSkNaoVOCd0lXFY=; b=mkdhfg7n9kZXFs
	U5jc3ym03VZol1/ihkOLijr4/2SjCV2FbZ3uuSqI+rQCdrNIl2Lb1r9LfJlhHMCQqx13PlgXYL78i
	y1W0hnObQi+9/v9J2aSEVtAnd28R64/mcwLN3ZJWwAXCAPSaTxuCm3v83YnNsoVhhYV52dPpruyjV
	xPb3crE/2Mr4sEF2L9JnC58hyn24ZwDhpt571nFWkBotECAM72/LwWMwYVPsPW1brm4tMQ2lzW41v
	uBzFgnjvNvU2PjkoQJLy9JFXBRD2qePueOPbSt87eJ+idEURu7RBAKeM2Wp4UNPs2cCY8gJbmlON6
	VhB93kohgLtgKtNEUizw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbqjB-0003lO-UR; Thu, 21 May 2020 19:19:37 +0000
Received: from mail-ua1-x933.google.com ([2607:f8b0:4864:20::933])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbqj9-0003l7-0K
 for b43-dev@lists.infradead.org; Thu, 21 May 2020 19:19:36 +0000
Received: by mail-ua1-x933.google.com with SMTP id g7so2968105uap.7
 for <b43-dev@lists.infradead.org>; Thu, 21 May 2020 12:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=EyoFZ4dmdciWtiXtguApgg8PRjuC+oxamztI41cmu+M=;
 b=aivUCAlXYCrUActoPXzGexM6BS9q92mEqj8DCzXqJPTNON84CkPEpnAUDs15zRNoRd
 gRg3CbNaSfWCU52hJWDNFa7voXZ8xmLxnEFCzuW1IfHyoZp4aU6DiM7APNUvW6KRWF02
 5M2GZyISc6J0CQNTONNS/vw+Xf9sqOiVuVSSC216nnLbb/XHtEdr33UOG0ASSqF+UVwd
 xrC76yI92kROHbBicFakIWO74Y8WbBi6wWWlgHTQ5/uMFGYZdOpoZROIW3eLluwP2NvZ
 iZVUfsEWXKfS61rNLdv7oYkR7EEYeTkKx+2/3VJD0cSZima8o9/h94ZD0PDZoKNRfOjU
 f/PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=EyoFZ4dmdciWtiXtguApgg8PRjuC+oxamztI41cmu+M=;
 b=WDWGIpIbgECBDkELYlqJaGOtLcGOzy43zumq1Bbgk65zGb1Dn/WW6Eo9CCETLYxiTq
 NDFzsJ0JzRFgEZm5xIH2SgWnf+jCVzk2gOEMphyibkn2oYnYJzNciklVKQxFjnpjXTzL
 nUFPm1zWcbZJ5sRv0mu6cEjtBLE9ONX2ftzx2Nl1dCE7eUmMrC2kjowkxXpj+MoTtpzF
 JjvNcf2N2Y7Qg7oD64uLEWujBgSkfizTQXksq/ToUh3vB7uGJ/8rc4kJb46fXDvFIpQ2
 XsrAdm7j+lZs+TB5UJQeNyn2ituGTSWmCGYBYUBB3GhS5IfO7PZ7R7pAX3akkGJKQPR/
 sUpQ==
X-Gm-Message-State: AOAM532hX1HQG3ICYWyuSLsf1Ja40vOF826ZLyCP9npj7qMoGKTBnLb8
 WQzI0IH0OvZ/sakdaHLvqHMEXSTuOcd5cu8Glw==
X-Google-Smtp-Source: ABdhPJxLDPTG0B6ntRS4v7pMDuTumi/xiCJhUBkGgwrLBxEVsZzSfB+BPzIlhTO8D26vl/3iwRfZ2rHFy1GEfQlOE1E=
X-Received: by 2002:ab0:238f:: with SMTP id b15mr8429583uan.32.1590088772931; 
 Thu, 21 May 2020 12:19:32 -0700 (PDT)
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
In-Reply-To: <2b22b778-2f89-9c42-93a0-5c165de26f35@lwfinger.net>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Thu, 21 May 2020 20:19:21 +0100
Message-ID: <CALjTZva70Ni-s5VjRZL5BPswEtz5VZsX+dvE6rq2ztLJQ9v3kA@mail.gmail.com>
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: Larry Finger <Larry.Finger@lwfinger.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_121935_067993_74944888 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:933 listed in]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

T24gVGh1LCAyMSBNYXkgMjAyMCBhdCAyMDowMCwgTGFycnkgRmluZ2VyIDxMYXJyeS5GaW5nZXJA
bHdmaW5nZXIubmV0PiB3cm90ZToKPgo+IEkgZGlkIG9ubHkgYSByb3VnaCB0ZXN0LCBidXQgdHVy
bmluZyBvZmYgaGFyZHdhcmUgZW5jcnlwdGlvbiBpbmNyZWFzZWQgdGhlIGI0Mwo+IGludGVycnVw
dCByb3V0aW5lIGZyb20gYSBtYXhpbXVtIG9mIDEwJSBvZiBhIGNwdSB0byBhYm91dCAyMCUuIEV2
ZW4gb24gYSBmYXN0Cj4gY3B1LCBpdCBzZWVtcyB0aGF0IGh3IGVuY3J5cHRpb24gc2hvdWxkIGJl
IHVzZWQgaWYgcG9zc2libGUuCgpJIGRpZG4ndCBwYXkgYXR0ZW50aW9uIHRvIHRoZSBpbnRlcnJ1
cHQgcmF0ZS4gSSB3b25kZXIgaWYgTkFQSSB3b3VsZCBoZWxw4oCmPyA6KQoKPiBJIGhhdmUgb25l
IGFkZGl0aW9uYWwgdGVzdCBmb3IgeW91LiBXaXRoIHRoZSBhdHRhY2hlZCBwYXRjaCwgZG8geW91
IGdldCB0aGUKPiBtZXNzYWdlIHRoYXQgc29mdHdhcmUgY3J5cHRvIGlzIHJlcXVpcmVkPyBJdCBz
aG91bGQgYXBwZWFyIG9ubHkgb25jZS4KClN1cmUsIEknbGwgZ2l2ZSBpdCBhIHNwaW4uIEknbSBu
b3cgY29tcGlsaW5nIHRoZSBrZXJuZWwgZm9yIHRoZSBsYXB0b3AKd2l0aCB0aGUgb3RoZXIgYjQz
IGNhcmQgKEJDTTQzMTEpLgoKVGhhbmtzLApSdWkKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2I0My1kZXYK
