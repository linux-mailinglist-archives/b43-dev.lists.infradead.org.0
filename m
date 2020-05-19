Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA901DA2E3
	for <lists+b43-dev@lfdr.de>; Tue, 19 May 2020 22:38:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CwD2RN4C6q6ItNPkwLIHIyUZ0gE8hWLRtD31mGzCg/U=; b=PjcXAXs6yb9z/H
	96v3RVciBd8uJ14Xo6DxKU71YL5Z81tdWmFFA8CuW8HcNDrNr3+0H1nWfQxajGqW2YYyi1GQ0b6Qp
	PB0NED1zHRLCZv02wAgyXm3j/GJ3k6RuHmFQ/sHive0hKqZw4U/NoZF+hsUar0VCzPXSRwNrGrDtQ
	FIxA17+zge3A8RT+/Y3gOVbk91NiowCRwms8bGxRcG+tVme6PHTxs4Un70HD7PceFtLb9MxoAG6AO
	RGL/GHa462N7v/hRm0p9JFOvGoKTaVRBbNbPfn5ge58DhoYoaLPlnR5tuMU0H/CCnn/5q/xBmCpzw
	yiIkvyX+miHlCB+FNGAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb90F-0004xG-Np; Tue, 19 May 2020 20:38:19 +0000
Received: from mail-vs1-xe2e.google.com ([2607:f8b0:4864:20::e2e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb8yD-0002uG-Qz
 for b43-dev@lists.infradead.org; Tue, 19 May 2020 20:36:15 +0000
Received: by mail-vs1-xe2e.google.com with SMTP id e7so443413vsm.6
 for <b43-dev@lists.infradead.org>; Tue, 19 May 2020 13:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/ocApQ62zmqcnkVU3n8VWQNIXG5B1jainUDzkBZVXX8=;
 b=YWt5XHdneSXm1vSWZtz4IUp78CqJd+zdNXxPAglc6lnpbqK6z/U8yjR1QKGSUjY6Xb
 rZDEuZnjHSAzOw2aIePPPe084VmJSETiXfWfJfOwxc09vvfzdQXi8ge4GeagleK+88mQ
 ZAsd1eGeL5Zj7A7XbgUSvwQpC49nItfkCaqyoR2rQ2mAoZswd/LByNSm5CcUOaYIWXeu
 hFBpr6lGSlnTMB7Y0pZMxN4+U2lc3Sskac7k8hTQpltt/qeJM5+hRZrB+q7R5nVtpnSq
 TQTcFrV07mOdX0wPOjI6elrwtDyhcltr2B6AwU5wR90pMMG/AXqfUVCCdu0NXyG3NM5A
 ryZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/ocApQ62zmqcnkVU3n8VWQNIXG5B1jainUDzkBZVXX8=;
 b=YDCiYGIieIZ4JHWo3V5/ZiL3FqO3jV0p2Xv7X2VSWnm5YDSn2BvJnw6rQ8VOHGUnA4
 01LSPlJFZ0QfmHHy4kll6zHYt5nAiwdyReUT7nrd61dkzd0ElwzhF2L1IwngbhSYMYJy
 Na4iAmW2TDBc5o5Cu+q/BWa8igQk2sL5ukVO61lW2LAYPOINMgC26uTz7SijTK7hW3P2
 SjlWYXCdSGYKFU2e8k7VyVMtEmFK8Da7XjyfJ0FtOJhe/Cp3PdIkp3CSnyTolBJucA6m
 5XORf5Zt2XFasZ7wVYmIBmnaftHD2jKbdr8EnSjRLSQwpLq8xgOpdMVIzHPxE1dF+fY5
 HWCw==
X-Gm-Message-State: AOAM530VvDohHcbee2rd8zi+rz5dIuOZ1QIF5mDdl9RBEjGjeGG1qTge
 U+NuMTojqvdL8Q8e0x4m0pbh/eLT2pHTdG6jIw==
X-Google-Smtp-Source: ABdhPJw7M31B+UoJl4JHRcdQ1yO/BWl99lEl5cWQYNxVqzLPIRVDc10abHApnX6HHgjdCWEaanWf+I1TU+vPvp0vUsA=
X-Received: by 2002:a67:f64a:: with SMTP id u10mr899668vso.202.1589920571798; 
 Tue, 19 May 2020 13:36:11 -0700 (PDT)
MIME-Version: 1.0
References: <CALjTZvbLOr5zAYyp75Cs6Zo8mWNUVq3ZRJu56G1iHdiihFejWQ@mail.gmail.com>
 <3483242e-c2ad-ec83-0c2c-ce952bc9b638@lwfinger.net>
In-Reply-To: <3483242e-c2ad-ec83-0c2c-ce952bc9b638@lwfinger.net>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Tue, 19 May 2020 21:36:00 +0100
Message-ID: <CALjTZvatxQ2BvUeZGcTFijBf1PiLizJuDdENxg2b=tPQL_NAzQ@mail.gmail.com>
Subject: Re: [BUG?] b43: can't connect to WPA3 network (nohwcrypt=1)
To: Larry Finger <Larry.Finger@lwfinger.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_133614_049365_31A1BC27 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e2e listed in]
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
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Hi, Larry,

On Tue, 19 May 2020 at 21:30, Larry Finger <Larry.Finger@lwfinger.net> wrote:
>
>  From other drivers, it appears that handling WPA3 might be as simple as setting
> MFP_CAPABLE in the hardware capabilities. Please try this patch:

Fantastic, thanks for the quick reply! I will do it ASAP and get back to you.

> I have no way of testing other than to compile.

No problem, I have two different revisions of b43 cards to test (on
x86 and ppc32 machines). :)

Thanks a lot,
Rui

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
