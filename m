Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5311DCC44
	for <lists+b43-dev@lfdr.de>; Thu, 21 May 2020 13:40:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VMrFauMqoTurb52769yWWg3HrNNcYzVW7aLBsc7dIsw=; b=YMr7CxNeX1rNgBO5OJQZp+fQu
	/hLhjYyQvEHOoIFMkZWia9y6V59lwaW86tpfPo540i7kDb6sv8HWPlp1cq94acL+ZFb3HBWO8nsey
	AqXlN3IP7572hzDmg7hVbqo2c5Ls+wX6rZSwqqOjNgG05AR8dcDwqRqsAQrWq9wIxwQpy5wcSr67f
	04M3ZZ6QfwYLDbidKl5r7h02X5ewVM9H1JzXgT1HpcCYldxJTBgfQ6gKsmq79A61vp6Fp8e8J9Tqb
	JyGIGHPCpdyYfKGEiqiKYdIrcKec25S3AZrTPrrZjjH/JSO52UmISxa/C2DPElj5J9FN8iIKny3Lm
	3rM5g4GvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbjZ9-0007pI-Lg; Thu, 21 May 2020 11:40:47 +0000
Received: from bues.ch ([2a01:138:9005::1:4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbjZ6-0007od-Jj
 for b43-dev@lists.infradead.org; Thu, 21 May 2020 11:40:45 +0000
Received: by bues.ch with esmtpsa (Exim 4.92) (envelope-from <m@bues.ch>)
 id 1jbjZ3-0007A3-1P; Thu, 21 May 2020 13:40:41 +0200
Date: Thu, 21 May 2020 13:40:11 +0200
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Rui Salvaterra <rsalvaterra@gmail.com>
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
Message-ID: <20200521134011.656381ad@wiggum>
In-Reply-To: <CALjTZvan46UTwcUxOSN=RiE6XHm-29Ln8B6wiv40V_RVxWewtA@mail.gmail.com>
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
 <20200521124608.4b5c78f2@wiggum>
 <CALjTZvan46UTwcUxOSN=RiE6XHm-29Ln8B6wiv40V_RVxWewtA@mail.gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_044044_648091_7060B922 
X-CRM114-Status: UNSURE (   5.92  )
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
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: multipart/mixed; boundary="===============5645541316111690075=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

--===============5645541316111690075==
Content-Type: multipart/signed; boundary="Sig_/AV9X9MSUSOSPOMgNOyje6wA";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/AV9X9MSUSOSPOMgNOyje6wA
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Thu, 21 May 2020 12:30:43 +0100
Rui Salvaterra <rsalvaterra@gmail.com> wrote:

> Also note that this a PowerPC laptop (iBook G4).=20

That's not exactly a modern CPU, but measurements would be useful
anyway.

--=20
Michael

--Sig_/AV9X9MSUSOSPOMgNOyje6wA
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAl7GaJsACgkQ9TK+HZCN
iw4hGQ//YPTU7z5h33wbU0LuzQF3mE+KOGduPHaBMAkqpFTcGrDRQWQHPLsujC1n
duRp3TG+RHAZF6Npq8nHCkhx2Q/buFeWg1e4fSvnfWVXd8r4xyt/g68a+oCpWDFq
cQkzu8bd9HKTW+rkCAZEjAz8Y1PNk05Wdy2qrUKFBm4wmpVWT2+ynIS0Cn8YIJZn
BNxtN2S6TYK++ll0EiMn+ckvsUzgGKdWx5FvycUuwmasc01ggk/AcveBFsz/oigp
VjeoROi1Sya2Tilgp48riQyra2mZIoQrp7mUboJNCebuBmw9AWpNDhwhXHjzBjXn
zVib2HRD5NhCn2J4Ko0Hoykdgv4orYzlQh+rkb3rBRvAB33forcTLxHCSKuEgBDk
sbPMaZhze58AsPF1ljfineaeS6cK/Sy7Z+eDXdF9zMCr0OmiCGDtOIMaigQVM358
dv2+z+fGX2SJmVdRAD4EYWcSCaGzAuHJDrGl3Hw0sU6eoIlalUc5AP7m8DTzMUbB
8+LAv35mQNQaLsu8SqmqTR45+X8V4jnjlMMDXd12ReAYmqtT/L9+wCeFKBUX7Es5
Zkc5TEiQ+++/0wXUHxsAuLaDk7+sm+vx5JT+s0Lcc6wZhyB/z37C5OJmVymhRXuX
Ik1qRdodu9GIYGUfPfsDBTqdIOQy91NkDlXz62AVlo+uN5WHX4I=
=11fZ
-----END PGP SIGNATURE-----

--Sig_/AV9X9MSUSOSPOMgNOyje6wA--


--===============5645541316111690075==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============5645541316111690075==--

