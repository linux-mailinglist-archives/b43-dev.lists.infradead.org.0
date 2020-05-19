Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFC81D994D
	for <lists+b43-dev@lfdr.de>; Tue, 19 May 2020 16:19:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OIaFppLrS6NhExADHIlZtB+OiBK30LF8ow3xpukyiFA=; b=Vya
	6g5sLUHRFkbfE5cnIGcZ6/R/KMQwK8lvLAoKIr2bTQP9vkTC0Uht3iKP9xfelDUKxF0chWg5qLXYX
	QDigDWd5YeiGA0cQtY2J+pHCCIfGCjBEDXGOCEvQ/x7tTJGz5E7xPAHxgfx4mAcRaYPIopwmEgdGi
	6Ubc9DGgfkqqsvBSUe54/IFzCRH7+Fiv1/+HSuo9SiP1+Bgr8cVuT+wtUqgUYMycqJYP0PMpYpRqn
	RmXx6CQAc03wpmeKQM2TLZiP34ISnpaP7PP6pqJtw4p0c1jIOFM6cA1We/GQH6Lz9L3FqtCXnQAns
	bhucKzRkM7RnUfhRszkv1q3lWa72PEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb35U-0002QO-5G; Tue, 19 May 2020 14:19:20 +0000
Received: from mail-ua1-x930.google.com ([2607:f8b0:4864:20::930])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb353-0002PG-Vh
 for b43-dev@lists.infradead.org; Tue, 19 May 2020 14:18:55 +0000
Received: by mail-ua1-x930.google.com with SMTP id o35so637357uao.4
 for <b43-dev@lists.infradead.org>; Tue, 19 May 2020 07:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=k3+8S4AY2uVpQH+RCiJkWL6MuiFNkRebQcOpXooUIsA=;
 b=meSmS01XIcQsr950zb7oGW9O5o2Lq42OiTTOvhK150a6uS38u10GInz1zWnVm5SVIU
 k0DvjLoX4zzEaU5QePVTNPn2Gto4cHJ8MpCqYIvLSwGeGITHBuR00+RwHfcz3kO77TDb
 Z26konVPsDNnEKjciuY9tm5BhC3p8V3m9O/ybuMHjdQGi5IVy9Cnqd41s0K0H6x+LKC4
 9Y5ibKyHxnn3NGgpxi+vR07tcBUdLrWUJa5jSMWl+wZle6p5884gJJOwXibBepFncs0X
 C8PyDYqtR24NBAF9STLjDaJo4l/6XOePpkDt2KZDgKP7rS1l81nG+NgdyrdXodUAszTO
 wsdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=k3+8S4AY2uVpQH+RCiJkWL6MuiFNkRebQcOpXooUIsA=;
 b=FIzbNrUYzFBmKr6WC5glPb9EKmy+Q9kV+rhQevIQ2c/GNSfRFO/ZbGKHLF62Ej37R7
 4XkLsUT/odVPX5oSpavjYzXDz+qE8juom+sBvSMrMEP3nH30hcAH/8b4582i8zaaEd/n
 lWolubEncfSJXDG1nEkoDcLaIu+UJyUVSrOAPXO4m4MIPMOb0w2iMqu+24VYsxxrEiJ7
 mfCbpxr41FJgiQlMRzIKYFrDdvSG0vMP4Q8vVAVWN5SaPIZa13zoLWR4rXjKHfrXGhqk
 qELlOeYGs40T0UivQPXDvaekNRIoj53d61CrCBEEPbS63uo9CkS8hySoBGRZze5EZc1u
 N6nA==
X-Gm-Message-State: AOAM532Okw/IDJg4fX35QubDTN+dNMlrWpi94Iv/KYenOUxHKBgIOfxv
 Xnh4ZdQ2yXvs5x91Wrv/cwoJCK4k/AOE968a7kVN+SKOopnP
X-Google-Smtp-Source: ABdhPJwT/eeoChjn43sE/ao1TZ/IsnK0ThJEffFuAh/9tn9H3kFTSWY4tH65AalS8HYpIiGtsDZC/qIOpNi1KxCtjgA=
X-Received: by 2002:ab0:268a:: with SMTP id t10mr14988636uao.20.1589897927968; 
 Tue, 19 May 2020 07:18:47 -0700 (PDT)
MIME-Version: 1.0
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Tue, 19 May 2020 15:18:36 +0100
Message-ID: <CALjTZvbLOr5zAYyp75Cs6Zo8mWNUVq3ZRJu56G1iHdiihFejWQ@mail.gmail.com>
Subject: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_071854_372848_1FF66119 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:930 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

SGksIGV2ZXJ5b25lIQoKSSd2ZSBiZWVuIHRyeWluZyB0byBjb25uZWN0IHRvIGEgV1BBMyAocGVy
c29uYWwsIG5vdCBlbnRlcnByaXNlKQpuZXR3b3JrIGJ1dCwgYXMgZXhwZWN0ZWQsIHRoZSBjb25u
ZWN0aW9uIGFsd2F5cyBmYWlscyB3aXRoIGhhcmR3YXJlCmVuY3J5cHRpb24gKG1vc3QgbGlrZWx5
IGR1ZSB0byBtYW5kYXRvcnkgTUZQLCB3aGljaCB0aGUgaGFyZHdhcmUgd29uJ3QKZG8pLiBXaGF0
IEkgZGlkbid0IGV4cGVjdCB3YXMgdG8gaGF2ZSB0aGUgZXhhY3Qgc2FtZSBwcm9ibGVtIHdoZW4K
dXNpbmcgc29mdHdhcmUgY3J5cHRvLiBJJ3ZlIHRyaWVkIHdpdGggb3RoZXIgZGV2aWNlcywgYW5k
IHRoZXkgd29yawpmaW5lLiBPbmUgdGhpbmcgSSBub3RpY2VkIGlzIHRoaXM6IGZvciBleGFtcGxl
LCBhIFJhbGluayBSVDI3OTAKZGV2aWNlLCBvbiBhbm90aGVyIG1hY2hpbmUsIHNob3dzIHRoZSBm
b2xsb3dpbmcgc3VwcG9ydGVkIGN5cGhlcnMgd2l0aApoYXJkd2FyZSBjcnlwdG/igKYKCiAgICAg
ICAgKiBXRVA0MCAoMDAtMGYtYWM6MSkKICAgICAgICAqIFdFUDEwNCAoMDAtMGYtYWM6NSkKICAg
ICAgICAqIFRLSVAgKDAwLTBmLWFjOjIpCiAgICAgICAgKiBDQ01QLTEyOCAoMDAtMGYtYWM6NCkK
ICAgICAgICAqIENDTVAtMjU2ICgwMC0wZi1hYzoxMCkKICAgICAgICAqIEdDTVAtMTI4ICgwMC0w
Zi1hYzo4KQogICAgICAgICogR0NNUC0yNTYgKDAwLTBmLWFjOjkpCgrigKYgYW5kIHdpdGggc29m
dHdhcmUgY3J5cHRv4oCmCgogICAgICAgICogV0VQNDAgKDAwLTBmLWFjOjEpCiAgICAgICAgKiBX
RVAxMDQgKDAwLTBmLWFjOjUpCiAgICAgICAgKiBUS0lQICgwMC0wZi1hYzoyKQogICAgICAgICog
Q0NNUC0xMjggKDAwLTBmLWFjOjQpCiAgICAgICAgKiBDQ01QLTI1NiAoMDAtMGYtYWM6MTApCiAg
ICAgICAgKiBHQ01QLTEyOCAoMDAtMGYtYWM6OCkKICAgICAgICAqIEdDTVAtMjU2ICgwMC0wZi1h
Yzo5KQogICAgICAgICogQ01BQyAoMDAtMGYtYWM6NikKICAgICAgICAqIENNQUMtMjU2ICgwMC0w
Zi1hYzoxMykKICAgICAgICAqIEdNQUMtMTI4ICgwMC0wZi1hYzoxMSkKICAgICAgICAqIEdNQUMt
MjU2ICgwMC0wZi1hYzoxMikKCuKApiB3aGlsZSBiNDMgc2hvd3MgZXhhY3RseSB0aGUgc2FtZSBp
biBib3RoIG1vZGVz4oCmCgogICAgICAgICogV0VQNDAgKDAwLTBmLWFjOjEpCiAgICAgICAgKiBX
RVAxMDQgKDAwLTBmLWFjOjUpCiAgICAgICAgKiBUS0lQICgwMC0wZi1hYzoyKQogICAgICAgICog
Q0NNUC0xMjggKDAwLTBmLWFjOjQpCiAgICAgICAgKiBDQ01QLTI1NiAoMDAtMGYtYWM6MTApCiAg
ICAgICAgKiBHQ01QLTEyOCAoMDAtMGYtYWM6OCkKICAgICAgICAqIEdDTVAtMjU2ICgwMC0wZi1h
Yzo5KQoKVGhpcyBpcyBhIEJDTTQzMTggZGV2aWNlIChQQ0kgSUQgMTRlNDo0MzE4KSwgYnV0IEkg
ZG9uJ3Qga25vdyBpZgp0aGF0J3MgcmVsZXZhbnQuCklzIHRoaXMgYmVoYXZpb3VyIGV4cGVjdGVk
PwoKVGhhbmtzIGluIGFkdmFuY2UsClJ1aQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQz
LWRldgo=
