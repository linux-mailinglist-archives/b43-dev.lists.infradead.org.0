Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE421DCB4C
	for <lists+b43-dev@lfdr.de>; Thu, 21 May 2020 12:47:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Mz6QnByoGGV/JKt65xGamdEye3jD0tfBGXcaaNwjkeg=; b=t6Mv/H8oHvdi51zotDIpgiQwK
	ggBywnTM54tPv1AgwbIJ9+ccBwjB+bxeWe7mXrhwZvMhnEoVzV8TVY6HyN0FyUxFwba6NnD3MdhPf
	YDNDgx+1R8VNfGu+kn+bZn3/Wa0zxLhJIT4FAX1shENS/mc+YrhBIn7Mw0jsf2mkYuqeukrfYFzXJ
	pb2Bhu6KJTiEIP+e5GLu30LSiun1uj/qETjBLmrg8YPvlmvM9c+8cQKaRecjW1rz3ian7PPCDJqDt
	mDAictp8kbE/Yf0xTBCIx42sNfzGP0PF0Ma3ExCfS3emUTMfugWBUCEzX9aEWwcnq5qxQ+ZLehVbF
	QqnJY56Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbijT-00057r-Hm; Thu, 21 May 2020 10:47:23 +0000
Received: from bues.ch ([2a01:138:9005::1:4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbiiX-00050I-Dw
 for b43-dev@lists.infradead.org; Thu, 21 May 2020 10:46:26 +0000
Received: by bues.ch with esmtpsa (Exim 4.92) (envelope-from <m@bues.ch>)
 id 1jbiiM-0006mA-Kt; Thu, 21 May 2020 12:46:14 +0200
Date: Thu, 21 May 2020 12:46:08 +0200
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Rui Salvaterra <rsalvaterra@gmail.com>, Larry Finger
 <Larry.Finger@lwfinger.net>
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
Message-ID: <20200521124608.4b5c78f2@wiggum>
In-Reply-To: <CALjTZvYMF_ERBfzkhaHvsTu6kt7MW+L_979sOVs8hcH7zF_Nyg@mail.gmail.com>
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
 <CALjTZvYCFNSQ6HMN4owkiGTVrYaiU8R-P1KXgvkwGqcOo8uMuw@mail.gmail.com>
 <CALjTZvYMF_ERBfzkhaHvsTu6kt7MW+L_979sOVs8hcH7zF_Nyg@mail.gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_034625_469321_1F13DF2D 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Type: multipart/mixed; boundary="===============8729405617125258736=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

--===============8729405617125258736==
Content-Type: multipart/signed; boundary="Sig_/ZtB=3+4AkPv+iRnV+pRksNN";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/ZtB=3+4AkPv+iRnV+pRksNN
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Thu, 21 May 2020 10:07:38 +0100
Rui Salvaterra <rsalvaterra@gmail.com> wrote:

> Well, I'm glad I was wrong. :) With your second patch, not only MFP is
> working in WPA2, but also WPA3. And iw list shows all the cyphers as
> supported.

Great. Thank you for testing.

Should we consider defaulting hwcrypto to off?

I wonder what the performance penalty is, if any, on today's CPUs
that have some HW-crypto embedded. Of course that depends on whether we
actually use that here.

Could we have some benchmarks (throughput and CPU load wise)?
=20

--=20
Michael

--Sig_/ZtB=3+4AkPv+iRnV+pRksNN
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAl7GW/AACgkQ9TK+HZCN
iw6g5xAAzZ1Lm7V8+H8yKXfhoV94nEJ23dgfyzwo8mI5zzJzhxinbGkk0ksIluej
ot3P0dsBYtw+4fLzbi5j3vKg4dzVTcwbPgDQ7TW/dnUwobMrCiLqJ6WoOIrbtJEF
OBqe7BbJtAu6D7NxuIr1zJJt+Q5uIh7FA19uyJqg5Oyxztb41dBw2/U752JvSaX/
I5aE0uBS31NrinPxAB7PIqGXp+oHb8AM9EWcBLJ6uh3Zmk7euGYoFWz8Rk/LDMva
WjzTtZG60IHTEJ7vJ1+pOC0Xeq8MgGEAb07ijarSf7FYeLvKn33p5pUZEMLU2t3A
VtD3YQHikNgJBzJCvj3KItd2cPIKgUoks6iqrfAoOZjcp+dRHtDwiN3exP6qZ+F2
8RfW46hzJj39DSE6SIwnsgBA1iKFflpr4LVF/eJP2q0lfS80KDyMDPniC8ADyrh6
XQtNAR0CrswEW5tHQxBJ5OA17w7hFwBKih8HraVDI2FfcIcYd9DUpx5YSkQNEGpN
CF3fj4dWEdcqqYSgNrvuOFrsJ/bBT15yRqdKCquTUlVIJ+CU5XmXMfVRt7ESadvx
MKjZO7o63BvreupULIc94AUyQM2sTNU2xtZNFLgQsPO2JxUYa5GaVIUKrIbBNiH4
nawx6h9tNZpdH+nQJCGTe4rohYmb824CdCyVLGdjCBtwV3mveWo=
=VH6L
-----END PGP SIGNATURE-----

--Sig_/ZtB=3+4AkPv+iRnV+pRksNN--


--===============8729405617125258736==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============8729405617125258736==--

