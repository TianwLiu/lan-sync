#!/bin/bash
set -e
red=`tput setaf 1`
reset=`tput sgr0`

#check permission
[[ "$UID" -eq 0 ]] || exec sudo "$0" "$@"

#check dependencies
printf "dependencies checking ...\n"
if ! systemctl --version &>> /dev/null;then
	printf "${red}Error:${reset}systemd required but not installed\n"
	exit 1
fi

mkdir -p /usr/local/lib/lan-sync
mkdir -p /usr/local/etc/

printf "cp lan-sync -> /usr/local/lib/lan-sync ... "
cp lan-sync /usr/local/lib/lan-sync
printf "ok\n"

printf "cp sync-unit /usr/local/lib/lan-sync ... "
cp sync-unit /usr/local/lib/lan-sync
printf "ok\n"

printf "cp lan-sync.conf -> /usr/local/etc ... "
cp lan-sync.conf /usr/local/etc
printf "ok\n"

printf "cp lan-sync.service -> /usr/lib/systemd/system ..."
cp lan-sync.service /usr/lib/systemd/system
printf "ok\n"


printf "lan-sync install finish\n"











