Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5957A1ED926
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 01:32:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4JfoZEJzStsS6rS1eHc1F1jHSNPjfv0MOnaSMevbWJI=; b=SWpSQE+8PQi+ND
	0KZsoA5spjgpaF/Fq6mI7LzpdZs2M+E2IJBvPLlcc1C6JGEYA2EB09wlp4gNuKbbv15Fk7p4MK8H6
	mdbrYw67mABZAzKsqiscevagbUfsoGO4bWmHEOv1afQqHneBlqdQqh5/BEFf5PGzphl+Dcqql35PS
	prlU4LadIBwhnf7fRCoJA+SFhO1IhS6JX0H3UrBpjqOG27Z7cxrrotozafPzvntvRe6zAsRgbXTtA
	mmySkGglNaabDMKFixiCdggxNdGleFY+74Lyk6vgS3WS3s6MiUEmqv+ORCrV34wqrqdxSC0C+7qb6
	2A3mMbrq9/3rBt1nBr0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgcs5-00054f-KY; Wed, 03 Jun 2020 23:32:33 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgcrq-0004tx-HM
 for b43-dev@lists.infradead.org; Wed, 03 Jun 2020 23:32:20 +0000
Received: by mail-pl1-x643.google.com with SMTP id bg4so1381533plb.3
 for <b43-dev@lists.infradead.org>; Wed, 03 Jun 2020 16:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vlsGh/2A3yd9dyMlCDYBd0p4l1T5Oo7IaL6NTs2MBUk=;
 b=TU9flWAg9FMH+Npku3SFev/YYK6vvYYCp6jsnIW2uRPdSGDM2UMjhH0to/RSt2mcu+
 +tEJTAZqQ0UV4spAC//nbMEU4YZmc6CW1cgHcGYV50zllOcjZjx+9n/jCEKcVaB/68HX
 WckrYbpJZIVMmdggrVZUzoJLKS1NezuTTfatg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vlsGh/2A3yd9dyMlCDYBd0p4l1T5Oo7IaL6NTs2MBUk=;
 b=IDVhh45OPlKqI0yPd/7SacfX/pPi8FZEBIsUaSaxizFUTUMT3Kz9e96EczzBiZDVrY
 3jSHIMcyU7m+JBJ0Ly+5nUrb9YYS3AcFaVB/eLVNx6nXcP3M3pSjfzB0vlyC3lNpCBIN
 qmhcBd2X7dp+ygQFVZCdpuT5Un/eTt4DZY6O4NsZi22dI3Xd+uDlDAaqFbcXRelekvrO
 Z2RtOp56IQ+N8bbzwXVjGnAHEJtFMwgn0EPP5rSGxHtjP4YHHalIip7C5IHU+izpGx+r
 wUhYxvJ4FPNwZNM9gtIG0+RvPotbCbOjFm3s0gzbJhxMXJf2apzjFBeM8bZgFbFhrQUu
 fx+w==
X-Gm-Message-State: AOAM531nErrdUSD1Kl085pQbGsETBbuSIQkWIU8hwCKS5Hp7yf8yiS8c
 d7lwIoS2mq3fTJIiIIJHaLcAxw==
X-Google-Smtp-Source: ABdhPJyBu+lQtrGYhp3WZ7ZyvY1X8s9WoOeJvHWXF5Ulh61p00d2PYdWCaVGKn3LkWqTOEtrYGlBGw==
X-Received: by 2002:a17:902:aa0c:: with SMTP id
 be12mr2119692plb.241.1591227137753; 
 Wed, 03 Jun 2020 16:32:17 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id b1sm3836817pjc.33.2020.06.03.16.32.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 16:32:16 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 06/10] clk: st: Remove uninitialized_var() usage
Date: Wed,  3 Jun 2020 16:31:59 -0700
Message-Id: <20200603233203.1695403-7-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200603233203.1695403-1-keescook@chromium.org>
References: <20200603233203.1695403-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_163218_571376_58C48A06 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Andy Whitcroft <apw@canonical.com>, Kees Cook <keescook@chromium.org>,
 linux-ide@vger.kernel.org, netdev@vger.kernel.org, x86@kernel.org,
 linux-wireless@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-block@vger.kernel.org, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 linux-mm@kvack.org, Alexander Potapenko <glider@google.com>,
 b43-dev@lists.infradead.org, clang-built-linux@googlegroups.com,
 Joe Perches <joe@perches.com>, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-clk@vger.kernel.org, drbd-dev@lists.linbit.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

VXNpbmcgdW5pbml0aWFsaXplZF92YXIoKSBpcyBkYW5nZXJvdXMgYXMgaXQgcGFwZXJzIG92ZXIg
cmVhbCBidWdzWzFdCihvciBjYW4gaW4gdGhlIGZ1dHVyZSksIGFuZCBzdXBwcmVzc2VzIHVucmVs
YXRlZCBjb21waWxlciB3YXJuaW5ncyAoZS5nLgoidW51c2VkIHZhcmlhYmxlIikuIElmIHRoZSBj
b21waWxlciB0aGlua3MgaXQgaXMgdW5pbml0aWFsaXplZCwgZWl0aGVyCnNpbXBseSBpbml0aWFs
aXplIHRoZSB2YXJpYWJsZSBvciBtYWtlIGNvbXBpbGVyIGNoYW5nZXMuIEFzIGEgcHJlY3Vyc29y
CnRvIHJlbW92aW5nWzJdIHRoaXNbM10gbWFjcm9bNF0sIGp1c3QgcmVtb3ZlIHRoaXMgdmFyaWFi
bGUgc2luY2UgaXQgd2FzCmFjdHVhbGx5IHVudXNlZDoKCmRyaXZlcnMvY2xrL3N0L2Nsa2dlbi1m
c3luLmM6IEluIGZ1bmN0aW9uIOKAmHF1YWRmc19zZXRfcmF0ZeKAmToKZHJpdmVycy9jbGsvc3Qv
Y2xrZ2VuLWZzeW4uYzo3OTM6Njogd2FybmluZzogdW51c2VkIHZhcmlhYmxlIOKAmGnigJkgWy1X
dW51c2VkLXZhcmlhYmxlXQogIDc5MyB8ICBpbnQgaTsKICAgICAgfCAgICAgIF4KClsxXSBodHRw
czovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjAwNjAzMTc0NzE0LjE5MjAyNy0xLWdsaWRlckBn
b29nbGUuY29tLwpbMl0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC9DQSs1NWFGdytWYmow
aT0xVEdxQ1I1dlFrQ3pXSjBReEs2Q2Vybk9VNmVlZHN1ZEFpeHdAbWFpbC5nbWFpbC5jb20vClsz
XSBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sL0NBKzU1YUZ3Z2JncWhicDFma3h2UktFcHp5
UjVKOG4xdktUMVZaZHo5a25tUHVYaE9lZ0BtYWlsLmdtYWlsLmNvbS8KWzRdIGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2xrbWwvQ0ErNTVhRnoyNTAwV2ZiS1hBeDhzNjd3cm05PXlWSnU2NVRwTGdO
X3liWU52MFZFT0tBQG1haWwuZ21haWwuY29tLwoKU2lnbmVkLW9mZi1ieTogS2VlcyBDb29rIDxr
ZWVzY29va0BjaHJvbWl1bS5vcmc+Ci0tLQogZHJpdmVycy9jbGsvc3QvY2xrZ2VuLWZzeW4uYyB8
IDEgLQogMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2Nsay9zdC9jbGtnZW4tZnN5bi5jIGIvZHJpdmVycy9jbGsvc3QvY2xrZ2VuLWZzeW4uYwppbmRl
eCBhMTU2YmQwYzZhZjcuLmYxYWRjODU4YjU5MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9jbGsvc3Qv
Y2xrZ2VuLWZzeW4uYworKysgYi9kcml2ZXJzL2Nsay9zdC9jbGtnZW4tZnN5bi5jCkBAIC03OTAs
NyArNzkwLDYgQEAgc3RhdGljIGludCBxdWFkZnNfc2V0X3JhdGUoc3RydWN0IGNsa19odyAqaHcs
IHVuc2lnbmVkIGxvbmcgcmF0ZSwKIAlzdHJ1Y3Qgc3RfY2xrX3F1YWRmc19mc3ludGggKmZzID0g
dG9fcXVhZGZzX2ZzeW50aChodyk7CiAJc3RydWN0IHN0bV9mcyBwYXJhbXM7CiAJbG9uZyBod3Jh
dGU7Ci0JaW50IHVuaW5pdGlhbGl6ZWRfdmFyKGkpOwogCiAJaWYgKCFyYXRlIHx8ICFwYXJlbnRf
cmF0ZSkKIAkJcmV0dXJuIC1FSU5WQUw7Ci0tIAoyLjI1LjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9iNDMtZGV2Cg==
