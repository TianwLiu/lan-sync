lan-sync
======================================
This is a service that sync the files of lan-host 
to the current host.

## INSTALL 
This will only install necessary service files. How to enable service, refer to
**Enable**.

```
./install.sh
```


## UNINSTALL

```
./uninstall.sh
```
Manually unistall may want to del following files(default install):

1. /etc/lan-sync.conf or /usr/local/etc/lan-sync.conf  
2. /usr/lib/lan-sync or /usr/local/lib/lan-sync  
3. /usr/lib/systemd/system/lan-sync.service

## Enable serivce 
```
systemd enable lan-sync
```
Other commands about how to handle service 
refer to [systemd](https://wiki.archlinux.org/index.php/systemd). 

## Config
The default config is /etc/lan-sync.conf or /usr/local/etc/lan-sync.conf.
Please refer to configuer file.




