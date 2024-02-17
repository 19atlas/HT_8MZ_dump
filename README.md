# twrp_device_HT_8MZ

<h1>UYARI cihazınıza olacak herhangi bir arızanın sorumlu değilim. LÜTFEN oluşucak riskleri göze alıyorsanız devam edin</h1>

  <img src="https://cdn.dsmcdn.com/ty101/product/media/images/20210406/09/f0c1a39d/64964522/2/2_org_zoom.jpg" width="250" height="400" />


## Tablet özellikleri /HT_8MZ
- [x] Android: 8.1 Oreo GO edition
- [x] CPU: MediaTek mt8163
- [x] Core architecture 4x ARM Cortex-A53 @ 1300 MHz
- [x] Screen: 1280 x 800
- [x] GPU Renderer: Mali-T720
- [x] xdpi/ydpi 160/160 dpi
- [x] Ram: ~1GB (969 MB)
- [x] Bluetooth: 4+
- [x] Storage: 16GB (12,57 GB usable)
- [x] microSD card support
- cmdline: `bootopt=64S3,32N2,32N2 buildvariant=user`

## changed_ROM klasöründe
`lk.bin` removed mediatek orange and red warnings <br>
`magisk_patchedboot-27000_tGZOA.img` magisk patched boot (ver. v27.0)<br>
`recoverytwrp.img` this is twrp port of device. (thanks for hovatek) <br>

### In system.prop
```
ro.product.brand=Hometech
ro.product.name=HT_8MZ
ro.product.device=HT_8MZ
ro.build.product=tb8163p3_bsp
ro.treble.enabled=true
```

### In recovery partitions
<h3>warning change `mtk-msdc.0/11230000.MSDC0` to `soc` or `bootdevice` for twrp!!</h3>
<h4>that is original text:</h4>

```
/system          ext4     /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/system       flags=display=system
/vendor          ext4     /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/vendor       flags=display=vendor
/odmdtbo         emmc     /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/odmdtbo      flags=display=odmdtbo
/data            f2fs     /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/userdata     flags=display=data
/cache           ext4     /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/cache        flags=display=cache
auto             vfat     /devices/soc/11240000.mmc*                                         flags=display=auto
auto             vfat     /devices/platform/mt_usb*                                          flags=display=auto
auto             vfat     /devices/soc/11270000.usb*                                         flags=display=auto
/nvram           emmc     /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/nvram        flags=display=nvram
/proinfo         emmc     /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/proinfo      flags=display=proinfo
/bootloader      emmc     /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/lk           flags=display=bootloader
/bootloader2     emmc     /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/lk2          flags=display=bootloader2
/misc            emmc     /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/para         flags=display=misc
/boot            emmc     /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/boot         flags=display=boot
/recovery        emmc     /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery     flags=display=recovery
/logo            emmc     /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/logo         flags=display=logo
/expdb           emmc     /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/expdb        flags=display=expdb
/secro           emmc     /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/secro        flags=display=secro
/seccfg          emmc     /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/seccfg       flags=display=seccfg
/tee1            emmc     /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/tee1         flags=display=tee1
/tee2            emmc     /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/tee2         flags=display=tee2
/kb              emmc     /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/kb           flags=display=kb
/dkb             emmc     /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/dkb          flags=display=dkb
```
## recovery.fstab
```
/boot         emmc    /dev/block/bootdevice/by-name/boot
/recovery     emmc    /dev/block/bootdevice/by-name/recovery
/nvram        emmc    /dev/block/bootdevice/by-name/nvram
/cache        ext4    /dev/block/soc/by-name/cache
/system       ext4    /dev/block/bootdevice/by-name/system
/data         f2fs    /dev/block/bootdevice/by-name/userdata   length=-16384 flags=encryptable=/dev/block/bootdevice/by-name/metadata
/bootloader       emmc    /dev/block/platform/bootdevice/by-name/lk     flags=display="lk"

/extSdCard    auto    /dev/block/mmcblk1p1           flags=display="MicroSD card";storage;wipeingui;removable
/usb-otg      auto    /dev/block/sda1                    flags=display="USB drive";storage;wipeingui;removable
```

## comandline full (from device info HW)
```
console=tty0 console=ttyMT0,921600n1
earlycon=uart8250, mmio32, 0x11002000
vmalloc=496M androidboot.hardware=mt8163
firmware_class.path=/vendor/firmware root=/
dev/ram androidboot.verifiedbootstate=orange
bootopt=64S3,32N2,32N2 buildvariant=user
androidboot.veritymode=enforcing printk.disable_uart=1
bootprof.pl_t=1235 bootprof.lk_t=7597
boot reason=0 androidboot. serialno=61192703221
androldboot. bootreason=power ukey mrdump, ddrsv=no
mroumd rsvmem= 0x56000000, 0x400000, 0x42000000, 0x179
fc0,0x54000000, 0x80000
```

## ...Android_Scatter.txt
```
#########################################__WwR_MTK_2.50__###################################################
#
#  General Setting
#
#########################################__WwR_MTK_2.50__###################################################
- general: MTK_PLATFORM_CFG
  info: 
    - config_version: V1.1.2
      platform: MT8163
      project: tb8163p3_bsp
      storage: EMMC
      boot_channel: MSDC_0
      block_size: 0x20000
############################################################################################################
#
#  Layout Setting
#
############################################################################################################
- partition_index: SYS0
  partition_name: preloader
  file_name: preloader_tb8163p3_bsp.bin
  is_download: true
  type: SV5_BL_BIN
  linear_start_addr: 0x0
  physical_start_addr: 0x0
  partition_size: 0x40000
  region: EMMC_BOOT_1
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: BOOTLOADERS
  is_upgradable: true
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS1
  partition_name: pgpt
  file_name: NONE
  is_download: false
  type: NORMAL_ROM
  linear_start_addr: 0x0
  physical_start_addr: 0x0
  partition_size: 0x80000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: INVISIBLE
  is_upgradable: false
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS2
  partition_name: proinfo
  file_name: NONE
  is_download: false
  type: NORMAL_ROM
  linear_start_addr: 0x80000
  physical_start_addr: 0x80000
  partition_size: 0x300000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: PROTECTED
  is_upgradable: false
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS3
  partition_name: nvram
  file_name: NONE
  is_download: false
  type: NORMAL_ROM
  linear_start_addr: 0x380000
  physical_start_addr: 0x380000
  partition_size: 0x500000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: BINREGION
  is_upgradable: false
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS4
  partition_name: ITEMS
  file_name: items.ini
  is_download: true
  type: EXT4_IMG
  linear_start_addr: 0x880000
  physical_start_addr: 0x880000
  partition_size: 0x100000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: UPDATE
  is_upgradable: true
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS5
  partition_name: protect1
  file_name: NONE
  is_download: false
  type: NORMAL_ROM
  linear_start_addr: 0x980000
  physical_start_addr: 0x980000
  partition_size: 0xA00000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: PROTECTED
  is_upgradable: false
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS6
  partition_name: protect2
  file_name: NONE
  is_download: false
  type: NORMAL_ROM
  linear_start_addr: 0x1380000
  physical_start_addr: 0x1380000
  partition_size: 0xA00000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: PROTECTED
  is_upgradable: false
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS7
  partition_name: persist
  file_name: NONE
  is_download: false
  type: NORMAL_ROM
  linear_start_addr: 0x1D80000
  physical_start_addr: 0x1D80000
  partition_size: 0x3000000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: PROTECTED
  is_upgradable: false
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS8
  partition_name: seccfg
  file_name: NONE
  is_download: false
  type: NORMAL_ROM
  linear_start_addr: 0x4D80000
  physical_start_addr: 0x4D80000
  partition_size: 0x40000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: INVISIBLE
  is_upgradable: false
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS9
  partition_name: lk
  file_name: lk.bin
  is_download: true
  type: NORMAL_ROM
  linear_start_addr: 0x4DC0000
  physical_start_addr: 0x4DC0000
  partition_size: 0x200000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: UPDATE
  is_upgradable: true
  empty_boot_needed: true
  reserve: 0x00

- partition_index: SYS10
  partition_name: lk2
  file_name: lk2.bin
  is_download: true
  type: NORMAL_ROM
  linear_start_addr: 0x4FC0000
  physical_start_addr: 0x4FC0000
  partition_size: 0x200000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: UPDATE
  is_upgradable: true
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS11
  partition_name: boot
  file_name: boot.img
  is_download: true
  type: NORMAL_ROM
  linear_start_addr: 0x51C0000
  physical_start_addr: 0x51C0000
  partition_size: 0x1000000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: UPDATE
  is_upgradable: true
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS12
  partition_name: recovery
  file_name: recovery.img
  is_download: true
  type: NORMAL_ROM
  linear_start_addr: 0x61C0000
  physical_start_addr: 0x61C0000
  partition_size: 0x1000000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: UPDATE
  is_upgradable: true
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS13
  partition_name: secro
  file_name: secro.bin
  is_download: true
  type: NORMAL_ROM
  linear_start_addr: 0x71C0000
  physical_start_addr: 0x71C0000
  partition_size: 0x600000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: UPDATE
  is_upgradable: true
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS14
  partition_name: para
  file_name: NONE
  is_download: false
  type: NORMAL_ROM
  linear_start_addr: 0x77C0000
  physical_start_addr: 0x77C0000
  partition_size: 0x80000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: INVISIBLE
  is_upgradable: false
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS15
  partition_name: logo
  file_name: logo.bin
  is_download: true
  type: NORMAL_ROM
  linear_start_addr: 0x7840000
  physical_start_addr: 0x7840000
  partition_size: 0x800000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: UPDATE
  is_upgradable: false
  empty_boot_needed: true
  reserve: 0x00

- partition_index: SYS16
  partition_name: odmdtbo
  file_name: odmdtbo.img
  is_download: true
  type: NORMAL_ROM
  linear_start_addr: 0x8040000
  physical_start_addr: 0x8040000
  partition_size: 0x1000000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: UPDATE
  is_upgradable: true
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS17
  partition_name: vendor
  file_name: vendor.img
  is_download: true
  type: EXT4_IMG
  linear_start_addr: 0x9040000
  physical_start_addr: 0x9040000
  partition_size: 0x12C00000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: UPDATE
  is_upgradable: true
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS18
  partition_name: expdb
  file_name: NONE
  is_download: false
  type: NORMAL_ROM
  linear_start_addr: 0x1BC40000
  physical_start_addr: 0x1BC40000
  partition_size: 0xA00000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: INVISIBLE
  is_upgradable: false
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS19
  partition_name: frp
  file_name: NONE
  is_download: false
  type: NORMAL_ROM
  linear_start_addr: 0x1C640000
  physical_start_addr: 0x1C640000
  partition_size: 0x100000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: INVISIBLE
  is_upgradable: false
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS20
  partition_name: tee1
  file_name: trustzone1.bin
  is_download: true
  type: NORMAL_ROM
  linear_start_addr: 0x1C740000
  physical_start_addr: 0x1C740000
  partition_size: 0x500000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: UPDATE
  is_upgradable: true
  empty_boot_needed: true
  reserve: 0x00

- partition_index: SYS21
  partition_name: tee2
  file_name: trustzone2.bin
  is_download: true
  type: NORMAL_ROM
  linear_start_addr: 0x1CC40000
  physical_start_addr: 0x1CC40000
  partition_size: 0x500000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: UPDATE
  is_upgradable: true
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS22
  partition_name: kb
  file_name: NONE
  is_download: false
  type: NORMAL_ROM
  linear_start_addr: 0x1D140000
  physical_start_addr: 0x1D140000
  partition_size: 0x200000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: INVISIBLE
  is_upgradable: false
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS23
  partition_name: dkb
  file_name: NONE
  is_download: false
  type: NORMAL_ROM
  linear_start_addr: 0x1D340000
  physical_start_addr: 0x1D340000
  partition_size: 0x200000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: INVISIBLE
  is_upgradable: false
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS24
  partition_name: metadata
  file_name: NONE
  is_download: false
  type: NORMAL_ROM
  linear_start_addr: 0x1D540000
  physical_start_addr: 0x1D540000
  partition_size: 0x22C0000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: INVISIBLE
  is_upgradable: false
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS25
  partition_name: system
  file_name: system.img
  is_download: true
  type: EXT4_IMG
  linear_start_addr: 0x1F800000
  physical_start_addr: 0x1F800000
  partition_size: 0x51800000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: UPDATE
  is_upgradable: true
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS26
  partition_name: cache
  file_name: cache.img
  is_download: true
  type: EXT4_IMG
  linear_start_addr: 0x71000000
  physical_start_addr: 0x71000000
  partition_size: 0x6800000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: UPDATE
  is_upgradable: false
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS27
  partition_name: userdata
  file_name: userdata.img
  is_download: true
  type: EXT4_IMG
  linear_start_addr: 0x77800000
  physical_start_addr: 0x77800000
  partition_size: 0x324780000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: true
  is_reserved: false
  operation_type: UPDATE
  is_upgradable: false
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS28
  partition_name: flashinfo
  file_name: NONE
  is_download: false
  type: NORMAL_ROM
  linear_start_addr: 0xFFFF0084
  physical_start_addr: 0xFFFF0084
  partition_size: 0x1000000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: false
  is_reserved: true
  operation_type: RESERVED
  is_upgradable: false
  empty_boot_needed: false
  reserve: 0x00

- partition_index: SYS29
  partition_name: sgpt
  file_name: NONE
  is_download: false
  type: NORMAL_ROM
  linear_start_addr: 0xFFFF0004
  physical_start_addr: 0xFFFF0004
  partition_size: 0x80000
  region: EMMC_USER
  storage: HW_STORAGE_EMMC
  boundary_check: false
  is_reserved: true
  operation_type: RESERVED
  is_upgradable: false
  empty_boot_needed: false
  reserve: 0x00
```
