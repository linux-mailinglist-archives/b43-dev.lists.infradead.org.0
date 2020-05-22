Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 400E41DE5E3
	for <lists+b43-dev@lfdr.de>; Fri, 22 May 2020 13:49:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n/exMXr0rSnDoc+A4fQxSRVox2zuhkpzNU7kPdig6Wc=; b=jl0+HkcRRTwDCa
	rlArbQ0gllL/Etw18gcjK51THi4uffZRhd+gxXlP6N8+OPC3qu4FwHUW9Tf0aiegwcoMgT1i+rT81
	Dp0j1iuXrDLqoREiLpecAnKJBgx420OQ+MbaE1l1EekyOKZUs2SHEZdmzY6/UhSaajMDwcKssIrqz
	bfQK7wHzxGsKmCo8ooo8UdKAaAxItRSNTGSVMQUbSvXDVi2fzv30TUUExS0rw0COV2rS0HYbhfZI1
	xVT+UCIW2cSpcTe4q+QUBBZZFguNG0ZpxLcrhtOqYop/jdkNmtX9c1LMs+dYNbM7dYbO7XpxKHejd
	YL/790QgVx88QZRyZtLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc6BJ-0000Ee-PV; Fri, 22 May 2020 11:49:41 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc6BF-0000E7-Em
 for b43-dev@lists.infradead.org; Fri, 22 May 2020 11:49:39 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590148175; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=CaBNehdl9YUvZtml2EZG/wfTsnotSusNOcw0nP51B/c=;
 b=AcCQkhIY1NwwWbrpMkUTvPvX+s4ODmsb/k2Hc/udxozvlVA8EJ/CX5uUy+mCFImgVz9ySaWB
 czxT5HXSrS0frODMgLrV7/BLGIklQHh1EdlQulJzJtRfsn8NSVaXiT1UwxL1Mm7lMZqTHVX1
 FfirGHJrUKeKVg8kcupCIvHWfpw=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyIxODVhOSIsICJiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-east-1.postgun.com with SMTP id
 5ec7bc4e4110e1471827d03a (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 22 May 2020 11:49:34
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 5AD8BC433C8; Fri, 22 May 2020 11:49:33 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from tynnyri.adurom.net (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7C958C433C6;
 Fri, 22 May 2020 11:49:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7C958C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Michael =?utf-8?Q?B=C3=BCsch?= <m@bues.ch>
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
References: <CALjTZvbLOr5zAYyp75Cs6Zo8mWNUVq3ZRJu56G1iHdiihFejWQ@mail.gmail.com>
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
 <f6152cd7-1043-dde2-7fc1-634d8b07a231@lwfinger.net>
 <20200522121910.254aefc1@wiggum>
Date: Fri, 22 May 2020 14:49:28 +0300
In-Reply-To: <20200522121910.254aefc1@wiggum> ("Michael
 \=\?utf-8\?Q\?B\=C3\=BCs\?\= \=\?utf-8\?Q\?ch\=22's\?\= message of
 "Fri, 22 May 2020 12:19:10 +0200")
Message-ID: <87a720gpfb.fsf@tynnyri.adurom.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_044937_554979_E4F2C150 
X-CRM114-Status: GOOD (  17.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [104.130.122.26 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Rui Salvaterra <rsalvaterra@gmail.com>, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

TWljaGFlbCBCw7xzY2ggPG1AYnVlcy5jaD4gd3JpdGVzOgoKPiBPbiBUaHUsIDIxIE1heSAyMDIw
IDE2OjQ3OjQxIC0wNTAwCj4gTGFycnkgRmluZ2VyIDxMYXJyeS5GaW5nZXJAbHdmaW5nZXIubmV0
PiB3cm90ZToKPgo+PiBPbiA1LzIxLzIwIDM6MjMgUE0sIFJ1aSBTYWx2YXRlcnJhIHdyb3RlOgo+
PiA+IE9uIFRodSwgMjEgTWF5IDIwMjAgYXQgMjA6MTksIFJ1aSBTYWx2YXRlcnJhIDxyc2FsdmF0
ZXJyYUBnbWFpbC5jb20+IHdyb3RlOiAgCj4+ID4+Cj4+ID4+IFN1cmUsIEknbGwgZ2l2ZSBpdCBh
IHNwaW4uIEknbSBub3cgY29tcGlsaW5nIHRoZSBrZXJuZWwgZm9yIHRoZSBsYXB0b3AKPj4gPj4g
d2l0aCB0aGUgb3RoZXIgYjQzIGNhcmQgKEJDTTQzMTEpLiAgCj4+ID4gCj4+ID4gTm9wZSwga21z
ZyBpcyBjbGVhbi4gSSdtIHByZXR0eSBzdXJlIHRoZSBjb25kaXRpb24gaXMgZXZhbHVhdGluZyB0
bwo+PiA+IGZhbHNlIGJlY2F1c2Ugd2UgZG8gaGF2ZSB0aGUgZmlybXdhcmUsIGl0J3MganVzdCB0
aGF0IHRoZSBjcnlwdG8KPj4gPiBlbmdpbmUgZG9lc24ndCBzdXBwb3J0IHRoZSByZXF1aXJlZCBh
bGdvLgo+PiA+IElzIGhhcmR3YXJlIGVuY3J5cHRpb24gYW4gYWxsLW9yLW5vdGhpbmcgdGhpbmcg
aW4gbWFjODAyMTE/IFdvdWxkbid0Cj4+ID4gaXQgYmUgcG9zc2libGUgdXNlIHRoZSBoYXJkd2Fy
ZSBhcyBtdWNoIGFzIHBvc3NpYmxlIGFuZCBmYWxsIGJhY2sgdG8KPj4gPiBzb2Z0d2FyZSBvbmx5
IGZvciB0aGUgdW5zdXBwb3J0ZWQgZmVhdHVyZXM/IChJIGd1ZXNzIHRoZSBhbnN3ZXIgaXMKPj4g
PiAibm8sIGJlY2F1c2UgdGhlIGZpcm13YXJlIGdldHMgaW4gdGhlIHdheSIsIGJ1dCBJIGhhZCB0
byBhc2suKQo+PiA+ICAgCj4+IAo+PiBNeSBmaXJzdCBmYWlsdXJlIGluZGljYXRlcyB0aGUgbWFj
ODAyMTEgbmVlZHMgdG8ga25vdyBmcm9tIHRoZSBzdGFydCB0aGF0IAo+PiBzb2Z0d2FyZSBlbmNy
eXB0aW9uIGlzIHRvIGJlIHVzZWQuIFRoZSBvbmx5IHBsYWNlcyB0aGF0IHRoZSBkcml2ZXIgbWFr
ZXMgbm90ZSBvZiAKPj4gdGhlIG5vaHdjcnlwdCBpcyBpbiBiNDNfb3Bfc2V0X2tleSgpIHdoZXJl
IGl0IHJldHVybnMgLUVOT1NQQywgYW5kIG91ciBuZXcgb25lIAo+PiB3aGVyZSBNRlBfQ0FQQUJM
RSBpcyBzZXQuIE90aGVyd2lzZSwgdGhlIHBhY2tldCBmbGFncyBpbmRpY2F0ZSB0aGF0IGVuY3J5
cHRpb24gCj4+IGlzIG5vdCBuZWVkZWQuCj4KPgo+IFRoYW5rIHlvdSBhbGwgdmVyeSBtdWNoIGZv
ciBiZW5jaG1hcmtpbmcgdGhpcy4KPgo+IEFzIHdlIHNlZSwgaHdjcnlwdG8gaGFzIGEgbWFqb3Ig
ZWZmZWN0IG9uIENQVSBsb2FkLgo+IEJ1dCBJJ20gc3RpbGwgaW4gZmF2b3Igb2YgY2hhbmdpbmcg
dGhlIGRlZmF1bHQgdG8gbm9od2NyeXB0PTEuCgpJJ20gdGhpbmtpbmcgdGhlIHNhbWUuCgo+IFRo
YXQgd291bGQgYmUgYSB0cmFkZSBvZmYgYmV0d2VlbiBhIHdpZmkgdGhhdCBkb2VzIHdvcmsgd2l0
aCAiYmFkIgo+IHBlcmZvcm1hbmNlIHZzLiBhIHdpZmkgdGhhdCBkb2VzIG5vdCB3b3JrIGF0IGFs
bCBieSBkZWZhdWx0LgoKQW5kIGRpZCB0aGUgImJhZCIgcGVyZm9ybWFuY2UgZXZlbiBoYXZlIGFu
eSByZWFsIHZpc2libGUgY2hhbmdlcyB0byB0aGUKdXNlcj8gSU1ITyB0aGlzICJiYWQiIHBlcmZv
cm1hbmNlIGlzIHNtYWxsIHByaWNlIHRvIHBheSBmcm9tIGdldHRpbmcKV1BBMyBzdXBwb3J0ZWQg
b3V0LW9mLWJveCwgZXNwZWNpYWxseSB3aGVuIHRoZSBkYXRhIHRocm91Z2hwdXQgaXMKdW5hZmZl
Y3RlZC4KCi0tIApodHRwczovL3dpcmVsZXNzLndpa2kua2VybmVsLm9yZy9lbi9kZXZlbG9wZXJz
L2RvY3VtZW50YXRpb24vc3VibWl0dGluZ3BhdGNoZXMKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2I0My1kZXYK
