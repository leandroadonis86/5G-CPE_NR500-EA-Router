# 5G-CPE NR500-EA Router
Fix, Debug, Access, Tools, Tests and more functionalities for this router.

+ SW, RG500UEAABxCOMSLICv3.4.2731.16.43
+ CPU, Unisoc UDX710 
+ Shell, Linux version 4.14.98 (jboneos@) (gcc version 9.3.0 (GCC))
+ OS release, unisoc-initgc-distro udx710-module+unisoc-initgc-1.0+W24.26.1:16.43.31+user+native (sumo)
+ JBC version, v3.4.2731.16.43
+ Quectel SDK version, quectel_RXX00U_sdk_03.001S09

## Disclaimer

The code and scripts provided herein are for educational purposes only. By using this code, you acknowledge and agree to the following terms:
  1. Use at Your Own Risk: The authors and contributors of this code are not responsible for any damages, losses, or issues that may arise from its use. You use this code at your own risk.
  2. Outdated or Incompatible: The code may be outdated or incompatible with your specific version of software, device, or environment. It is your responsibility to ensure that the code is appropriate for your particular circumstances.
  3. Technical Knowledge Required: This code is intended for individuals with a reasonable level of technical knowledge. You should only use this code if you are confident in your ability to understand and troubleshoot any potential issues.
  4. No Assumption of Responsibility: The authors do not assume any responsibility for any consequences resulting from the use of this code, including but not limited to data loss, system failures, or any other damages.

By proceeding to use this code, you accept and agree to this disclaimer in its entirety.

## Router

The software contains an operative system based on linux (Yocto) [https://www.yoctoproject.org/] distributed by Unisoc with some controllers that can be adapted from OpenWRT or (CodeLinaro)[https://git.codelinaro.org/explore/] projects. This presented system can be seen from other similar routers such as those being distributed by Airtel and Unicom operators. For development modules Qualcomm SDK and OpenQuectel base code may be used. There are other drivers that need to be directly embedded into the system such as the AX88179A Gigabit Ethernet, Spreadtrum SC2730 or Qualcomm QCA6390 wifi. It has a customized integrated JBC system, JBoneOS from JBoneOS Cloud Technologies that limits access restrictions to internal commands or services, supervise and make stats of the entire ordering system. Some binary files were customized to work together with JBC, for ex. Jhttpd, Adbd, Telnet.

The hardware on PCB version NR500-WIFI6-V2.0 dated 2023/10/18 is composed with two external TS-9 antennas outputs, output for Ethernet and Telephone, USB Type C, battery connector and two inputs for SIM card is made up of the following integrated circuit components: 

### Electronics

#### On the front, 
- Processor RG500U-EA, from Quectel,
- Built-in Quectel FC06E module, similar to the Qualcomm QCA6390 module,
- ICS Logic Eutech EUP8202, controls battery charge located near the battery connector,
- Microsemi MSC Le6943 IC, for SLIC phone line,
- TDA L69BW, protects voltage on the phone line,
- Macronix KH25L1606E FlashRom, of 16Mb 64K each block,
- Globaltech_DS_GS339 Voltage comparator, indicate the battery level on front leds.

#### On the back, 
- chip 8-pin 12v to 5v voltage regulator, for 7.4v Li-on batery,
- ASIX AX88179 Gigabit Ethernet Controller, for USB 3.0.

### Upgrade
Currently, there's no firmware upgrade or fixes and contacting the manufacturer they will not answer so is not possible to fix previously announced security flaws. The only support available is on the (Quectel)[https://forums.quectel.com/tag/5g] forums, which they provide some useful applications and firmware for the modem. For this router the firmware available from Quectel remove some functions and modules, like wifi AP, due to be a standart version of the firmware. Router will no longer use Wifi and work only as a modem connected by USB although it will fix all the issues.

## Issues

### Vulnerability
There are some severe insecure internet and Ethernet issues, as claimed on the medium forum. I will not dig in this topic, so here is the link you should be worried if you use this device. The purpose of this repository is to provide information to make anyone able to fix it on their own.
https://github.com/advisories/GHSA-m584-rmpj-6q5p

### Hardware
Keeps rebooting and you don't why? 
Check Vulnerability section 1st.

### Software
- No Wifi? 
Probablity pcie bug or wifi faulty. Have a look on `dmesg`.
Any of this errors on the list? 
`c0 cnss: wlan en pin is not supported`

Any device on `lspci` ?
```
01:00.0 Class 0280: 17cb:1103
00:00.0 Class 0604: 16c3:abcd
```
...

- No 5g internet?
...

- No USB device?
...

- No Ethernet?
... reset

## Access

There are few options to access for external and internal clients. 
- The `SSH` as referend in the "Issues" is the easiest access by using a user login althouth is highly restricted access. 
- There is also `Telnet` access available to a restricted running service JBoneOS with simple admin menu. 
- Router `http:\\` webpage with a root access providing more options like debug mode switch for wifi, debug on switch, usb switch mode. There is an "AT Command" webpage available to anyone also referend in "Issues". 
- Adbd service file is present on this router but is not possible to turn it on just using the AT command `AT+QCFG` because it's unavaible by default and it will bring settings back. Different from other firmware versions that was possible to switch abd on with a session token and was already configured in the system. I've looked and debuged the adbd service file, similar code to one available in CodeLinaro but it was customized by JBC when it was compiled, able to remove the `disable by jbc` and run the service althought it's unable to find any device to connect throw the listen 5555 port, still on WIP. 
- There is accessible UART on PCB for 1.8v with few available boot options and if device drivers are installed it's possible to connect on 4 COM ports for specific use or directly as a RNDIS modem.
> [!NOTE]
> it's necessary to execute `AT+QCFG:“usbnet”` command and select the mode for your system to recognize device via USB. Default configuration is for windows, device with `VID:0x2C7C PID:0x0900`.

On SSH session Anyone is able to print file content and inspect throw directories. 
- For vieweing directory contents type: `cd` and press 2x tab. 
- For printing content file as ASCII use: `printf "%b\n" "$(<testfile)"`

For the admin access on SSH session it's able to use tools like:
- `vi` for editing and create files
- `hexdump` to print file content as binary, hex format
- `tftp` transfer files to a server
> [!NOTE]
> it's necessary to change the mount permissions to WR using command mount: `mount -o rw,remount /`

On Web http access with builtin ASP and nginx service, the REST get\post commands from the forms are handle by customized jhttpd service. Jhttpd is responsable to receive the JSON requests `/goform/formJsonAjaxReq` and execute files in the `usr/bin/` directory while JBC control and allow the MVC.

The Good News is iptables, it's available and running. Admin can block any access permanently to local or internet with specified rule.

## Tools
### Hardware
compactible with:
- CH341A MinProgrammer.

### Software
Linux:
- GHidra v.11.3
- Postman v.11.35
- Flashroom v.1.5.0
- Binwalk v.2.2.0
- Pacextractor
- Jefferson

Windows:
- QCOM v.1.8
- SPD Download R.27
- Platform ADB
