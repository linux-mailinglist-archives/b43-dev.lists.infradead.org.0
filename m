Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEFC1ED949
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 01:33:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NDPYO9DTLR1QHra/rP+lFbNdhqNBAmK5IxnmK38k+ds=; b=lP/4WTdgNHdiPr
	msDI1HXHTvpVoIJSHBsddVrOb76+HPin2beU81pk/Bsjv9/3XQdiJpl+DGibdTcZkZ1NOxtQE2Axr
	XOa7sl2JhBVRopfktAd3F6QaKJRS1spynSK9HoX6ZlBXd8yGIPKczcZ9KJQTLIHmBJHGQEgrzhKo9
	wCzE4+Ruxzbu0TCPnmMlbm8C+BBw11g02gOtfhsPvn+unDWEq13GihD8ah2JkKUHetpWocODi615F
	ga7jLkXPGThTnS2LvC5aas1X2DoJcjGOFfj7ewuasyQ2R1xmM+XxcvYsa0tRUd8AxiWcr6CX0VRBe
	rmv3yhft5hH/tS0oztfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgcsh-0005mo-Oo; Wed, 03 Jun 2020 23:33:11 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgcrt-0004wt-H3
 for b43-dev@lists.infradead.org; Wed, 03 Jun 2020 23:32:23 +0000
Received: by mail-pl1-x642.google.com with SMTP id t7so1385758plr.0
 for <b43-dev@lists.infradead.org>; Wed, 03 Jun 2020 16:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AV3zPGZvUQ01fJNeRdN9RcESkWzhMr4mEDUODLN9pLA=;
 b=BLpfxw/6wXWpxKYLlCAZ21WRkm9IiS+h8QcGOpAouQszh1iMLWmw9T4KLc9TZj8hYc
 dx6tovtKtkGDVrQF1aoFfpozdX8eHpFDTKu0YVHCTw220bEnL7QHVusBdzlPQyI7mtxq
 CBiuNg7P/T3Joe2o1yRIOs+RMoUmvb0p/GaJk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AV3zPGZvUQ01fJNeRdN9RcESkWzhMr4mEDUODLN9pLA=;
 b=lfnW6LGfXsO9X7qR09IPJL8q5JUr76ODDzUqRV1MN2DisvHRx2UDmaBZY05urffOc6
 gBu6fY6Q5PW5UEWAHhvY2/HqGkPOBb7jiIEwlcjyaaaP4vXYLYrqk6a/VogRXdYpWahx
 UkSMXzFg0GLjZRyaiKtVQIuY5nfaO/uxTd1RAXzEFGcyZ+S3ggAzgbH8obK3OmEePhJD
 DriuR/eEOvWkrJbrpRqaYcN1p50lneINQ/BmefhsYPkfd11KVLxtmA3mKrr5A+h3FNpn
 5Cw1ZNaGw+CcppVDyJV4GgMsYr1R+tT5EqRSygbuxm7XUV8TMji5oPavhuW21vKOnt03
 E9YA==
X-Gm-Message-State: AOAM531ohU5RtTX0pOPUxA8ScLzTXnnIqSu3OGmGKuQGAK2i9Qiou11r
 DZ9Mhx/FU3Eu1WKG9ASUFQQreA==
X-Google-Smtp-Source: ABdhPJwKQWXIp6h2GXr8CdJrjHWBz+VhwNoB6SucfRbGarsMlcrgSptDV/HFlzDMl3tG4M3PfRVvsQ==
X-Received: by 2002:a17:90a:36aa:: with SMTP id
 t39mr2389819pjb.185.1591227140733; 
 Wed, 03 Jun 2020 16:32:20 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id c123sm2738945pfb.102.2020.06.03.16.32.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 16:32:16 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 07/10] spi: davinci: Remove uninitialized_var() usage
Date: Wed,  3 Jun 2020 16:32:00 -0700
Message-Id: <20200603233203.1695403-8-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200603233203.1695403-1-keescook@chromium.org>
References: <20200603233203.1695403-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_163221_566236_68AFE972 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
bGUgc2luY2UgaXQgd2FzCmFjdHVhbGx5IHVudXNlZDoKCmRyaXZlcnMvc3BpL3NwaS1kYXZpbmNp
LmM6IEluIGZ1bmN0aW9uIOKAmGRhdmluY2lfc3BpX2J1ZnPigJk6CmRyaXZlcnMvc3BpL3NwaS1k
YXZpbmNpLmM6NTc5OjExOiB3YXJuaW5nOiB1bnVzZWQgdmFyaWFibGUg4oCYcnhfYnVmX2NvdW50
4oCZIFstV3VudXNlZC12YXJpYWJsZV0KICA1NzkgfCAgdW5zaWduZWQgcnhfYnVmX2NvdW50Owog
ICAgICB8ICAgICAgICAgICBefn5+fn5+fn5+fn4KClsxXSBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9sa21sLzIwMjAwNjAzMTc0NzE0LjE5MjAyNy0xLWdsaWRlckBnb29nbGUuY29tLwpbMl0gaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC9DQSs1NWFGdytWYmowaT0xVEdxQ1I1dlFrQ3pXSjBR
eEs2Q2Vybk9VNmVlZHN1ZEFpeHdAbWFpbC5nbWFpbC5jb20vClszXSBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9sa21sL0NBKzU1YUZ3Z2JncWhicDFma3h2UktFcHp5UjVKOG4xdktUMVZaZHo5a25t
UHVYaE9lZ0BtYWlsLmdtYWlsLmNvbS8KWzRdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwv
Q0ErNTVhRnoyNTAwV2ZiS1hBeDhzNjd3cm05PXlWSnU2NVRwTGdOX3liWU52MFZFT0tBQG1haWwu
Z21haWwuY29tLwoKU2lnbmVkLW9mZi1ieTogS2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5v
cmc+Ci0tLQogZHJpdmVycy9zcGkvc3BpLWRhdmluY2kuYyB8IDEgLQogMSBmaWxlIGNoYW5nZWQs
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3NwaS9zcGktZGF2aW5jaS5jIGIv
ZHJpdmVycy9zcGkvc3BpLWRhdmluY2kuYwppbmRleCBmNzFjNDk3MzkzYTYuLmY1MGMwYzc5Y2Jk
ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zcGkvc3BpLWRhdmluY2kuYworKysgYi9kcml2ZXJzL3Nw
aS9zcGktZGF2aW5jaS5jCkBAIC01NzYsNyArNTc2LDYgQEAgc3RhdGljIGludCBkYXZpbmNpX3Nw
aV9idWZzKHN0cnVjdCBzcGlfZGV2aWNlICpzcGksIHN0cnVjdCBzcGlfdHJhbnNmZXIgKnQpCiAJ
dTMyIGVycm9ycyA9IDA7CiAJc3RydWN0IGRhdmluY2lfc3BpX2NvbmZpZyAqc3BpY2ZnOwogCXN0
cnVjdCBkYXZpbmNpX3NwaV9wbGF0Zm9ybV9kYXRhICpwZGF0YTsKLQl1bnNpZ25lZCB1bmluaXRp
YWxpemVkX3ZhcihyeF9idWZfY291bnQpOwogCiAJZHNwaSA9IHNwaV9tYXN0ZXJfZ2V0X2RldmRh
dGEoc3BpLT5tYXN0ZXIpOwogCXBkYXRhID0gJmRzcGktPnBkYXRhOwotLSAKMi4yNS4xCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYjQzLWRldiBtYWls
aW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
