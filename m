Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11388581BD
	for <lists+b43-dev@lfdr.de>; Thu, 27 Jun 2019 13:38:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=37HU988nVYOA/JnvXrZCykbQu8aykQxH39M16wAmECw=; b=u7p8Sb5nMUQXUR
	zEnF+2cxrh7Hp+LLQ1/bmIe2tcBsiDLU3Z0QgIj78AqYIdP7oH5KwN0/PttvLjVUZvkJMoEvVmInk
	+1ehrRNw/3YcFlMux4fOro1PR1s93r446EmuHeLZMD8NE1Xofcp2Z7fPn8/O4MEX+bZq6G1UlADJz
	8doxvy0nNbHHXCav1dfyETacmNMswWVnTlhVf5PrEppVGJwGGZh9bH1WCkpqVsWP7ZR06hvajMihY
	g3jsO73RV8iY4lFYl6t9PIwqaFUDIm6vc0NjtlhYOEgTfzlD21sTydtQdo59WoLmVrD2XTXLvJA3N
	GgyhrNImoSzAkLND61mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgSjS-0008BQ-HF; Thu, 27 Jun 2019 11:38:26 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgSjJ-0008Ao-Ol
 for b43-dev@lists.infradead.org; Thu, 27 Jun 2019 11:38:19 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 5AB5760767; Thu, 27 Jun 2019 11:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561635497;
 bh=4hOE5ZThruSSEEWDMxq0Dt5OhPpzapnURhse53Dk5WQ=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=lwil+HeSAfxdGvKxmoaw6YeXNX2Q6NsLoqoEDS2MzGNzNbTjbxtsj5ZSKe071yz8+
 hyf1zP2isDURMIa6B6KhpnJdWBdqoJI5vJYGkmrDnNZvBXxn9Xq90CG+oNS+NLgya4
 IM0mZAdpURaPL2Vh6j2KJaA1mMAVEpRmnxmRFGOY=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID,SPF_NONE autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8D560602F8;
 Thu, 27 Jun 2019 11:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561635496;
 bh=4hOE5ZThruSSEEWDMxq0Dt5OhPpzapnURhse53Dk5WQ=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=nbJM51t6Tkkmm0S+B5u4FYHEfiaoABBMPuYY4uR2R7uqpVDXOdrr0Tp50RYv1K9Wq
 W6QKiDH7waGw/3JhH8TaOkNXVPzfTHhAguI8BNznqvS6DAox6ihC4kcqsg0mz2VDfM
 a2a1iDrEdiP3KKigYv8nZO561Vzt7TWeF0LrkYHE=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8D560602F8
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH 1/4] b43legacy: remove b43legacy_dma_set_mask
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190625102932.32257-2-hch@lst.de>
References: <20190625102932.32257-2-hch@lst.de>
To: Christoph Hellwig <hch@lst.de>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190627113817.5AB5760767@smtp.codeaurora.org>
Date: Thu, 27 Jun 2019 11:38:17 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_043817_815945_3D46928C 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

Christoph Hellwig <hch@lst.de> wrote:

> These days drivers are not required to fallback to smaller DMA masks,
> but can just set the largest mask they support, removing the need for
> this trial and error logic.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Tested-by: Larry Finger <Larry.Finger@lwfinger.net>

4 patches applied to wireless-drivers-next.git, thanks.

258989000849 b43legacy: remove b43legacy_dma_set_mask
80372782e4cb b43legacy: simplify engine type / DMA mask selection
c897523febae b43: remove b43_dma_set_mask
288aa4ee7acf b43: simplify engine type / DMA mask selection

-- 
https://patchwork.kernel.org/patch/11015245/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
