# 5G-CPE NR500-EA Router
Fix, Debug, Access, Tools, Tests and more functionalities for this router.

+ Quectel SDK version, quectel_RXX00U_sdk_03.001S09
+ CPU, Unisoc UDX710 
+ Shell, Linux version 4.14.98 (jboneos@) (gcc version 9.3.0 (GCC))

---

+ SW, RG500UEAABxCOMSLICv3.4.2731.16.43
+ OS release, unisoc-initgc-distro udx710-module+unisoc-initgc-1.0+W24.26.1:16.43.31+user+native (sumo)
+ JBC version, v3.4.2731.16.43
  
---

+ SW, RG500UEAABxCOMSLICv3.3.2634.16.16
+ OS release, unisoc-initgc-distro udx710-module+unisoc-initgc-1.0+W24.12.2:16.16.53+user+native (sumo)
+ JBC version, v3.3.2634.16.16

---

+ SW, RG500UEAABxISPv3.2.2543.13.41
+ OS release, unisoc-initgc-distro udx710-module+unisoc-initgc-1.0+W23.51.2:13.41.02+user+native (sumo)
+ JBC version, v3.2.2543.13.41

---

+ SW, RG500UEAABxCOMSLICv3.2.2543.12.18
+ OS release, unisoc-initgc-distro udx710-module+unisoc-initgc-1.0+W23.51.2:12.18.47+user+native (sumo)
+ JBC version, v3.2.2543.12.18

```
,-------------------------------------------------------------,
| RG500UEAABxCOMSLICv3.4.2731.16.43                           |
|--------+--------+---------+-------+-------+-----------------|
| RG500U |   EA   |   ABx   |  COM  | SLIC  | v3.4.2731.16.43 |
|--------+--------+---------+-------+-------+-----------------|
|  CPU   | Region |  Extra  | Modem | Phone |    SW version   |
|        |        | (A/B/x) |   ?   |       |                 |
| TYPE:U | EMEA & |         |  YES  |  YES  | JBC, JBoneCloud |
|        | APAC   |  A + B  |       |       |                 |
'--------+--------+---------+-------+-------+-----------------'
Region, E: EMEA (Europe, Middle East, and Africa) and A: APAC (Asia-Pacific)
Extra, A: included, B: included, C: not included
```

## Disclaimer

The code and scripts provided herein are for educational purposes only. By using this code, you acknowledge and agree to the following terms:
  1. Use at Your Own Risk: The authors and contributors of this code are not responsible for any damages, losses, or issues that may arise from its use. You use this code at your own risk.
  2. Outdated or Incompatible: The code may be outdated or incompatible with your specific version of software, device, or environment. It is your responsibility to ensure that the code is appropriate for your particular circumstances.
  3. Technical Knowledge Required: This code is intended for individuals with a reasonable level of technical knowledge. You should only use this code if you are confident in your ability to understand and troubleshoot any potential issues.
  4. No Assumption of Responsibility: The authors do not assume any responsibility for any consequences resulting from the use of this code, including but not limited to data loss, system failures, or any other damages.

By proceeding to use this code, you accept and agree to this disclaimer in its entirety.

If you need any information or help just create a "Issue" refering this project with label "Help wanted". I might have more information updated particulary focus in your issue than this general topics readme text.

## Router

The software contains an operative system based on linux (Yocto) [https://github.com/96boards/oe-rpb-manifest] distributed by Unisoc with some controllers that can be adapted from OpenWRT or (CodeLinaro) [https://git.codelinaro.org/explore/] projects. This presented system can be seen from other similar routers such as those being distributed by Airtel and Unicom operators. For development modules Qualcomm SDK and OpenQuectel base code may be used. There are other drivers that need to be directly embedded into the system such as the AX88179A Gigabit Ethernet, Spreadtrum SC2730 or Qualcomm QCA6390 wifi. It has a customized integrated JBC system, JBoneOS from JBoneOS Cloud Technologies that limits access restrictions to internal commands or services, supervise and make stats of the entire ordering system. Some binary files were customized to work together with JBC, for ex. Jhttpd, Adbd, Telnet.

The hardware interface on PCB version NR500-WIFI6-V2.0 dated 2023/10/18 is composed with two external TS-9 antennas outputs, Ethernet, Phone line (SLIC), USB Type C, battery connector and two inputs for SIM card. PCB is also made up of the following integrated circuit components in the section "Electronics" below. 

### Electronics

![alt text](https://github.com/leandroadonis86/5G-CPE_NR500-EA-Router/blob/main/PCB_design.png?raw=true)

#### On the front, 
- Processor RG500U-EA, from Quectel,
- Built-in Quectel FC06E module, similar to the Qualcomm QCA6390 module,
- ICS Logic Eutech EUP8202, controls battery charge located near the battery connector,
- Microsemi MSC Le6943 IC, for SLIC phone line,
- TDA L69BW, protects voltage on the phone line,
- Macronix KH25L1606E FlashRom, of 16Mb 64K each block,
- Globaltech_DS_GS339 Voltage comparator, indicate the battery level on front leds,
- BCT4221A USB2.0/3.0 Hi-Speed Switches, near USBc connector.

RG500U-EA include one SPREADTRUM chip UDX710 with Dual-core ARM Cortex-A55 processor Core Embedded, up to 1.35GHz. Recommended toolchain use ARMv8.2-A 64bit (aarch64) for UNISOC SC9863A.

#### On the back, 
- chip 8-pin 12v to 5v voltage regulator, for 7.4v Li-on batery,
- ASIX AX88179 Gigabit Ethernet Controller, for USB 3.0.

#### Functionalities,
- Router Web interface: `http://192.168.188.1/home.asp`
- Access to AT Commands: `http://192.168.188.1/at_command.asp`
- Change device IMEI: `http://192.168.188.1/deviceimei.asp`

### Upgrade
Currently, there's no firmware upgrade or fixes and contacting the manufacturer they will not answer so is not possible to fix previously announced security flaws. The only support available is on the (Quectel)[https://forums.quectel.com/tag/5g] forums, which they provide some useful applications and firmware for the modem. For this router the firmware available from Quectel remove some functions and modules, like wifi AP, due to be a standart version of the firmware. Router will no longer use Wifi and work only as a modem connected by USB although it will fix all the issues.

## Issues

### Vulnerability
There are some severe insecure internet and Ethernet issues, as claimed on the medium forum. I will not dig in this topic, so here is the link you should be worried if you use this device. The purpose of this repository is to provide information to make anyone able to fix it on their own.

https://github.com/advisories/GHSA-m584-rmpj-6q5p

### Troubleshooting

Device keeps rebooting or sets to default manufacture configuration and you don't know why?

- 1st this device does not reboot or change configuration by itself, someone did it.
- Check "Vulnerability" to see the cause.
- Block all external unkwon access to the router access with `iptables`.


Internet keeps losing connection and is not antenna signal?

- Check if SIM card option in Router webpage is locked to the inserted SIM port.
- Use manual settings and lock to the best Antenna and Band in Router webpage.


No Wifi? 

- Probability pcie bug or wifi faulty, internal driver malfuction. Have a look on `dmesg` of device.

Any of this errors on the list? 
```
c0 cnss: wlan en pin is not supported
```

Any device on `lspci` in your router device?
```
01:00.0 Class 0280: 17cb:1103
00:00.0 Class 0604: 16c3:abcd
```
 - `01:00.0 Class 0280: 17cb:1103` refer to "QCNFA765 Wireless Network Adapter" 
 - `00:00.0 Class 0604: 16c3:abcd` refer to "Synopsys, Inc. HAPS USB3 xHCI controller (DWC_usb3) / PCIe bridge"


No Ethernet?

1. Enable "USB Device" switch at "Engineering Setting" tab will disable Ethernet by default. (NOT RECOMMENED TO TURN IT ON)
2. Sometimes needs physical Reset button to be pressed to get it work.


No 5g internet?

1. Sim card not compactible.
2. No 5G signal. Check using AT command for ex. `AT+QENG=“servingcell”`
3. Operator service not allowing.
4. Use manual AT command to setup your specific network.


No USB device?

1. Check device drivers for your current system.
2. Enter the Router webpage as root and enable "USB Device" option switch at "Engineering Setting".
3. Make sure using the correct mode on `AT+QCFG=“usbnet”,(3,5)` for your current system. Windows: `3` = RNDIS mode, Linux: `5` = NCM mode.


## Access

There are few options to access for external and internal clients. 
- The `SSH` as referend in the "Issues" is the easiest access by using a user login althouth is highly restricted access. 
- There is also `Telnet` access available to a restricted running service JBoneOS with simple admin menu.
```
JBoneOS Telnetd : Release 1.2.0
usage: help
JBoneOS > help

	#ifconfig [-a] 
	#iwpriv 
	#ping 
	#cpuinfo
	#lsusb
	#meminfo
	#wdt_test 
	#dmesg
	#diskinfo
	#get_mac
	#set_mac=74F8DBXXXXXX
	#slic_enable
	#slic_disable
	#slic_info
	#quit

JBoneOS >
``` 
- Router `http:\\` webpage with a root access providing more options like debug mode switch for wifi, debug on switch, usb switch mode. There is an "AT Command" webpage available to anyone `http://192.168.188.1/at_command.asp`. 
- It's also possible to send "AT Command" over SSH using `echo "AT" > /dev/smd1` but before it's necessary to `cat /dev/smd1` to see the full output while sending commands in a different window.
- Adbd service file is present on this router but is not possible to turn it on just using the AT command `AT+QCFG="usbcfg",0x2c7c,0x0900,1,1,1,1,1,1,1` because it's unavaible by default and it will bring settings back. Different from other firmware versions that was possible to switch abd on with a session token and was already configured in the system. I've looked and debuged the adbd service file, similar code to one available in CodeLinaro but it was customized by JBC when it was compiled, able to remove the `disable by jbc` and run the service althought it's unable to find any device to connect over the listen 5555 port, `netstat` did not show any open 5555 port either, still on WIP. 
- There is accessible UART on PCB for 1.8v with few available boot options and if device drivers are installed it's possible to connect on 4 COM ports for specific use and 1 Modem device for directly as a RNDIS modem.
> [!NOTE]
> it's necessary to execute `AT+QCFG=“usbnet”` At command and select the mode for operative system you use to recognize device via USB. Default configuration is for windows, device describe as `VID:0x2C7C PID:0x0900`.

On SSH session anyone is able to print file content and inspect inside of directories. 
- For vieweing directory contents type: `cd` press `[space]` and press `[tab]` `[tab]`. 
- For printing content file as ASCII use: `printf "%b\n" "$(<testfile)"`

For the admin access on SSH session it's able to use tools like:
- `vi` for editing and create files
- `hexdump` to print file content as binary, hex format
  
  Prefered: `hexdump -vC file`

- `tftp` transfer files to a server
  
  PC host as server: `sudo apt-get install tftpd-hpa`
	```
	:$ cat /etc/default/tftpd-hpa 
	# /etc/default/tftpd-hpa
	
	TFTP_USERNAME="tftp"
	TFTP_DIRECTORY="/home/pc/tftp"
	TFTP_ADDRESS="0.0.0.0:69"
	TFTP_OPTIONS="--create --secure"
	```
  
  Router client shell: `tftp -g -r getfile.txt 192.168.188.2` or `tftp -p -l putfile.txt 192.168.188.2`

  
> [!NOTE]
> it's necessary to change the mount permissions to WR using command mount:
> `mount -o rw,remount /`

On Web http access with builtin ASP and nginx service, the REST get\post commands from the forms are handle by customized jhttpd service. Jhttpd is responsable to receive the JSON requests `/goform/formJsonAjaxReq` and execute files in the `usr/bin/` directory while JBC control and allow the MVC. Some commands are `fwport_list`, `macacl_list`, `jbc_data`, `data_info`, `device_list`, `network_info`, `data_setting_info`, `misc_info`, `top_info` and response can be obtain by using Postman. A raw JSON package below is an example how to get or post.

Example 1 GET:
```
{
    "action":"fwport_list"
}
``` 

Example 2 POST:
```
{
     "action":"set_debug",
     "data":{
	"enable":1
	}
}
```


The Good News is iptables, it's available and running. Admin can block any access permanently to local or internet with specified rule over shell.

## Recommendations

1. Use Ethernet cable instead of USB Cable connection to perform any administration.
2. Do not perform hard reset device button with Usb cable pluged in.
3. Enable "USB Device" option at Router's page may damage device if using long term, device is using old drivers.
4. When perform hard reset it only needs 8 seconds.
5. Connect any cable after Wifi led turn ON unless for sys spreadtrum backups.
6. WPS is bugged not working properly, avoid pressing the button.

## Development
One way easy to build an executable to run it on router is using the cross-compile option. Device system doesn't have any gcc toolchain to compile C however it runs files detailed like below:
```
ELF 64-bit LSB executable, ARM aarch64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=..., for GNU/Linux 3.14.0, stripped
ELF 64-bit LSB executable, ARM aarch64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=..., for GNU/Linux 3.7.0, stripped
```


How to make and run your own "Hello world!"?
1. For linux* users first install the package: 
```
:$ sudo apt install gcc make gcc-aarch64-linux-gnu binutils-aarch64-linux-gnu
```
*System used (Ubuntu 20.04.6 LTS 64bit, Kernel linux 5.4.0-200-generic x86_64)

2. Code C:
```
#include <stdio.h>
int main()
{
	printf("Hello World!\n");
	return 0;
}
```

3. Compile the C source and make it stripped:
```
:$ aarch64-linux-gnu-gcc -g helloworld.c -o helloworld-aarch64 -static
:$ aarch64-linux-gnu-strip helloworld-aarch64
```

4. Connect Router (192.168.188.1) to the Host (192.168.188.2) with Ethernet Cable.
5. Start TFTP Host service and allow pass by firewall if any.
6. Place file `helloworld-aarch64` inside TFTP folder of the host server service is listening.
7. With Router root creditial execute command to import file from the host to router with: `:$ tftp -g -r helloworld-aarch64 192.168.188.2`
8. Change permitions `:$ chmod 777 helloworld-aarch64` and Execute it by: `:$ ./helloworld-aarch64`.


## Tools
- ### Hardware
Ethernet Cable (prefered)

USB-C to USB-A Data cable (prefered)

USB-C to USB-C Data cable

#### Device: 
CH341A MinProgrammer

- ### Software
#### Linux: 
GHidra v.11.3, Postman v.11.35, Wireshark, Flashroom v.1.5.0, Binwalk v.2.2.0, Pacextractor, Jefferson

#### Windows: 
QCOM v.1.8, SPD Download R.27, Platform ADB




