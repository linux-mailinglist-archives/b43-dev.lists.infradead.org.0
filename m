Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F7620208D
	for <lists+b43-dev@lfdr.de>; Sat, 20 Jun 2020 05:31:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZEewuAKc5gvx3kJsTGYfQcos9rje/SHxzcWMRsfVOA=; b=GhMPzejCJ5AaBh
	GVjqxt2aukHe5KYawJPHXZeW33prfXH54ZOeNM5I46aq/0wD4U6emyAWhivN1RBycVeaTsPMnZHPa
	ULrd3la1lpzXNgdsi2OYWZ8YZy2i6TBDV/LZVMLFgUbtlBq2lnkjFrrWONWJH6C5YQm98uLoOY9T+
	F+v4B1659b1yIW+4q5qjvDK5hvcsvb3C4aPKW5gL/uYCxW76ncGGlwjRZtV+zmdraPzMznu1V5Pkl
	7syzLnM98BD4l51EK3ztDIcYAwojlwrgpEcwPOW/uMNAgaWpFnFRm0jsoAt/cnHTRa7vXeWj3PuHX
	OfU+D6BzTxkjxIQsQyZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmUDp-00044m-GJ; Sat, 20 Jun 2020 03:31:13 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmUD1-0003MK-Gj
 for b43-dev@lists.infradead.org; Sat, 20 Jun 2020 03:30:24 +0000
Received: by mail-pf1-x442.google.com with SMTP id h185so5385103pfg.2
 for <b43-dev@lists.infradead.org>; Fri, 19 Jun 2020 20:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RzFNSuLALDDrnyEKhGNtGgKFtIzldBQWpd31RJVV1bk=;
 b=fzu/PCWhtk9lQC+R9MKh2Me02oxRal6DiRCuEURCWK9sXWB/CpSiB5Uv2tVNAE/CrC
 pGWzf/0loKr3cRxZRQNqF3uIOTSAInn1Kw7+AX1oW2pUGkJe0aav9Q03vOKBlLqHKkBU
 gGXsmhzRkdIhnbv/YLNgb64tFfCa2ZymPC9BU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RzFNSuLALDDrnyEKhGNtGgKFtIzldBQWpd31RJVV1bk=;
 b=ePCM65/I0PO17AbgDk5s+PZH7bycICQryRiSsHc8LDox+Q8RYQf5LnhxiKcjlkXeD3
 /SSeDOE2mfvfLlYUnPutWwmvaTfaJ287rctmZtbVY3bSfImOxH0+8YvBBqhvmQaz3BcV
 R7xPynTyR2Vu3cWDtP71YoaLmB3+yuqUn1DLWwlvv3+4f1hMlVeh0uX2MnI701LjYRjt
 /z+ekEyaHRbLg5PPURZqWildYWFGiw+uDFW3QxvSqTBldczRn75dwW9VujvOd7aB8elA
 b6J9sacKKRm6X9Xx5uH+/XgISqSXa3iJKGlAbeLP5tVul8vpFdirM5S8sb6OVQhja3eR
 sWVA==
X-Gm-Message-State: AOAM531zlkOjpB0OHo2zVKeXZWLVhIMgbm/AcV2vYt6+wSkWVNFj8KDu
 znaIMGFPFc18AtUHl+5R9C2rpw==
X-Google-Smtp-Source: ABdhPJxH7/9V1MTULJxl6mnEJxFeDjiakGfZWrFzazGy+IRxsSCrDXTNem0tGYNNX/5vbkAV8ntgLg==
X-Received: by 2002:a63:7c51:: with SMTP id l17mr5231899pgn.303.1592623822618; 
 Fri, 19 Jun 2020 20:30:22 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 1sm7140732pfx.210.2020.06.19.20.30.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 20:30:20 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 08/16] spi: davinci: Remove uninitialized_var() usage
Date: Fri, 19 Jun 2020 20:29:59 -0700
Message-Id: <20200620033007.1444705-9-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200620033007.1444705-1-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_203023_551980_2DA92BCD 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: Andy Whitcroft <apw@canonical.com>, linux-wireless@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, linux-doc@vger.kernel.org,
 netdev@vger.kernel.org, x86@kernel.org,
 Nick Desaulniers <ndesaulniers@google.com>, linux-spi@vger.kernel.org,
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
Z21haWwuY29tLwoKRml4ZXM6IDA0ODE3N2NlM2IzOSAoInNwaTogc3BpLWRhdmluY2k6IGNvbnZl
cnQgdG8gRE1BIGVuZ2luZSBBUEkiKQpSZXZpZXdlZC1ieTogTmljayBEZXNhdWxuaWVycyA8bmRl
c2F1bG5pZXJzQGdvb2dsZS5jb20+ClNpZ25lZC1vZmYtYnk6IEtlZXMgQ29vayA8a2Vlc2Nvb2tA
Y2hyb21pdW0ub3JnPgotLS0KIGRyaXZlcnMvc3BpL3NwaS1kYXZpbmNpLmMgfCAxIC0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zcGkvc3BpLWRh
dmluY2kuYyBiL2RyaXZlcnMvc3BpL3NwaS1kYXZpbmNpLmMKaW5kZXggZjcxYzQ5NzM5M2E2Li5m
NTBjMGM3OWNiZGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3BpL3NwaS1kYXZpbmNpLmMKKysrIGIv
ZHJpdmVycy9zcGkvc3BpLWRhdmluY2kuYwpAQCAtNTc2LDcgKzU3Niw2IEBAIHN0YXRpYyBpbnQg
ZGF2aW5jaV9zcGlfYnVmcyhzdHJ1Y3Qgc3BpX2RldmljZSAqc3BpLCBzdHJ1Y3Qgc3BpX3RyYW5z
ZmVyICp0KQogCXUzMiBlcnJvcnMgPSAwOwogCXN0cnVjdCBkYXZpbmNpX3NwaV9jb25maWcgKnNw
aWNmZzsKIAlzdHJ1Y3QgZGF2aW5jaV9zcGlfcGxhdGZvcm1fZGF0YSAqcGRhdGE7Ci0JdW5zaWdu
ZWQgdW5pbml0aWFsaXplZF92YXIocnhfYnVmX2NvdW50KTsKIAogCWRzcGkgPSBzcGlfbWFzdGVy
X2dldF9kZXZkYXRhKHNwaS0+bWFzdGVyKTsKIAlwZGF0YSA9ICZkc3BpLT5wZGF0YTsKLS0gCjIu
MjUuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0
My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
