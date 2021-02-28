#!/bin/bash
set -e
red=`tput setaf 1`
reset=`tput sgr0`

#check permission
[[ "$UID" -eq 0 ]] || exec sudo "$0" "$@"

printf "rm /usr/local/lib/lan-sync ... "
rm -r /usr/local/lib/lan-sync
printf "ok\n"


printf "rm /usr/local/etc/lan-sync.conf ... "
rm /usr/local/etc/lan-sync.conf
printf "ok\n"

printf "rm /usr/lib/systemd/system/lan-sync.service ..."
rm /usr/lib/systemd/system/lan-sync.service
printf "ok\n"


printf "lan-sync uninstall finish\n"











