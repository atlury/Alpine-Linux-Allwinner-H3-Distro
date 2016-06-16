setenv fdt_high ffffffff
setenv machid 1029
setenv bootm_boot_mode sec
setenv bootargs vmlinuz modules=loop,squashfs,sd-mod,usb-storage modloop=modloop-sunxi hdmi.audio=EDID:0 disp.screen0_output_mode=EDID:800x600p60 console=ttyS0,115200
load mmc 0:1 0x43000000 script.bin
load mmc 0:1 0x41000000 vmlinuz
load mmc 0:1 0x45000000 initramfs-sunxi-new
bootz 0x41000000 0x45000000

