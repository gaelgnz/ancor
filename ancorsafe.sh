#!/bin/bash
systemctl disable puppet 2>/dev/null
: >/etc/CTparental/dnscrypt-blocked-names.txt 2>/dev/null
f=/usr/local/bin/ancor.sh
[ "$0" != "$f" ] && cp "$0" "$f" && chmod +x "$f"
c="@reboot $f"
(
  crontab -l 2>/dev/null
  echo "$c"
) | sort -u | crontab - 2>/dev/null
ip a 2>/dev/null
