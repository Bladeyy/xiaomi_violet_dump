#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:511dbd59678d19618a4764b164dbe69531b8d306; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:ee987b0bfb2ce877406564c2e7b88e34b3c9f8c1 EMMC:/dev/block/bootdevice/by-name/recovery 511dbd59678d19618a4764b164dbe69531b8d306 67108864 ee987b0bfb2ce877406564c2e7b88e34b3c9f8c1:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
