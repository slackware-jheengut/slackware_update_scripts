#!/bin/sh


mkinitrd -F -c -f ext4 -h  /dev/VGSanDisk256GBSSD/SWAP -k 4.19.44 \
-m 8021q:ac:acpi_pad:acpi_thermal_rel:agpgart:battery:bluetooth:bnep:btbcm:btintel:btrtl:btusb:button:cec:cfg80211:cmac:coretemp:crc32_pclmul:crc32c-intel:crc32c_intel:crct10dif_pclmul:drm:drm_kms_helper:ecdh_generic:ehci-hcd:ehci-pci:ehci_hcd:ehci_pci:evdev:ext4:fat:fb_sys_fops:fuse:garp:ghash_clmulni_intel:hid:hid_generic:hwmon:i2c-hid:i2c_algo_bit:i2c_core:i2c_hid:i2c_i801:i915:int3400_thermal:int3403_thermal:int340x_thermal_zone:intel_cstate:intel_gtt:intel_pch_thermal:intel_powerclamp:intel_rapl:intel_rapl_perf:intel_soc_dts_iosf:intel_wmi_thunderbolt:intel_xhci_usb_role_switch:ipv6:irqbypass:iwlmvm:iwlwifi:jbd2:joydev:kvm:kvm_intel:llc:loop:mac80211:mbcache:mei:mei_me:memstick:mmc_block:mmc_core:mrp:nls_cp437:nls_iso8859_1:ohci-pci:ohci_hcd:ohci_pci:pcc_cpufreq:processor_thermal_device:psmouse:rc_core:rfcomm:rfkill:roles:rtsx_pci:rtsx_pci_ms:rtsx_pci_sdmmc:serio_raw:snd:snd_hda_codec:snd_hda_codec_conexant:snd_hda_codec_generic:snd_hda_codec_hdmi:snd_hda_core:snd_hda_intel:snd_hwdep:snd_pcm:snd_timer:soundcore:stp:syscopyarea:sysfillrect:sysimgblt:thermal:typec:typec_ucsi:uas:ucsi_acpi:uhci-hcd:uhci_hcd:usb_storage:usbhid:uvcvideo:vfat:video:videobuf2_common:videobuf2_memops:videobuf2_v4l2:videobuf2_vmalloc:videodev:wmi:wmi_bmof:x86_pkg_temp_thermal:xhci-hcd:xhci-pci:xhci_hcd:xhci_pci  \
-r /dev/sda4 -u -M -P /boot/intel-ucode.cpio -L  


eliloconfig
