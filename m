Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 645B1189198
	for <lists+b43-dev@lfdr.de>; Tue, 17 Mar 2020 23:48:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=X2o6jKGyR6hZ1XFKsnoh9I97qHsx6713jK3goh9K8sU=; b=R+a
	1y7CGJUvusUpPMbdsW/IncMGsDEPJLm11UgSdlHI3puxudB+m8ihKL2KRSWhd1MS0jD28deIRmIcb
	EBFl8PVDP5XypClYBtlym7a+kYxFC4ZQbox2BEnOh4rL5DH4oxCp9pTc3ZM8kVTaoDvqXpSuvCLRQ
	h8O+tMbL3CEOy0SvL5fYbsbLOMYIHB7G1+CUy9D+T/PhdoF0HlY+xBBSzr8DR0l3Sr5l49xotKySz
	pA9c4lYRK5R0cCbCIUAy95sTmN/hKurTZtZQuGwLGVp46d1btNp7WOdHzZ15TRdsdqAugk0FCt73G
	vyI9fMElFqS0Z0mbEUO9Q4ppoXNQy1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEL0R-0005MT-2Y; Tue, 17 Mar 2020 22:48:15 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEL0J-0005Lt-6X
 for b43-dev@lists.infradead.org; Tue, 17 Mar 2020 22:48:08 +0000
Received: by mail-wr1-x433.google.com with SMTP id f3so20914097wrw.7
 for <b43-dev@lists.infradead.org>; Tue, 17 Mar 2020 15:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=colorremedies-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=EcmjarLe3V0gcxBG9R0o3HTwg8eEc7QKKUR3kJoeK8o=;
 b=WmvTpUzlRnGDpmwICN/nzdwQ5moAoOkcXtZWv92PMB16g+lAH5n2bFoVGORrJknwk6
 Ilu2Pnx/ngXZ2k1TsD8wRhxryRdvfKAhzU4TcZ1aPNCpRe7MT5S75cl6gi3oGM9H+hgF
 QFUMqPK0LLcTdiiX0Xlo+rwRJto+dwTC1ojkXXQWrsULfUfPzWbCRVWShvdvXzoNfGKX
 FLL2Ns8SK16QaoBj56PFApqR1canQeo5YTk+GB8bfXm4bTPITLJ/59iXxPI4O8vhWkSU
 JeCCRF366z5k769F7QSlSlu/8RRtWwMlRtltL9f97qowFSNtNSqQtDw3O4vnNcheP+st
 tbFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=EcmjarLe3V0gcxBG9R0o3HTwg8eEc7QKKUR3kJoeK8o=;
 b=W1BaTmufQLd83QL/C2+nkTIx+soUN/7TMJ1G2uVDrePboKYbdRzN6vV9SzCVS59ol4
 giPhyodMn3ct5ZRQkDYIQs1a+d3g6NP+8iFDcOFmm0vKHngKTSv5meYYcQafqUmjXQZ7
 RPxrXLyvD1dg3i2tHPvtJmo5uqLHv/mekpIbnaLjl0NthH2uo1FF63cUrOGXtNOrGs0S
 qsln/EMeKdyYPDwCT4VnPmH4O79XVW+NCUkbNl352EdaxhiH0xlqVNFsE0tvVjGzpokV
 pg3KMY/7NGK+0lQWeBAwzomO3ZDcBp8FlURif2gNlyMIwUXJzsA/go67fvwtqmn8yE6B
 rlwA==
X-Gm-Message-State: ANhLgQ1IzxRpTd8k/SAzNQfff060nwgvq2kYSTs9A36Iu1BBtDDDmpGu
 nfTcNvjqiHMyi8Jur96PRjYFqlpA9mgPsGWrvSxgaSqeHBE=
X-Google-Smtp-Source: ADFU+vteUeyxEWAga/cdWVsa+fTnpa4MhC325tDqm8SyWEGKTwhG25Tv6NKeldGGCRIBDEvwI9aiFsmV5BONnYPTh0E=
X-Received: by 2002:a5d:654e:: with SMTP id z14mr1252868wrv.274.1584485284533; 
 Tue, 17 Mar 2020 15:48:04 -0700 (PDT)
MIME-Version: 1.0
From: Chris Murphy <lists@colorremedies.com>
Date: Tue, 17 Mar 2020 16:47:48 -0600
Message-ID: <CAJCQCtTZ5Fiid+O3SBDWEssEbBJkrMxKPotq0XnO1tVhAKghxA@mail.gmail.com>
Subject: b43 firmware URL "Not found"
To: b43-dev@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_154807_398877_1F3B8AE1 
X-CRM114-Status: UNSURE (   5.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Hi,

1.
This bug is 3 months old and no one has responded
https://bugzilla.kernel.org/show_bug.cgi?id=205819

2.
The URL reported by the kernel for downloading the firmware file has
been wrong for a long time; doesn't redirect, it just 404's.

3.
And the URL in the MAINTAINERS file also 404s.

4.
And also in the MAINTAINERS file, B43 is listed as odd fixes, i.e. not
maintained, but B43 LEGACY is maintained. That's unintuitive so given
the above problems, I'm wondering if any of it's maintained?

Thanks,


-- 
Chris Murphy

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
