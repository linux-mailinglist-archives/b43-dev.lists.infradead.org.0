Return-Path: <b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+b43-dev@lfdr.de
Delivered-To: lists+b43-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AABF020208A
	for <lists+b43-dev@lfdr.de>; Sat, 20 Jun 2020 05:31:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0UCGaKAFP6AD/wCbOLGBaYqbO85DaP+e0BBrgkxU714=; b=M/jNbRhMTSeDnH
	1XdLdkz87gUgjVJUYWwwOUsCcD8ji0sgktKCH9VU9hSN0P9bZuKo2cKPseBzNSUxfQCSkxJGk2M9e
	VS6knL2XMCv4aXAtGzuq0d9c9r9TYIfYZkbq2yRHUOqt/YZok2opzNvRakgnBDPwEeOHPBJu4kgKQ
	ZCHPpH0mgPLeyw67wqCqlmON4rWiLsqoWffQtgW6UF5e1Eo+IErUqMr8vUt13sxORR9VpiSAup+cs
	hMrPhklld6Wzt6+I2VK2iQ3bheMq3gxh6om9HJHDudGJEnt/3vKtapb1Dk7WjcZN+UcffFEA5Lyvk
	U9dZyFJN1Pv/43m0YFAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmUD9-0003PJ-GL; Sat, 20 Jun 2020 03:30:31 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmUCx-0003KP-J5
 for b43-dev@lists.infradead.org; Sat, 20 Jun 2020 03:30:22 +0000
Received: by mail-pl1-x644.google.com with SMTP id y17so4805332plb.8
 for <b43-dev@lists.infradead.org>; Fri, 19 Jun 2020 20:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LZz2PxXMfhCtZUNpoQsiyyHZgxbk7VacySF4LzvmsE8=;
 b=J7aP7EGOWrIFVsdr6vPzl54sPn9GHDby9vPKOMwuNjrOFTm9Jv2wRZ4dGb6ZoVFNte
 0ClxAoVmV1ginOIVgi13R0P6JTywRb/yi42DqPJRiH+vBEQLzXN7TdvxMVpUe/gNUSwO
 X24JQ5ScnHwyHx2zr+zEp6Kkmo/Opa6ndlvNA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LZz2PxXMfhCtZUNpoQsiyyHZgxbk7VacySF4LzvmsE8=;
 b=JTN0bKDBOHz+jNB6QYMF3pcTdmoZiVH86TWBwmMWIV7dUYE9U5yKy/DdzpGl7cgELI
 5F3lmGqDUbZHj7Yy7ND1kOHlx67PpjpsYsI5Zr8BMejFZhuOkIM+PbpjZP9+BbFw4B5G
 QyadKei/yOhKgK7Eu1uxHXSLk+J3SXogdC7BXQy3uLXtz8uLxxxnbofc1hoq/vQ+eTmc
 937DZs56Adt4JGYGB8/3jXUoKuzZVWfkHZvwU2j9ExlmKLTBlmNf7UeCsBe49A5m8U7K
 3HBb+Vy/M6gWqD5WUd+/fQrgDyAw0J4vmzsHgAGRToGjPJaJCluL06HgoLiDWauMdmHM
 09Wg==
X-Gm-Message-State: AOAM530tBQy0AqvaEXB/7E/kU4pSQM6hgeDM4iNqt5S64UTkNWCIUYtF
 N3ANWFxHesm9L7cceETPOWWHFg==
X-Google-Smtp-Source: ABdhPJxZq+wgwKue1E5/Yv7A4X3NjuQTscfMR87RwRp0uC9V8SCDqAyzjPKT0iBqoNJO+7tIVRawhA==
X-Received: by 2002:a17:90a:634a:: with SMTP id
 v10mr7009331pjs.50.1592623818248; 
 Fri, 19 Jun 2020 20:30:18 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id n2sm7140090pfd.125.2020.06.19.20.30.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 20:30:17 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 00/16] Remove uninitialized_var() macro
Date: Fri, 19 Jun 2020 20:29:51 -0700
Message-Id: <20200620033007.1444705-1-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_203019_730155_09A3BD5C 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Andy Whitcroft <apw@canonical.com>, Kees Cook <keescook@chromium.org>,
 linux-doc@vger.kernel.org, netdev@vger.kernel.org, x86@kernel.org,
 linux-wireless@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-block@vger.kernel.org, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, b43-dev@lists.infradead.org,
 linux-ide@vger.kernel.org, Joe Perches <joe@perches.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-clk@vger.kernel.org,
 drbd-dev@lists.linbit.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+lists+b43-dev=lfdr.de@lists.infradead.org

v2:
- more special-cased fixes
- add reviews
v1: https://lore.kernel.org/lkml/20200603233203.1695403-1-keescook@chromium.org

Using uninitialized_var() is dangerous as it papers over real bugs[1]
(or can in the future), and suppresses unrelated compiler warnings
(e.g. "unused variable"). If the compiler thinks it is uninitialized,
either simply initialize the variable or make compiler changes.

As recommended[2] by[3] Linus[4], remove the macro.

Most of the 300 uses don't cause any warnings on gcc 9.3.0, so they're in
a single treewide commit in this series. A few others needed to actually
get cleaned up, and I broke those out into individual patches.

The tree is:
https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=kspp/uninit/macro

-Kees

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Jason Yan (1):
  f2fs: Eliminate usage of uninitialized_var() macro

Kees Cook (15):
  docs: deprecated.rst: Add uninitialized_var()
  x86/mm/numa: Remove uninitialized_var() usage
  drbd: Remove uninitialized_var() usage
  b43: Remove uninitialized_var() usage
  rtlwifi: rtl8192cu: Remove uninitialized_var() usage
  ide: Remove uninitialized_var() usage
  clk: st: Remove uninitialized_var() usage
  spi: davinci: Remove uninitialized_var() usage
  clk: spear: Remove uninitialized_var() usage
  KVM: PPC: Book3S PR: Remove uninitialized_var() usage
  media: sur40: Remove uninitialized_var() usage
  checkpatch: Remove awareness of uninitialized_var() macro
  treewide: Remove uninitialized_var() usage
  compiler: Remove uninitialized_var() macro
  mm/debug_vm_pgtable: Remove uninitialized_var() usage

 Documentation/process/deprecated.rst           | 18 ++++++++++++++++++
 arch/arm/mach-sa1100/assabet.c                 |  2 +-
 arch/arm/mm/alignment.c                        |  2 +-
 arch/ia64/kernel/process.c                     |  2 +-
 arch/ia64/mm/discontig.c                       |  2 +-
 arch/ia64/mm/tlb.c                             |  2 +-
 arch/mips/lib/dump_tlb.c                       |  2 +-
 arch/mips/mm/init.c                            |  2 +-
 arch/mips/mm/tlb-r4k.c                         |  6 +++---
 arch/powerpc/kvm/book3s_64_mmu_radix.c         |  2 +-
 arch/powerpc/kvm/book3s_pr.c                   |  3 ---
 arch/powerpc/kvm/powerpc.c                     |  2 +-
 arch/powerpc/platforms/52xx/mpc52xx_pic.c      |  2 +-
 arch/s390/kernel/smp.c                         |  2 +-
 arch/x86/kernel/quirks.c                       | 10 +++++-----
 arch/x86/kvm/mmu/mmu.c                         |  2 +-
 arch/x86/kvm/mmu/paging_tmpl.h                 |  2 +-
 arch/x86/kvm/x86.c                             |  2 +-
 arch/x86/mm/numa.c                             | 18 +++++++++---------
 block/blk-merge.c                              |  2 +-
 drivers/acpi/acpi_pad.c                        |  2 +-
 drivers/ata/libata-scsi.c                      |  2 +-
 drivers/atm/zatm.c                             |  2 +-
 drivers/block/drbd/drbd_nl.c                   |  6 +++---
 drivers/block/drbd/drbd_state.c                |  2 +-
 drivers/block/rbd.c                            |  2 +-
 drivers/clk/clk-gate.c                         |  2 +-
 drivers/clk/spear/clk-vco-pll.c                |  2 +-
 drivers/clk/st/clkgen-fsyn.c                   |  1 -
 drivers/firewire/ohci.c                        | 14 +++++++-------
 drivers/gpu/drm/bridge/sil-sii8620.c           |  2 +-
 drivers/gpu/drm/drm_edid.c                     |  2 +-
 drivers/gpu/drm/exynos/exynos_drm_dsi.c        |  6 +++---
 drivers/gpu/drm/i915/display/intel_fbc.c       |  2 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c            |  2 +-
 drivers/gpu/drm/i915/intel_uncore.c            |  2 +-
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c    |  4 ++--
 drivers/i2c/busses/i2c-rk3x.c                  |  2 +-
 drivers/ide/ide-acpi.c                         |  2 +-
 drivers/ide/ide-atapi.c                        |  2 +-
 drivers/ide/ide-io-std.c                       |  4 ++--
 drivers/ide/ide-io.c                           |  8 ++++----
 drivers/ide/ide-sysfs.c                        |  2 +-
 drivers/ide/ide-taskfile.c                     |  1 -
 drivers/ide/umc8672.c                          |  2 +-
 drivers/idle/intel_idle.c                      |  2 +-
 drivers/infiniband/core/uverbs_cmd.c           |  4 ++--
 drivers/infiniband/hw/cxgb4/cm.c               |  2 +-
 drivers/infiniband/hw/cxgb4/cq.c               |  2 +-
 drivers/infiniband/hw/mlx4/qp.c                |  6 +++---
 drivers/infiniband/hw/mlx5/cq.c                |  6 +++---
 drivers/infiniband/hw/mlx5/devx.c              |  2 +-
 drivers/infiniband/hw/mlx5/wr.c                |  2 +-
 drivers/infiniband/hw/mthca/mthca_qp.c         | 10 +++++-----
 drivers/infiniband/sw/siw/siw_qp_rx.c          |  2 +-
 drivers/input/serio/serio_raw.c                |  2 +-
 drivers/input/touchscreen/sur40.c              |  4 +---
 drivers/iommu/intel/iommu.c                    |  2 +-
 drivers/md/dm-io.c                             |  2 +-
 drivers/md/dm-ioctl.c                          |  2 +-
 drivers/md/dm-snap-persistent.c                |  2 +-
 drivers/md/dm-table.c                          |  2 +-
 drivers/md/dm-writecache.c                     |  2 +-
 drivers/md/raid5.c                             |  2 +-
 drivers/media/dvb-frontends/rtl2832.c          |  2 +-
 drivers/media/tuners/qt1010.c                  |  4 ++--
 drivers/media/usb/gspca/vicam.c                |  2 +-
 drivers/media/usb/uvc/uvc_video.c              |  8 ++++----
 drivers/memstick/host/jmb38x_ms.c              |  2 +-
 drivers/memstick/host/tifm_ms.c                |  2 +-
 drivers/mmc/host/sdhci.c                       |  2 +-
 drivers/mtd/nand/raw/nand_ecc.c                |  2 +-
 drivers/mtd/nand/raw/s3c2410.c                 |  2 +-
 drivers/mtd/parsers/afs.c                      |  4 ++--
 drivers/mtd/ubi/eba.c                          |  2 +-
 drivers/net/can/janz-ican3.c                   |  2 +-
 drivers/net/ethernet/broadcom/bnx2.c           |  4 ++--
 .../ethernet/mellanox/mlx5/core/pagealloc.c    |  4 ++--
 drivers/net/ethernet/neterion/s2io.c           |  2 +-
 drivers/net/ethernet/qlogic/qla3xxx.c          |  2 +-
 drivers/net/ethernet/sun/cassini.c             |  2 +-
 drivers/net/ethernet/sun/niu.c                 |  6 +++---
 drivers/net/wan/z85230.c                       |  2 +-
 drivers/net/wireless/ath/ath10k/core.c         |  2 +-
 drivers/net/wireless/ath/ath6kl/init.c         |  2 +-
 drivers/net/wireless/ath/ath9k/init.c          |  2 +-
 drivers/net/wireless/broadcom/b43/debugfs.c    |  2 +-
 drivers/net/wireless/broadcom/b43/dma.c        |  2 +-
 drivers/net/wireless/broadcom/b43/lo.c         |  2 +-
 drivers/net/wireless/broadcom/b43/phy_n.c      |  4 ++--
 drivers/net/wireless/broadcom/b43/xmit.c       | 12 ++++++------
 .../net/wireless/broadcom/b43legacy/debugfs.c  |  2 +-
 drivers/net/wireless/broadcom/b43legacy/main.c |  2 +-
 drivers/net/wireless/intel/iwlegacy/3945.c     |  2 +-
 drivers/net/wireless/intel/iwlegacy/4965-mac.c |  2 +-
 .../wireless/realtek/rtlwifi/rtl8192cu/hw.c    |  8 ++++----
 drivers/pci/pcie/aer.c                         |  2 +-
 drivers/platform/x86/hdaps.c                   |  4 ++--
 drivers/scsi/dc395x.c                          |  2 +-
 drivers/scsi/pm8001/pm8001_hwi.c               |  2 +-
 drivers/scsi/pm8001/pm80xx_hwi.c               |  2 +-
 drivers/spi/spi-davinci.c                      |  1 -
 drivers/ssb/driver_chipcommon.c                |  4 ++--
 drivers/tty/cyclades.c                         |  2 +-
 drivers/tty/isicom.c                           |  2 +-
 drivers/usb/musb/cppi_dma.c                    |  2 +-
 drivers/usb/storage/sddr55.c                   |  4 ++--
 drivers/vhost/net.c                            |  6 +++---
 drivers/video/fbdev/matrox/matroxfb_maven.c    |  6 +++---
 drivers/video/fbdev/pm3fb.c                    |  6 +++---
 drivers/video/fbdev/riva/riva_hw.c             |  3 +--
 drivers/virtio/virtio_ring.c                   |  6 +++---
 fs/afs/dir.c                                   |  2 +-
 fs/afs/security.c                              |  2 +-
 fs/dlm/netlink.c                               |  2 +-
 fs/erofs/data.c                                |  4 ++--
 fs/erofs/zdata.c                               |  2 +-
 fs/f2fs/data.c                                 |  4 +---
 fs/fat/dir.c                                   |  2 +-
 fs/fuse/control.c                              |  4 ++--
 fs/fuse/cuse.c                                 |  2 +-
 fs/fuse/file.c                                 |  2 +-
 fs/gfs2/aops.c                                 |  2 +-
 fs/gfs2/bmap.c                                 |  2 +-
 fs/gfs2/lops.c                                 |  2 +-
 fs/hfsplus/unicode.c                           |  2 +-
 fs/isofs/namei.c                               |  4 ++--
 fs/jffs2/erase.c                               |  2 +-
 fs/nfsd/nfsctl.c                               |  2 +-
 fs/ocfs2/alloc.c                               |  4 ++--
 fs/ocfs2/dir.c                                 | 14 +++++++-------
 fs/ocfs2/extent_map.c                          |  4 ++--
 fs/ocfs2/namei.c                               |  2 +-
 fs/ocfs2/refcounttree.c                        |  2 +-
 fs/ocfs2/xattr.c                               |  2 +-
 fs/omfs/file.c                                 |  2 +-
 fs/overlayfs/copy_up.c                         |  2 +-
 fs/ubifs/commit.c                              |  6 +++---
 fs/ubifs/dir.c                                 |  2 +-
 fs/ubifs/file.c                                |  4 ++--
 fs/ubifs/journal.c                             |  4 ++--
 fs/ubifs/lpt.c                                 |  2 +-
 fs/ubifs/tnc.c                                 |  6 +++---
 fs/ubifs/tnc_misc.c                            |  4 ++--
 fs/udf/balloc.c                                |  2 +-
 fs/xfs/xfs_bmap_util.c                         |  2 +-
 include/linux/compiler-clang.h                 |  2 --
 include/linux/compiler-gcc.h                   |  6 ------
 include/linux/page-flags-layout.h              |  4 +++-
 include/net/flow_offload.h                     |  2 +-
 kernel/async.c                                 |  4 ++--
 kernel/audit.c                                 |  2 +-
 kernel/debug/kdb/kdb_io.c                      |  2 +-
 kernel/dma/debug.c                             |  2 +-
 kernel/events/core.c                           |  2 +-
 kernel/events/uprobes.c                        |  2 +-
 kernel/exit.c                                  |  2 +-
 kernel/futex.c                                 | 14 +++++++-------
 kernel/locking/lockdep.c                       | 16 ++++++++--------
 kernel/trace/ring_buffer.c                     |  2 +-
 lib/radix-tree.c                               |  2 +-
 lib/test_lockup.c                              |  2 +-
 mm/debug_vm_pgtable.c                          |  2 +-
 mm/frontswap.c                                 |  2 +-
 mm/ksm.c                                       |  2 +-
 mm/memcontrol.c                                |  2 +-
 mm/memory.c                                    |  2 +-
 mm/mempolicy.c                                 |  4 ++--
 mm/page_alloc.c                                |  2 +-
 mm/percpu.c                                    |  2 +-
 mm/slub.c                                      |  4 ++--
 mm/swap.c                                      |  4 ++--
 net/dccp/options.c                             |  2 +-
 net/ipv4/netfilter/nf_socket_ipv4.c            |  6 +++---
 net/ipv6/ip6_flowlabel.c                       |  2 +-
 net/ipv6/netfilter/nf_socket_ipv6.c            |  2 +-
 net/netfilter/nf_conntrack_ftp.c               |  2 +-
 net/netfilter/nfnetlink_log.c                  |  2 +-
 net/netfilter/nfnetlink_queue.c                |  4 ++--
 net/sched/cls_flow.c                           |  2 +-
 net/sched/sch_cake.c                           |  2 +-
 net/sched/sch_cbq.c                            |  2 +-
 net/sched/sch_fq_codel.c                       |  2 +-
 net/sched/sch_fq_pie.c                         |  2 +-
 net/sched/sch_hfsc.c                           |  2 +-
 net/sched/sch_htb.c                            |  2 +-
 net/sched/sch_sfq.c                            |  2 +-
 net/sunrpc/svcsock.c                           |  4 ++--
 net/sunrpc/xprtsock.c                          | 10 +++++-----
 net/tls/tls_sw.c                               |  2 +-
 scripts/checkpatch.pl                          | 16 +++++-----------
 sound/core/control_compat.c                    |  2 +-
 sound/isa/sb/sb16_csp.c                        |  2 +-
 sound/usb/endpoint.c                           |  2 +-
 tools/include/linux/compiler.h                 |  2 --
 tools/virtio/linux/kernel.h                    |  2 --
 196 files changed, 321 insertions(+), 330 deletions(-)

-- 
2.25.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
