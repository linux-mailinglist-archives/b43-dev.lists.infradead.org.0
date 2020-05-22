Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C04F1DE46A
	for <lists+b43-dev@lfdr.de>; Fri, 22 May 2020 12:29:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GBPVL8Vivge8lZmqATGYjPPdY2ftJG10RBF8+ygBvjM=; b=Kv9PlwOIxA0j1f1Ux41JrffUW
	RNs/zQ/iThKub6v/x1Zhv/G60WT+VEBLlRmcmAJXa4s4VB/nAS6O9IZb4VWgP158kRoBVvnep78LX
	EAEXsbYcpBMemwOBQxwgZQhqyWaxhR0h9AkXXoj6itJ8rDgu/n+NlDXrueOuzYn7NsfxkRHrQW0T6
	HM1wOuvsIM/YsoGCmN+olDwPTfux6WYeryH0/2aRh9m0UqCXAlPeCezlwPLFG4Kwo5rhlg9NKZytr
	i8xNu3pcX0alOlHf5kWIyufybfBSfUCf75seXAF1lvfRFeoVOOQVxCCuR054wIlbTIIhiZrpvG3SW
	8n24gzoeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc4v6-0005eb-La; Fri, 22 May 2020 10:28:52 +0000
Received: from bues.ch ([2a01:138:9005::1:4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc4mx-0003l4-6F
 for b43-dev@lists.infradead.org; Fri, 22 May 2020 10:20:28 +0000
Received: by bues.ch with esmtpsa (Exim 4.92) (envelope-from <m@bues.ch>)
 id 1jc4ml-0007KJ-FG; Fri, 22 May 2020 12:20:15 +0200
Date: Fri, 22 May 2020 12:19:10 +0200
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
Message-ID: <20200522121910.254aefc1@wiggum>
In-Reply-To: <f6152cd7-1043-dde2-7fc1-634d8b07a231@lwfinger.net>
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
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_032027_231699_71B2C45B 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Rui Salvaterra <rsalvaterra@gmail.com>
Content-Type: multipart/mixed; boundary="===============3683955167715724462=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

--===============3683955167715724462==
Content-Type: multipart/signed; boundary="Sig_/CecN_GWaXptE7.hUdn20d0I";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/CecN_GWaXptE7.hUdn20d0I
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Thu, 21 May 2020 16:47:41 -0500
Larry Finger <Larry.Finger@lwfinger.net> wrote:

> On 5/21/20 3:23 PM, Rui Salvaterra wrote:
> > On Thu, 21 May 2020 at 20:19, Rui Salvaterra <rsalvaterra@gmail.com> wr=
ote: =20
> >>
> >> Sure, I'll give it a spin. I'm now compiling the kernel for the laptop
> >> with the other b43 card (BCM4311). =20
> >=20
> > Nope, kmsg is clean. I'm pretty sure the condition is evaluating to
> > false because we do have the firmware, it's just that the crypto
> > engine doesn't support the required algo.
> > Is hardware encryption an all-or-nothing thing in mac80211? Wouldn't
> > it be possible use the hardware as much as possible and fall back to
> > software only for the unsupported features? (I guess the answer is
> > "no, because the firmware gets in the way", but I had to ask.)
> >  =20
>=20
> My first failure indicates the mac80211 needs to know from the start that=
=20
> software encryption is to be used. The only places that the driver makes =
note of=20
> the nohwcrypt is in b43_op_set_key() where it returns -ENOSPC, and our ne=
w one=20
> where MFP_CAPABLE is set. Otherwise, the packet flags indicate that encry=
ption=20
> is not needed.


Thank you all very much for benchmarking this.

As we see, hwcrypto has a major effect on CPU load.
But I'm still in favor of changing the default to nohwcrypt=3D1.
That would be a trade off between a wifi that does work with "bad"
performance vs. a wifi that does not work at all by default. It would
not stop people from enabling hwcrypto again.

But I'm also wondering, if we can dynamically decide whether to allow
hwcrypto.
Can't we set the MFP-flag all the time and then in b43_op_set_key
decide whether we allow hwcrypto or not? As far as I remember mac80211
falls back to sw-crypto, if an error is returned from the key op. So it
would "just" be a matter of detecting whether MFP is actually being
used in the network we are trying to connect to from within the key op.
Is that information available somewhere in mac80211?

--=20
Michael

--Sig_/CecN_GWaXptE7.hUdn20d0I
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIyBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAl7Hpx4ACgkQ9TK+HZCN
iw4njw/3ctsn6f+mOYg3I6VpNRJm9ym+rhJGzFFQ+78xMMAK4gOmwflhrOe02RO5
mEwT4HdUnkoNyJeCywbkABdKJ+JaZ6ZjIHttNx5Nn+UPtFxN9JKT1mAHIYGKD1VO
7Rbc+m5/GF+kbfSyIswZfq2cdOm8vVtknOA7g0/jiyIhmWsNiQIzW32cL43bw6zu
adaMH+TT0+JTkWvi4GAYv7u95tcm1jzsAbSzi3+sr9ESQACElaN6kq0YhI2uwmz7
ix8evNlyK37V0HiRDCxohb4D2Z8USKmve1he/sz1esi1a7jEhoE/wfonCOMn4TYv
JWM8D7XNmmyx46lyroppgw74ZnHqqPLVGD1EhSC3s4KGNRi0QA065KrNLkCI9+u+
lI9Pl2dNBACQ9JN+H1I2cmBB65/ESDcbVg050XRUenIpyibs4cHeoHiFy55vIEJu
yDYQK/DpDapQg6wWMx9IHN+pP4taJEd2nn6idMAssWp/xp07Pb72DxfeIy/uQAbL
x3paPjOyEXPlO2i9QtOo0zdgpZN58ww7AcX42AlmiLOdcgJGbge3+orUT+i2ksNb
Ew8UNAqXncATMhUdLWefA3W/9iRQoZH8Sdb1s6vqXXM72HOL2ZDngqmArHJTbf2T
1zL20huIFbBnRb5SKApCW2GAzs9iuDaF/dcMdXxCzG8LpRx6bg==
=gUxY
-----END PGP SIGNATURE-----

--Sig_/CecN_GWaXptE7.hUdn20d0I--


--===============3683955167715724462==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============3683955167715724462==--

