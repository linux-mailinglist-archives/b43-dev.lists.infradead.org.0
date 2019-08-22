Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B80F198CA2
	for <lists+b43-dev@lfdr.de>; Thu, 22 Aug 2019 09:51:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uBfJHtnCY8mJKlcknVgoLXdUqV4iw+I1A20hwZQEAOA=; b=Wb/N7bM9Ob63Kx
	riP7GLcw/s/vdiA4Xa46gE6vqdTkTrZmTyEBEyIsvlpQdyrkYBunCbkTad7DrvquFnKdcYNmnpYu0
	bIi8n50QoLA1chPjHLKLVsu+EhTGXdbU351LuEy8EnD1X5ON15gu6SVr8BK5kcupJHWtJHCn9BEBZ
	r8tATSrrftIqmuvIoDGcJVkG49TVuTTLnYAnSpLvKChv7pzCjd/k+RACtPPpAOemyf4Hes7rVVAr+
	po1wFFe7/asHuZQCB/BGJYrGrtbt3SH0gw2Hk9NQvVTAjgLptz1rWEY9vRwmvJaRLfx+bqjfeLgtb
	9k2kLmMmQhjQXq5iwwww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0hsb-0006ID-Qr; Thu, 22 Aug 2019 07:51:33 +0000
Received: from mail.automatics-control.eu ([80.211.144.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0hsR-0006Gy-By
 for b43-dev@lists.infradead.org; Thu, 22 Aug 2019 07:51:24 +0000
Received: by mail.automatics-control.eu (Postfix, from userid 1001)
 id D338BA160C; Thu, 22 Aug 2019 09:51:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=automatics-control.eu; s=mail; t=1566460276;
 bh=NjLcrs3cCMbbo+n0H6fjGJqdIYCaDUtkMzaQjEdJoS8=;
 h=Date:From:To:Subject:From;
 b=Fpb55DEL1wKJbN8wDjm/DSKLG+C8/MFqCip8RSx1y6sZr7sgA8aoQF/Y972kEMl0U
 TIFa2eU6tgtLzoIA8/0Fz3k0KQJiNxwdmNZFgJuchaSeRL09G/R7AtfSFQkz+mBSpi
 ayLiqN4vpC4S70uOaySgfk5jTA6Zs15pZbqqfZwY=
Received: by mail.automatics-control.eu for <b43-dev@lists.infradead.org>;
 Thu, 22 Aug 2019 07:51:05 GMT
Message-ID: <20190822084500-0.1.o.2lbx.0.ddcg91dqcq@automatics-control.eu>
Date: Thu, 22 Aug 2019 07:51:05 GMT
From: "Kamil Adamec" <kamil.adamec@automatics-control.eu>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?Dodate=C4=8Dn=C3=A9_zdroje?=
X-Mailer: mail.automatics-control.eu
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_005123_607156_8B5803C9 
X-CRM114-Status: UNSURE (   1.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.9 SPF_HELO_SOFTFAIL      SPF: HELO does not match SPF record (softfail)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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

RG9icsO9IGRlbiEKCsW9aXZub3N0bsOta8WvbSDEjWFzdG8gc3RvasOtIHYgY2VzdMSbIGsgZG9z
YcW+ZW7DrSDDunNwxJtjaHUgbsOtemvDoSDDunJvdmXFiCBwcm92b3puw61jaCB6ZHJvasWvIG5h
IG7DoWt1cCBtYXRlcmnDoWx1LCB6Ym/FvsOtIG5lYm8gc3Vyb3ZpbiB6IGTFr3ZvZHUgbmFwxZku
IG5lemFwbGFjZW7DrSBmYWt0dXIgKG5lemFwbGFjZW7DrSBvZCBkb2RhdmF0ZWzFrywgcHJvZGxv
dcW+ZW7DoSBzcGxhdG5vc3QgYXBvZC4pLiBWIHTDqXRvIG9ibGFzdGkganNtZSBqacW+IHBvbW9o
bGkgxZlhZMSbIGZpcmVtLCBrdGVyw6kgbW9obHkgZMOta3kgesOtc2vDoW7DrSBuw6F2cmF0bsOp
aG8gZmluYW5jb3bDoW7DrSByZWFsaXpvdmF0IHN2w6kga2zDrcSNb3bDqSBwbMOhbnkuCgpKc2Vt
IHBhcnRuZXJlbSBtbm9oYSBzcG9sZcSNbm9zdMOtLCBqZWppY2jFviDEjWlubm9zdCBqZSBzcm92
bmF0ZWxuw6EgcyB0b3UgVmHFocOtIGEgemEga29vcGVyYWNpIHMgbsOhbWkgesOtc2vDoXRlIGJv
bnVzIC0gcnljaGzDqSBzcGxhY2Vuw60gdmUgdsO9xaFpIGHFviA0IHNwbMOhdGVrLgoKRG92b2x0
ZSwgYWJ5Y2hvbSBWw6FzIGtvbnRha3RvdmFsaSB6YSDDusSNZWxlbSBwcm92ZWRlbsOtIGFuYWzD
vXp5IG1vxb5ub3N0w60gcG9tb2NpIGZpbmFuY292w6Fuw60uIEtkeSBieWNoIG1vaGwgemF2b2xh
dD8KCgpTIHBvemRyYXZlbQpLYW1pbCBBZGFtZWMKQWNjb3VudCBNYW5hZ2VyCnd3dy5hdXRvbWF0
aWNzLWNvbnRyb2wuZXUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
