Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DA21DC8CA
	for <lists+b43-dev@lfdr.de>; Thu, 21 May 2020 10:36:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6/lryKLtJM0D4yEd8LQZJV9cq+bpGkySukNsVF23k0M=; b=umBGMpivNPKEuh
	yF6O4DBpmhOEc4twQNUyPh6cZ6MJ+F7O/CVnEFuBXb/67vocvRgUUSYglW1+J136RVkcx8GgRqIN3
	y7Eyyf4AEEVDZoEUgXssruVBWSejH8okb9cbRgdu5FafMta/pmGjVkJF+RgmE8Sk+8x039vxpPO6n
	tBO68WkTY9dz5Z4ilz437TGTKZPJOIcrC0VSEUC3m6+fHrJfIpV6DwE7wHLOAm3SpkXAPc0Qcm8DB
	jbLHYnGEIM8g6Cy2VGhSY86NG1hOx/iKcu+qJ8SLRM1oUHVl+3nUmdsRx2AMD+Vyig4j/qi0e85vm
	gTi4AHqpR00B+y0/GlFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbggb-0008Rd-As; Thu, 21 May 2020 08:36:17 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbggW-0008RB-UF
 for b43-dev@lists.infradead.org; Thu, 21 May 2020 08:36:14 +0000
Received: by mail-vk1-xa43.google.com with SMTP id z3so1493942vka.10
 for <b43-dev@lists.infradead.org>; Thu, 21 May 2020 01:36:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+Ntmxv1WGjMNV/B3U/bZGop11ppaur3FZfYTHyL9d1s=;
 b=sd6OQhdbDgWPHIhpVIswIIm3hgtzSFmXYCjpoflfbO76qTSYkG5lzPRBcgU9ZXpYDI
 IOq750r/HF2pRCyjL6jyqGzHxpwLT0enGRGCiXZKtEutQ3BBMbA4D0YdCawJVXUOK6DX
 3jh894WYXMYOB+kuQRho4i5nrT00TNjwA0hii1n5ikE30VS+J9DgcenG9lX0v3HFnxoI
 ECJn7j3nso8Exa0GH+zl5m9EFh+eXoKW0ZHg/fzBq006d/8iEEMsGWhiGI7MW/YkDthF
 7hsAWMqe1dtcOhCNKC2XhK9JCOVc8ad+tD9zCt0Mb+vLusnMyPkxgo19MaRMHX/pIKXb
 W4Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+Ntmxv1WGjMNV/B3U/bZGop11ppaur3FZfYTHyL9d1s=;
 b=B/ACFaRIFB5zHwSz22C8NWwNHBDVHCRDfEKKTeTMnzek0wilYjBCoCwFoSDzcFF56A
 vOp9z8Fz6FyYfF2egqXZ6Y/F+Ublc4HjNgQuOf/EakMs8kZ0sDiUdJQfYF69+6aJwADA
 jjqpqZXrbxkMfbH2UV4zqrJ3q9AyABR2T/QNF6I7yDPSMbXvgjUSnc3jrwxuXeJF05fP
 5TxIEaMTk/rux9CmzlGR6dfa1+Mg4BfMiFam/uXU2V5AkxVOVF6677RDYZQCrVN31zqu
 3kuHWuvcOZYFT48lU3Rvq11fSkbTKPkKSNllKpMpbLOFC20ZLU5VXebdMuoGtLKt0Afe
 SCMA==
X-Gm-Message-State: AOAM53366SWLZRSeoCk1vVSaIQQ7gI0Ez9R4Hwk7grn0nURRAkjB8/aO
 7OfXK8ks+qrRqETb8yaPAw/qF01oKRjt5cQQIg==
X-Google-Smtp-Source: ABdhPJwUg5wJDopJxG4IDHWbUscBN1sSeETsn09df6vx+nKGD0Rk7m3bSuwfrNAP0DXKjOhRVY9AJJR2Ct8wE+RUeFM=
X-Received: by 2002:a1f:9fc9:: with SMTP id i192mr6860699vke.97.1590050170262; 
 Thu, 21 May 2020 01:36:10 -0700 (PDT)
MIME-Version: 1.0
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
In-Reply-To: <87fffd5d-242a-7195-c4cc-80260dbd53c5@lwfinger.net>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Thu, 21 May 2020 09:35:58 +0100
Message-ID: <CALjTZvYCFNSQ6HMN4owkiGTVrYaiU8R-P1KXgvkwGqcOo8uMuw@mail.gmail.com>
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: Larry Finger <Larry.Finger@lwfinger.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_013612_993196_6894A492 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
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
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

SGksIExhcnJ5LAoKT24gV2VkLCAyMCBNYXkgMjAyMCBhdCAyMTo1NiwgTGFycnkgRmluZ2VyIDxM
YXJyeS5GaW5nZXJAbHdmaW5nZXIubmV0PiB3cm90ZToKPgo+IEEgcXVpY2sgZGlmZmVyZW5jZSAt
IHRoaXMgb25lIHN1cHBvcnRzIDMgYWRkaXRpb25hbCBjaXBoZXJzOgo+Cj4gdmVkZGVyIHdwYV9z
dXBwbGljYW50WzM3Nl06IG5sODAyMTE6IFN1cHBvcnRlZCBjaXBoZXIgMDAtMGYtYWM6MTMKPiB2
ZWRkZXIgd3BhX3N1cHBsaWNhbnRbMzc2XTogbmw4MDIxMTogU3VwcG9ydGVkIGNpcGhlciAwMC0w
Zi1hYzoxMQo+IHZlZGRlciB3cGFfc3VwcGxpY2FudFszNzZdOiBubDgwMjExOiBTdXBwb3J0ZWQg
Y2lwaGVyIDAwLTBmLWFjOjEyCgpXZWxsLCB5ZXMsIEkgd3JvdGUgZXhhY3RseSB0aGF0IGluIHRo
ZSBmaXJzdCBlbWFpbC4gOikgQnV0IG5vdGljZQp0aGVyZSdzIGFub3RoZXIgY3lwaGVyIG1pc3Np
bmcgZnJvbSB0aGF0IGxpc3TigKYKCnZlZGRlciB3cGFfc3VwcGxpY2FudFszNzZdOiBubDgwMjEx
OiBTdXBwb3J0ZWQgY2lwaGVyIDAwLTBmLWFjOjYKCuKApiB3aGljaCBpcyBDTUFDLgoKPiBUaGUg
b25lIHdpdGggOjEzIGlzIGZvciAgQklQLUNNQUMtMjU2LCA6MTEgaXMgQklQLUdNQUMtMTI4LCBh
bmQgOjEyIGlzCj4gQklQLUdNQUMtMjU2LiBJIGRpZCBub3QgZmluZCBhIHJlZmVyZW5jZSB0aGF0
IHNheXMgdGhhdCB0aGVzZSBhcmUgbmVlZGVkIGZvcgo+IFdQQTMsIGJ1dCBJIGFtIHN1c3BpY2lv
dXMuCgpBY3R1YWxseSwgSSd2ZSBiZWVuIGRpZ2dpbmcgYXJvdW5kIGluIG15IG90aGVyIG1hY2hp
bmVzLCBhbmQgSSBub3RpY2VkCnRoYXQgYW4gSW50ZWwgY2FyZCBJIGhhdmUsIHdoaWNoIGhhcyBu
byBwcm9ibGVtcyBjb25uZWN0aW5nIHRvIG15IFdQQTMKQVAsIHN1cHBvcnRzIGEgbXVjaCBuYXJy
b3dlciB2YXJpZXR5IG9mIGN5cGhlcnMuIEFjY29yZGluZyB0byBpdyBsaXN0LAppdHMgc3VwcG9y
dGVkIGN5cGhlcnMgYXJlOgoKICAgICAgICAqIFdFUDQwICgwMC0wZi1hYzoxKQogICAgICAgICog
V0VQMTA0ICgwMC0wZi1hYzo1KQogICAgICAgICogVEtJUCAoMDAtMGYtYWM6MikKICAgICAgICAq
IENDTVAtMTI4ICgwMC0wZi1hYzo0KQogICAgICAgICogQ01BQyAoMDAtMGYtYWM6NikKClNvLCB0
aGUgb25seSBleHRyYSBjeXBoZXIgaXQgc3VwcG9ydHMgaXMgQ01BQy4gRGlnZ2luZyBhcm91bmQg
dGhlIHdlYiwKSSBmb3VuZCB0aGlzIFsxXSBibG9nIHBvc3QsIHdoaWNoIGRvZXMgc2VlbSB0byBp
bWxweSBDTUFDIGlzIG5lY2Vzc2FyeQpmb3IgdGhlIGdyb3VwIGN5cGhlci4gQWRkaXRpb25hbGx5
LCB0aGVyZSdzIHRoaXMgbGluZSBpbiB0aGUgc2Vjb25kCmxvZyBJIHNlbnQgeW91ICh3aXRoIHRo
ZSBzdWNjZXNzZnVsIGF1dGhlbnRpY2F0aW9uKToKCnZlZGRlciB3cGFfc3VwcGxpY2FudFszNzZd
OiBXUEE6IEVBUE9MLUtleSBNSUMgdXNpbmcgQUVTLUNNQUMKKEFLTS1kZWZpbmVkIC0gU0FFKQoK
TXkgY29uY2x1c2lvbiBpcyB0aGF0IENNQUMgbW9kZSBpcyByZXF1aXJlZCBmb3IgV1BBMyBQZXJz
b25hbC4gV2hhdApzdHJpa2VzIG1lIGFzIG9kZCBpcyBiNDMgbm90IHN1cHBvcnRpbmcgYW55IGFk
ZGl0aW9uYWwgY3lwaGVycyBpbgpzb2Z0d2FyZSBjcnlwdG8gbW9kZS4KV2l0aCB0aGF0IHNhaWQs
IEknbSBnb2luZyB0byB0cnkgeW91ciBwYXRjaCwgYnV0IEknbSA5NSAlIGNvbmZpZGVudAp0aGUg
cmVzdWx0IHdpbGwgYmUgdGhlIHNhbWUuCgpUaGFua3MsClJ1aQoKWzFdIGh0dHBzOi8vbXJuY2Np
ZXcuY29tLzIwMTkvMTEvMjkvd3BhMy1zYWUtbW9kZS8KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2I0My1kZXYK
