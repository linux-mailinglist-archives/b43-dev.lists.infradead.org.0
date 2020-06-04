Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0865F1EEB46
	for <lists+b43-dev@lfdr.de>; Thu,  4 Jun 2020 21:40:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ZFHVC6fh1fiOCtx2YsxLAItoEtyl0hABCmkDSJ8q18=; b=f+O1wkCFBPvsdy
	kyMggh1Vq8fof6xOf0DDDZlHXjnsb1EY4cIK9wcb0jxALB8w/ZwlOxhRA3aFlVPwATCdqc4i8Mq8v
	ETkcS3tobQm6ib0U517wD2EOBBLec4ydRw6KHxyAxlxOEnM1dtw3PbJixqNT2hMhOeY4RlJQ3DtG9
	kLpNbZ8pCENI/1ZKONfLkSszk2TtzCCRMmo2NgjA622n1mpYB+SkVvLfbIjx85kGo/BK1cCzplR0k
	6k08P1rvmjmSpeONFTXX+mS7Fx01d/bU5zT+ZFTl7aIUg/4Te4cfmsAq7ZkGk27pUjmCLkQv4Gpu6
	ZAX//PbxyIX2H8gw1Ydw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgviz-00012i-R1; Thu, 04 Jun 2020 19:40:25 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgviw-00012K-JR
 for b43-dev@lists.infradead.org; Thu, 04 Jun 2020 19:40:24 +0000
Received: by mail-pg1-x543.google.com with SMTP id m1so4017798pgk.1
 for <b43-dev@lists.infradead.org>; Thu, 04 Jun 2020 12:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=kJllNW+A+qSZYDyNUy0KaOA5QFyWsX/L5wjqGF/eTNE=;
 b=khjHaUxxHWq27mRVrCP90N/AIWBHw0Raqt4MSawehwogpV8OkvENICvoOfJVZkx0HE
 hNogTV16/NwZXxCOSGv2dPerVjZRRpPeRIGxaNDeieFVvkNGOsQPbUA4jVsw+RGMJM/1
 DZ4Ka7WSW9usbnCAubZ33uZYz1CuVXU1e5wwsVkAh0ownQvTfrX26uwpcMSg4c4FVlB9
 J0MlT9xW0GEK1fvgfb3wjQTvPWdI4UdS6GZdlbET89acNH1Dsv7O3JvR2loOOenQdzRS
 7VBqB+LvcFYGppvlPdjlWc/cGF5adEw1HB5y4y0ezzkfiCva7K4+HnNEtlnj/NWpd7fY
 2hVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=kJllNW+A+qSZYDyNUy0KaOA5QFyWsX/L5wjqGF/eTNE=;
 b=gF6jW/elk8vhx+Lx5e4dRHWQ/48ogHfSGzqSd/K/9I+HA8aNBJVUBGGq9NIkIxkjgH
 TFyMdc0egmxmGe40bRe/bQBwWx5NdwXnbtaTRfy6cDK9cn1sCz3j3466UvelN7QcsIsx
 YcV49I5bMaj90fyNktKWp0n+XKIdVU6NlmXhEH3Oriqmei9GBT/dzjifVdE2Sytmg8FM
 E2H2WWurJMGBIgKK/j4brFVTSGOVa7G3oxutYrNJDAciRZndZxvI/fECUK6/U9vpT3XV
 bbVug9iRORgw6zbrbuFU1jLIYV77Wy9V5orAjL18fX4ErHrlKaOp0iW7wA30KhPtvXQT
 RZPQ==
X-Gm-Message-State: AOAM5329xOZwALV73ayR1Cw3NSGCWGpgOxePLaOi6MZsOxu8qc94i4Z6
 mfEH6zyM2nLgGMbRFVrUAYW1iOp9hwu4h/IQYVJ6kg==
X-Google-Smtp-Source: ABdhPJyYElZ0dKBuAEJ4uM9aYg7zNwG3YltGgh77s2eCEowEEsdqVj0Qq+w+v4Ujopd3NJrASj7ulK+YFsUqdUSAiYg=
X-Received: by 2002:a63:5644:: with SMTP id g4mr5715275pgm.381.1591299621501; 
 Thu, 04 Jun 2020 12:40:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-8-keescook@chromium.org>
In-Reply-To: <20200603233203.1695403-8-keescook@chromium.org>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 4 Jun 2020 12:40:09 -0700
Message-ID: <CAKwvOdnQCCV7SHq+nbRd0O0A+P035kU4t5vPDs8T=BhNQ2cbdA@mail.gmail.com>
Subject: Re: [PATCH 07/10] spi: davinci: Remove uninitialized_var() usage
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_124022_658732_F8A10F1F 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Andy Whitcroft <apw@canonical.com>, mporter@ti.com,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-ide@vger.kernel.org, Network Development <netdev@vger.kernel.org>,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-spi@vger.kernel.org,
 linux-block@vger.kernel.org, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>, b43-dev@lists.infradead.org,
 Joe Perches <joe@perches.com>, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-clk@vger.kernel.org, drbd-dev@lists.linbit.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

T24gV2VkLCBKdW4gMywgMjAyMCBhdCA0OjMyIFBNIEtlZXMgQ29vayA8a2Vlc2Nvb2tAY2hyb21p
dW0ub3JnPiB3cm90ZToKPgo+IFVzaW5nIHVuaW5pdGlhbGl6ZWRfdmFyKCkgaXMgZGFuZ2Vyb3Vz
IGFzIGl0IHBhcGVycyBvdmVyIHJlYWwgYnVnc1sxXQo+IChvciBjYW4gaW4gdGhlIGZ1dHVyZSks
IGFuZCBzdXBwcmVzc2VzIHVucmVsYXRlZCBjb21waWxlciB3YXJuaW5ncyAoZS5nLgo+ICJ1bnVz
ZWQgdmFyaWFibGUiKS4gSWYgdGhlIGNvbXBpbGVyIHRoaW5rcyBpdCBpcyB1bmluaXRpYWxpemVk
LCBlaXRoZXIKPiBzaW1wbHkgaW5pdGlhbGl6ZSB0aGUgdmFyaWFibGUgb3IgbWFrZSBjb21waWxl
ciBjaGFuZ2VzLiBBcyBhIHByZWN1cnNvcgo+IHRvIHJlbW92aW5nWzJdIHRoaXNbM10gbWFjcm9b
NF0sIGp1c3QgcmVtb3ZlIHRoaXMgdmFyaWFibGUgc2luY2UgaXQgd2FzCj4gYWN0dWFsbHkgdW51
c2VkOgo+Cj4gZHJpdmVycy9zcGkvc3BpLWRhdmluY2kuYzogSW4gZnVuY3Rpb24g4oCYZGF2aW5j
aV9zcGlfYnVmc+KAmToKPiBkcml2ZXJzL3NwaS9zcGktZGF2aW5jaS5jOjU3OToxMTogd2Fybmlu
ZzogdW51c2VkIHZhcmlhYmxlIOKAmHJ4X2J1Zl9jb3VudOKAmSBbLVd1bnVzZWQtdmFyaWFibGVd
Cj4gICA1NzkgfCAgdW5zaWduZWQgcnhfYnVmX2NvdW50Owo+ICAgICAgIHwgICAgICAgICAgIF5+
fn5+fn5+fn5+fgo+Cj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyMDA2MDMx
NzQ3MTQuMTkyMDI3LTEtZ2xpZGVyQGdvb2dsZS5jb20vCj4gWzJdIGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2xrbWwvQ0ErNTVhRncrVmJqMGk9MVRHcUNSNXZRa0N6V0owUXhLNkNlcm5PVTZlZWRz
dWRBaXh3QG1haWwuZ21haWwuY29tLwo+IFszXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21s
L0NBKzU1YUZ3Z2JncWhicDFma3h2UktFcHp5UjVKOG4xdktUMVZaZHo5a25tUHVYaE9lZ0BtYWls
LmdtYWlsLmNvbS8KPiBbNF0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC9DQSs1NWFGejI1
MDBXZmJLWEF4OHM2N3dybTk9eVZKdTY1VHBMZ05feWJZTnYwVkVPS0FAbWFpbC5nbWFpbC5jb20v
Cj4KPiBTaWduZWQtb2ZmLWJ5OiBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9taXVtLm9yZz4KClJl
dmlld2VkLWJ5OiBOaWNrIERlc2F1bG5pZXJzIDxuZGVzYXVsbmllcnNAZ29vZ2xlLmNvbT4KRml4
ZXMgMDQ4MTc3Y2UzYjM5ICgic3BpOiBzcGktZGF2aW5jaTogY29udmVydCB0byBETUEgZW5naW5l
IEFQSSIpCgo+IC0tLQo+ICBkcml2ZXJzL3NwaS9zcGktZGF2aW5jaS5jIHwgMSAtCj4gIDEgZmls
ZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zcGkvc3Bp
LWRhdmluY2kuYyBiL2RyaXZlcnMvc3BpL3NwaS1kYXZpbmNpLmMKPiBpbmRleCBmNzFjNDk3Mzkz
YTYuLmY1MGMwYzc5Y2JkZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3NwaS9zcGktZGF2aW5jaS5j
Cj4gKysrIGIvZHJpdmVycy9zcGkvc3BpLWRhdmluY2kuYwo+IEBAIC01NzYsNyArNTc2LDYgQEAg
c3RhdGljIGludCBkYXZpbmNpX3NwaV9idWZzKHN0cnVjdCBzcGlfZGV2aWNlICpzcGksIHN0cnVj
dCBzcGlfdHJhbnNmZXIgKnQpCj4gICAgICAgICB1MzIgZXJyb3JzID0gMDsKPiAgICAgICAgIHN0
cnVjdCBkYXZpbmNpX3NwaV9jb25maWcgKnNwaWNmZzsKPiAgICAgICAgIHN0cnVjdCBkYXZpbmNp
X3NwaV9wbGF0Zm9ybV9kYXRhICpwZGF0YTsKPiAtICAgICAgIHVuc2lnbmVkIHVuaW5pdGlhbGl6
ZWRfdmFyKHJ4X2J1Zl9jb3VudCk7Cj4KPiAgICAgICAgIGRzcGkgPSBzcGlfbWFzdGVyX2dldF9k
ZXZkYXRhKHNwaS0+bWFzdGVyKTsKPiAgICAgICAgIHBkYXRhID0gJmRzcGktPnBkYXRhOwo+IC0t
Cj4gMi4yNS4xCj4KPiAtLQo+IFlvdSByZWNlaXZlZCB0aGlzIG1lc3NhZ2UgYmVjYXVzZSB5b3Ug
YXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMgIkNsYW5nIEJ1aWx0IExpbnV4IiBn
cm91cC4KPiBUbyB1bnN1YnNjcmliZSBmcm9tIHRoaXMgZ3JvdXAgYW5kIHN0b3AgcmVjZWl2aW5n
IGVtYWlscyBmcm9tIGl0LCBzZW5kIGFuIGVtYWlsIHRvIGNsYW5nLWJ1aWx0LWxpbnV4K3Vuc3Vi
c2NyaWJlQGdvb2dsZWdyb3Vwcy5jb20uCj4gVG8gdmlldyB0aGlzIGRpc2N1c3Npb24gb24gdGhl
IHdlYiB2aXNpdCBodHRwczovL2dyb3Vwcy5nb29nbGUuY29tL2QvbXNnaWQvY2xhbmctYnVpbHQt
bGludXgvMjAyMDA2MDMyMzMyMDMuMTY5NTQwMy04LWtlZXNjb29rJTQwY2hyb21pdW0ub3JnLgoK
CgotLSAKVGhhbmtzLAp+TmljayBEZXNhdWxuaWVycwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vYjQzLWRldgo=
