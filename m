Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFCBCC959
	for <lists+b43-dev@lfdr.de>; Sat,  5 Oct 2019 12:24:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rv2sfApyrvJX63wLcXVUQpAZLxCf0uxeaimclyYWa4c=; b=ardcQnGJLXkrt2
	K5gDiyzQaimxW9+5RTrG9noAbkFITOkfNQbzk3Qr+Sg46PWu3iEasYZDsBy2E05+oDu2jfvThhhE+
	G7SNLEbIfQq6m7tnSs7qyxf0PNqqw9Gf+Db55r0kcEv6oTugDwdW9V7HkmkqY0PRPXeRFYxZHpLD9
	8vuqPg/I89glEucniqI7t8TPtZeOUBbDDqJkLlrJESdWQrMBeaPGpyenyB3fwnigMCR4Pq5AbpsWF
	zf16LR8PGTX2t08mEmQF/STHacxxdenDqd+vQrKPX/uNJ5YpP/9ABIWLDO5mjXLk3hIwP+RiiOSOA
	sR6c71DwsSr48wovBZmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGhEr-0000XY-TF; Sat, 05 Oct 2019 10:24:37 +0000
Received: from mail-oln040092010090.outbound.protection.outlook.com
 ([40.92.10.90] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGhEh-0000Ws-9p
 for b43-dev@lists.infradead.org; Sat, 05 Oct 2019 10:24:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aUJnhUC69akznfBIlayYg6oFnHMobSvzRdCq9hHO95NWeGB//pqJSRGgpYC0i3NOHbksi15rlgRFJZhBhsXuv8aS9MQAVRi8Jooq+rfeTdRuoToeeotUAsuCzvteya91LppMzLxgm89xuPXicT8+VUyRQFYAQI9YJ2hOGF64R3d9vk1XYqRNv9i/WRC1rvnQXcWKZeW26/krxDZy25c7El68sOvaiyoE4+JnZK5VyRD9L93PQPP4ZKHCfl0ti3A2d93FyMwBoJLKMfZtY2bLvjDwLqgtnvky2SO9MtiByZqAQbDVI/sXgdZwgeBsV6L2rZed1Mlmuln7gnG5D9byxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rduj5jumBqh9H3un+sRs+yJ66GREsJdg9Cz6AM4ot9c=;
 b=J+/9N5Dw5EPABYbluCrrK1qd3rCM1JUeg0MECsu5n3mqntO1CCz2yqV3i/WviyFyICbyIP4gHDYVfOUiRnBDcTtKVVvZYF67EzniPKIQXnP0R0DKAyBTUGlPmXo/m4h+mF8y6robyohr2vnpz1ESE7UNvExriY4DNmRpP+ZqqKr9NDrUQ6GkE29E8xtHPKrZjuKfQjyCvYd6oeq+ujGT5fK9ngglmd+y2p2B7Z762c4dBB+AzMioUh2Lb2FEkxx+PRnBIJHSiuWZtBpyFE6WTR4SeoXvV8KgLpoAjIoVOiEfkvVfvbVNFQxam6RJVzKcVOBFMR9WmtZhgjJml7Al8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rduj5jumBqh9H3un+sRs+yJ66GREsJdg9Cz6AM4ot9c=;
 b=S2cj6ftGbYlHoFrQXB7yXwHxEjfXPixbVzzZxuMw+KQ6EnW9R3/2WJ2y1RU9uAKFAFLGIAVdaxhUsojB+jmVD5z8TK6GeLNqiBGW+dmgSxknvD7udurej+lblC5OtYu/9VeRVU495IDmxwhcKHn4Vhv+13+Es07RQVS61hEMy4X9gpuwmiNPruM5nbRv2QfK2oUV/gHHD4KiRoewaOVWHOVlzcJmSICkpI6sG14Zr/Eq1viR92j3UdzVOgxyqn9aUQ3dltuYSqtzwYOaHdBQZXjNsf/GooIcwBtMWMrU62PwsmyFkNfHOgDK0jvuNsJfkkOmJZrPY37isuWuuGeZHQ==
Received: from CO1NAM04FT038.eop-NAM04.prod.protection.outlook.com
 (10.152.90.57) by CO1NAM04HT226.eop-NAM04.prod.protection.outlook.com
 (10.152.91.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2327.20; Sat, 5 Oct
 2019 10:24:25 +0000
Received: from MWHPR0701MB3724.namprd07.prod.outlook.com (10.152.90.59) by
 CO1NAM04FT038.mail.protection.outlook.com (10.152.91.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.20 via Frontend Transport; Sat, 5 Oct 2019 10:24:25 +0000
Received: from MWHPR0701MB3724.namprd07.prod.outlook.com
 ([fe80::84c5:d116:bb89:9aad]) by MWHPR0701MB3724.namprd07.prod.outlook.com
 ([fe80::84c5:d116:bb89:9aad%6]) with mapi id 15.20.2305.023; Sat, 5 Oct 2019
 10:24:25 +0000
From: Craig Stadler <cstadler18@hotmail.com>
To: "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>
Subject: Podcast topic suggestion/tip
Thread-Topic: Podcast topic suggestion/tip
Thread-Index: AQHVe2cP63as4LmM30ql9hf8KLsw2Q==
Date: Sat, 5 Oct 2019 10:24:25 +0000
Message-ID: <MWHPR0701MB372438853E3123D9CB63F9A3DC990@MWHPR0701MB3724.namprd07.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MN2PR20CA0025.namprd20.prod.outlook.com
 (2603:10b6:208:e8::38) To MWHPR0701MB3724.namprd07.prod.outlook.com
 (2603:10b6:301:7e::29)
x-incomingtopheadermarker: OriginalChecksum:5275C7E2BF85419D1F72B39E51A518713A5566E275E6F63F0DA9895CB4D921F4;
 UpperCasedChecksum:2927C7C0FB5E3060A22338EA11AD5B15E4D87ECC76E24B57D1F432BABED2F4C5;
 SizeAsReceived:7329; Count:48
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [SqLhKE1gTeroa7aJ2eLqnbbPKPZ2bhLM]
x-microsoft-original-message-id: <b0b17c0875a3e1fca5d03aaeb0fba518@DESKTOP-C39SCAG>
x-ms-publictraffictype: Email
x-incomingheadercount: 48
x-eopattributedmessage: 0
x-ms-traffictypediagnostic: CO1NAM04HT226:
x-ms-exchange-purlcount: 3
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bXTcCD5gOqg+CyjbyGl4cBChUnRYO669RFpjbkGFTlEJt8vstwbPYBRnGQ5P90pJiAuxRATkOfFEFfAGfUHRle3KuftXLY5MVtd8SRvjI1WSObbd1SwuZE7FKudHtGdN5yte9kc+Ahig8rdyiN8CEwW9yZXP0os8Adz5YDdcdqmxK9vd9HN1K6/0uAGyIJcnWTTq1hlHK48mpYoelCngWdXjL0uGc1zuE3zhMs6LyIQ=
x-ms-exchange-transport-forked: True
Content-ID: <E945E7114FE54C46BA6DB9B0DBD4763F@namprd07.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c564c41-8491-4895-811f-08d7497e31e3
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2019 10:24:25.4011 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM04HT226
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_032427_516938_DCC8119A 
X-CRM114-Status: UNSURE (   3.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.10.90 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (cstadler18[at]hotmail.com)
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no
 'Received:'
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cstadler18[at]hotmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Greetings, please consider these resources for discussion as they relate to online privacy concerns.

Suggested Resources :
https://axcessnews.com/business/tech/online-video-search-and-other-tools-that-maintain-your-privacy_9142/
http://collegian.csufresno.edu/2019/05/01/how-do-you-find-videos-outside-of-youtube/
https://alltopstartups.com/2019/04/29/meet-petey-vid-a-coder-and-his-cat-take-on-video-search/

Thank you,
Craig


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
