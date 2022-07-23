# twrp_device_HT_8MZ

  <img src="https://cdn.dsmcdn.com/ty101/product/media/images/20210406/09/f0c1a39d/64964522/2/2_org_zoom.jpg" width="250" height="400" />


## Tablet özellikleri /HT_8MZ
- [x] Android: 8.1 Oreo GO edition
- [x] CPU: MediaTek MT8163
- [x] Screen: 1280 x 800
- [x] Ram: 1GB
- [x] Storage: 16GB
- [x] microSD card support

### system.prop
```
ro.product.brand=Hometech
ro.product.name=HT_8MZ
ro.product.device=HT_8MZ
ro.build.product=tb8163p3_bsp
ro.treble.enabled=true
```

#### recovery partitions
||/system          ext4     /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/system       flags=display=system
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
/dkb             emmc     /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/dkb          flags=display=dkb||
