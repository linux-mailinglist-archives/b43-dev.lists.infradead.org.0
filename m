Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A9720208B
	for <lists+b43-dev@lfdr.de>; Sat, 20 Jun 2020 05:31:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FTsE6sbIaR8bZvL1G5klhcYGJYOKjKGAMNZ1d8gmlrE=; b=G9mPpJHCvHfS5y
	bovOE+5nXfuEZ0+JFkp6zi1hsr9RiSfGxv+wOIWuY5tsqm+3gmb/Utcjrqem/ysuyMaSJbvI6ACyn
	klBBF+68ScEoAqWyNX6+27vW9sGmz2Kw+Qd+Lr4j4l02JBUWQEY1DvXCyVUCPH1d3MrnsiOPv9hn1
	c2hDt7ez9lWDp8w3dNgR1ki4awXR0SxP+xbQiZlRQ7k2OxBMkzmmQBIDU7uHBaV6UmKhpSDgzn8r2
	X3gFdtbrtlzHGzDfSsGYtHxXrsuG9ZaZJyGkXjoAJv0ze5m4VTzTpr9AGmJ0E871OtIXBwomZ3IzF
	yGGIj7DnZFsWZ8xvDxxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmUDx-0004IS-Nt; Sat, 20 Jun 2020 03:31:21 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmUD2-0003NV-Vk
 for b43-dev@lists.infradead.org; Sat, 20 Jun 2020 03:30:26 +0000
Received: by mail-pg1-x542.google.com with SMTP id h10so5381968pgq.10
 for <b43-dev@lists.infradead.org>; Fri, 19 Jun 2020 20:30:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=53EFvIpvLtL19VTcgKVkwQhb1JNYVFCG8WLiohIrzpg=;
 b=hXEDT+oQwZV/0j93NEptSD6lkCmisgOBhpbn5Vp8lS7WhqstyLUjYh8/pubGfJlegl
 cIZZuP2lTlcYx/X9xdQps0HcFapdlSQ3sZeyQSQTzkk3YYv8X66EUy9+bLD5pYpGJ7K8
 f/p23iF9Lj5ZdC2ePxyPtJFko+YDM3iaXqXxg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=53EFvIpvLtL19VTcgKVkwQhb1JNYVFCG8WLiohIrzpg=;
 b=mYD6bLpEnLBALKT7C+rgpeaf0/pa3ouuX6tu4ifjDLO+fE1dbgwmY+eYyw2eT4RfVt
 OEL0M4PDAna4XK2mx4PPzRznJun9YArEkaJ8FrqXgwmAgVWY8YgNq0Hbqn4NGlKJM48s
 i12XAW4d5ee5hSoARFb8Dz3B/8lrcqwN+FQQeep9fbLMyMcuaMJrN37tbMQqnNY3BNDQ
 BPaEZ9wAztK1WBEyVn9rbil806uw9g52fbs9yM1h7mJWoK8HmF8wLJnohg6wZT0ZSgg1
 d8fXuzkFjH97Gup1xaBtlSvIGquuSCw4dJaMy5BmHRpKau7ixLzBbu9ClwCOBycqtox9
 6/qg==
X-Gm-Message-State: AOAM532UKk7fXU+SKC0MDGSyZqoq2+nwXBcSs/IdzZN29lR/OcsXYwl0
 PiDcdQkHoERRE2jO+55gia26Lg==
X-Google-Smtp-Source: ABdhPJzWWDTo3fA3qlpxXPt9t+m0l3tQUgBSNT3cCPjCzr+IkMUIJTgiw4SJHjx8tKw0+dOG4rlAaQ==
X-Received: by 2002:aa7:9f10:: with SMTP id g16mr10814981pfr.47.1592623824106; 
 Fri, 19 Jun 2020 20:30:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id w77sm7615693pff.126.2020.06.19.20.30.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 20:30:20 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 07/16] clk: st: Remove uninitialized_var() usage
Date: Fri, 19 Jun 2020 20:29:58 -0700
Message-Id: <20200620033007.1444705-8-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200620033007.1444705-1-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_203025_015115_7BDC69BB 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-doc@vger.kernel.org, netdev@vger.kernel.org, x86@kernel.org,
 linux-wireless@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-block@vger.kernel.org, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, b43-dev@lists.infradead.org,
 linux-ide@vger.kernel.org, Joe Perches <joe@perches.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-clk@vger.kernel.org,
 drbd-dev@lists.linbit.com
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
X3liWU52MFZFT0tBQG1haWwuZ21haWwuY29tLwoKRml4ZXM6IDVmN2FhOTA3MWU5MyAoImNsazog
c3Q6IFN1cHBvcnQgZm9yIFFVQURGUyBpbnNpZGUgQ2xvY2tHZW5CL0MvRC9FL0YiKQpTaWduZWQt
b2ZmLWJ5OiBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9taXVtLm9yZz4KLS0tCiBkcml2ZXJzL2Ns
ay9zdC9jbGtnZW4tZnN5bi5jIHwgMSAtCiAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3N0L2Nsa2dlbi1mc3luLmMgYi9kcml2ZXJzL2Nsay9z
dC9jbGtnZW4tZnN5bi5jCmluZGV4IGExNTZiZDBjNmFmNy4uZjFhZGM4NThiNTkwIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2Nsay9zdC9jbGtnZW4tZnN5bi5jCisrKyBiL2RyaXZlcnMvY2xrL3N0L2Ns
a2dlbi1mc3luLmMKQEAgLTc5MCw3ICs3OTAsNiBAQCBzdGF0aWMgaW50IHF1YWRmc19zZXRfcmF0
ZShzdHJ1Y3QgY2xrX2h3ICpodywgdW5zaWduZWQgbG9uZyByYXRlLAogCXN0cnVjdCBzdF9jbGtf
cXVhZGZzX2ZzeW50aCAqZnMgPSB0b19xdWFkZnNfZnN5bnRoKGh3KTsKIAlzdHJ1Y3Qgc3RtX2Zz
IHBhcmFtczsKIAlsb25nIGh3cmF0ZTsKLQlpbnQgdW5pbml0aWFsaXplZF92YXIoaSk7CiAKIAlp
ZiAoIXJhdGUgfHwgIXBhcmVudF9yYXRlKQogCQlyZXR1cm4gLUVJTlZBTDsKLS0gCjIuMjUuMQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYg
bWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
