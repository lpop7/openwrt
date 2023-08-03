# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2020 Tobias Maedel

# FIT will be loaded at 0x02080000. Leave 16M for that, align it to 2M and load the kernel after it.
KERNEL_LOADADDR := 0x03200000

define Device/friendlyelec_nanopc-t6
  DEVICE_VENDOR := Friendlyelec
  DEVICE_MODEL := NanoPC T6
  SOC := rk3588
  UBOOT_DEVICE_NAME := nanopi-r6c-rk3588
  IMAGE/sysupgrade.img.gz := boot-common | boot-script nanopi-r6c | pine64-img | gzip | append-metadata
 DEVICE_PACKAGES := \
	blkid block-mount blockd btrfs-progs f2fs-tools f2fsck fdisk fixparts fstools gdisk \
	kmod-ata-ahci kmod-ata-core kmod-fs-autofs4 kmod-fs-btrfs kmod-fs-exfat kmod-fs-exportfs luci-app-ttyd \
	kmod-fs-ext4 kmod-fs-squashfs kmod-nvme kmod-usb-net-rtl8152 kmod-usb-storage kmod-usb-storage-extras kmod-usb-storage-uas \
	kmod-usb-xhci-hcd kmod-usb3 losetup lsblk luci luci-proto-wireguard mkf2fs mount-utils parted partx-util pciutils resize2fs \
	kmod-r8125 usbutils wget-ssl smartmontools luci-app-statistics collectd-mod-cpufreq collectd-mod-sensors collectd-mod-thermal \
	collectd-mod-conntrack collectd-mod-irq dnsmasq-full -dnsmasq ethtool iperf3-ssl bash irqbalance
endef
TARGET_DEVICES += friendlyelec_nanopc-t6

define Device/friendlyelec_nanopi-r6c
  DEVICE_VENDOR := Friendlyelec
  DEVICE_MODEL := NanoPi R6C
  SOC := rk3588s
  UBOOT_DEVICE_NAME := nanopi-r6c-rk3588
  IMAGE/sysupgrade.img.gz := boot-common | boot-script nanopi-r6c | pine64-img | gzip | append-metadata
 DEVICE_PACKAGES := \
	blkid block-mount blockd btrfs-progs f2fs-tools f2fsck fdisk fixparts fstools gdisk \
	kmod-ata-ahci kmod-ata-core kmod-fs-autofs4 kmod-fs-btrfs kmod-fs-exfat kmod-fs-exportfs luci-app-ttyd \
	kmod-fs-ext4 kmod-fs-squashfs kmod-nvme kmod-usb-net-rtl8152 kmod-usb-storage kmod-usb-storage-extras kmod-usb-storage-uas \
	kmod-usb-xhci-hcd kmod-usb3 losetup lsblk luci luci-proto-wireguard mkf2fs mount-utils parted partx-util pciutils resize2fs \
	kmod-r8125 usbutils wget-ssl smartmontools luci-app-statistics collectd-mod-cpufreq collectd-mod-sensors collectd-mod-thermal \
	collectd-mod-conntrack collectd-mod-irq dnsmasq-full -dnsmasq ethtool iperf3-ssl bash irqbalance
endef
TARGET_DEVICES += friendlyelec_nanopi-r6c

define Device/friendlyelec_nanopi-r6s
  DEVICE_VENDOR := Friendlyelec
  DEVICE_MODEL := NanoPi R6S
  SOC := rk3588s
  UBOOT_DEVICE_NAME := nanopi-r6s-rk3588
  IMAGE/sysupgrade.img.gz := boot-common | boot-script nanopi-r6c | pine64-img | gzip | append-metadata
 DEVICE_PACKAGES := \
	blkid block-mount blockd btrfs-progs f2fs-tools f2fsck fdisk fixparts fstools gdisk \
	kmod-ata-ahci kmod-ata-core kmod-fs-autofs4 kmod-fs-btrfs kmod-fs-exfat kmod-fs-exportfs luci-app-ttyd \
	kmod-fs-ext4 kmod-fs-squashfs kmod-nvme kmod-usb-net-rtl8152 kmod-usb-storage kmod-usb-storage-extras kmod-usb-storage-uas \
	kmod-usb-xhci-hcd kmod-usb3 losetup lsblk luci luci-proto-wireguard mkf2fs mount-utils parted partx-util pciutils resize2fs \
	kmod-r8125 usbutils wget-ssl smartmontools luci-app-statistics collectd-mod-cpufreq collectd-mod-sensors collectd-mod-thermal \
	collectd-mod-conntrack collectd-mod-irq dnsmasq-full -dnsmasq ethtool iperf3-ssl bash irqbalance
endef
TARGET_DEVICES += friendlyelec_nanopi-r6s

define Device/xunlong_orangepi-5
  DEVICE_VENDOR := XunLong
  DEVICE_MODEL := Orange Pi 5
  SOC := rk3588s
  UBOOT_DEVICE_NAME := orangepi-5-rk3588
  SUPPORTED_DEVICES := rockchip,rk3588s-orangepi-5
  IMAGE/sysupgrade.img.gz := boot-common | boot-script nanopi-r6c | pine64-img | gzip | append-metadata
 DEVICE_PACKAGES := \
	blkid block-mount blockd btrfs-progs f2fs-tools f2fsck fdisk fixparts fstools gdisk \
	kmod-ata-ahci kmod-ata-core kmod-fs-autofs4 kmod-fs-btrfs kmod-fs-exfat kmod-fs-exportfs luci-app-ttyd \
	kmod-fs-ext4 kmod-fs-squashfs kmod-nvme kmod-usb-net-rtl8152 kmod-usb-storage kmod-usb-storage-extras kmod-usb-storage-uas \
	kmod-usb-xhci-hcd kmod-usb3 losetup lsblk luci luci-proto-wireguard mkf2fs mount-utils parted partx-util pciutils resize2fs \
	kmod-r8125 usbutils wget-ssl smartmontools luci-app-statistics collectd-mod-cpufreq collectd-mod-sensors collectd-mod-thermal \
	collectd-mod-conntrack collectd-mod-irq dnsmasq-full -dnsmasq ethtool iperf3-ssl bash irqbalance
endef
TARGET_DEVICES += xunlong_orangepi-5

define Device/xunlong_orangepi-5-plus
  DEVICE_VENDOR := XunLong
  DEVICE_MODEL := RK3588 OPi 5 Plus
  SOC := rk3588
  UBOOT_DEVICE_NAME := orangepi-5-plus-rk3588
  SUPPORTED_DEVICES := rockchip,rk3588-orangepi-5-plus
  IMAGE/sysupgrade.img.gz := boot-common | boot-script nanopi-r6c | pine64-img | gzip | append-metadata
 DEVICE_PACKAGES := \
	blkid block-mount blockd btrfs-progs f2fs-tools f2fsck fdisk fixparts fstools gdisk \
	kmod-ata-ahci kmod-ata-core kmod-fs-autofs4 kmod-fs-btrfs kmod-fs-exfat kmod-fs-exportfs luci-app-ttyd \
	kmod-fs-ext4 kmod-fs-squashfs kmod-nvme kmod-usb-net-rtl8152 kmod-usb-storage kmod-usb-storage-extras kmod-usb-storage-uas \
	kmod-usb-xhci-hcd kmod-usb3 losetup lsblk luci luci-proto-wireguard mkf2fs mount-utils parted partx-util pciutils resize2fs \
	kmod-r8125 usbutils wget-ssl smartmontools luci-app-statistics collectd-mod-cpufreq collectd-mod-sensors collectd-mod-thermal \
	collectd-mod-conntrack collectd-mod-irq dnsmasq-full -dnsmasq ethtool iperf3-ssl bash irqbalance
endef
TARGET_DEVICES += xunlong_orangepi-5-plus
