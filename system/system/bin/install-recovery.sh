#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:7c71b1b41b36ed074e06024f54396ee6c9e78e5e; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:d8d0b459f1d42876379c1a126e99093c490a55cb EMMC:/dev/block/bootdevice/by-name/recovery 7c71b1b41b36ed074e06024f54396ee6c9e78e5e 67108864 d8d0b459f1d42876379c1a126e99093c490a55cb:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
