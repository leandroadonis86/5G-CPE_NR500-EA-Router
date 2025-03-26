# Webpage

The router webpage structure is structured by 2 webpages in the same link. The main page .asp as example: `http://192.168.188.1/home.asp` and one in .html sub-webpage `#page/jbc-deviceinfo`.
There are many sub-webpage varients I will leave a list of the hidden ones down below for your interest. 

`jbc-24g-adv` `jbc-58g-adv` `jbc-ant_switch` `jbc-clientlist` `jbc-cloud` `jbc-data` `jbc-data_setting` `jbc-debug` `jbc-dmz` `jbc-faq` `jbc-guard-device` `jbc-guard-port` `jbc-guard-time` `jbc-internet` `jbc-lab` `jbc-misc` `jbc-mwan` `jbc-online` `jbc-port` `jbc-rj45` `jbc-ussd` `treeview`

There are other few working .asp webpages that may damage device with wrong use.

In this router it is possible to make visible hidden debug menus with an embedded account "root" added by manufactory such as "Engineering Setting" menu. This account unfortually is available in all devices and the password can only be changed by modifying the jbc_settings.ini file with root access in shell.

![login as root](https://github.com/leandroadonis86/5G-CPE_NR500-EA-Router/blob/main/Secrets/Webpage/login_asroot.png)

On version v3.4.2731.16.43 there are one more switch "Wifi debug Switch" compared with older v3.2 that will only include "Debug Switch" and "USB device". 
"USB device" option allow router to be accessed by 4 COM Ports in the system acting like a regular direct modem and simultaneously It will disable the Ethernet access.

[http://192.168.188.1/home.asp#page/jbc-debug](http://192.168.188.1/home.asp#page/jbc-debug)
![engineering setting](https://github.com/leandroadonis86/5G-CPE_NR500-EA-Router/blob/main/Secrets/Webpage/engineering_setting.png)


