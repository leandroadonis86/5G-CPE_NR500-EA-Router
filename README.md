# 5G-CPE_NR500-EA-Router
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

The software contains an operating system based on linux (Yocto) [https://www.yoctoproject.org/] distributed by Unisoc with some of the controllers that can be obtained and adapted from OpenWRT or CodeLinaro projects. In the same system  project presented, it can be seen that it was adapted from other similar routers such as those being distributed by Airtel and Unicom operators. For development in this environment and connection of the modules present in the device it was possibly develop with Qualcomm SDK and OpenQuectel base code. There are other drivers that need to be directly embedded into the system such as the AX88179A Gigabit Ethernet, Spreadtrum SC2730 or Qualcomm QCA6390 wifi. It has a customized integrated JBC system, JBoneOS from JBoneOS Cloud Technologies that limits access restrictions to internal commands or services, supervise and make stats of the entire ordering system. Some binary files were customized to work together with JBC, for ex. Jhttpd, Adbd, Telnet.

The hardware composition in this router PCB version NR500-WIFI6-V2.0 dated 2023/10/18 with outputs for two external TS-9 antennas, output for Ethernet and Telephone, USB Type C, battery connection connector and two outputs for SIM card is made up of the following integrated circuit components: On the front, Processor known as RG500U from Quectel, Built-in Quectel FC06E module similar to the Qualcomm module, ICS Logic Eutech EUP8202 controls battery charge located near the battery connector, Microsemi MSC Le6943 IC for SLIC telephone voice line, TDA L69BW protects the voltage on the telephone line, Macronix KH25L1606E FlashRom of 16Mb 64K each block, Globaltech_DS_GS339 Voltage comparator to indicate the battery level on front leds. On the back, no description chip possibly an 8-pin 12v to 5v voltage regulator and ASIX AX88179 Gigabit Ethernet Controller for USB 3.0. There are currently no drivers or fixes for the device software, contacting the manufacturer is not possible to correct previously announced security flaws. The only support available is on the (Quectel)[https://forums.quectel.com/tag/5g] forums, which they provide some useful applications and firmware for the modem. For this router the firmware available from Quectel it will remove some functions and modules, like wifi AP, due to be a standart version of the firmware. Router will no longer use Wifi and work only as a modem connected by USB although it will fix all the issues.

## Issues

There are some severe secure internet and Ethernet issues, as claimed on the medium forum. I will not dig on this topic, so here is the link you should be worried if you use this device. The purpose of this repository is to provide information necessary to make you able to fix it on your own.
https://github.com/advisories/GHSA-m584-rmpj-6q5p

## Access

There are few options to access for external and internal clients. 
- The SSH as referend in the "Issues" is the easiest access by just using a user login althouth is higly restricted access. 
- There is also Telnet access available to a restrinted running service JBoneOS with a simple admin menu to explore. 
- Router webpage with a root access providing more options like debug mode switch for wifi, debug on switch, usb switch mode. There is an AT Command webpage available to anyone also referend in "Issues". 
- Adbd service file is present on this router but is not possible to turn it on just using the AT command AT+QCFG because it's unavaible by default and it will bring settings back different from other firmware versions that was possible to switch abd on with a session token and was already configured in the system. I've looked and debuged the adbd service file, similar code to one available in CodeLinaro but it was customized by JBC when it was compiled, able to remove the "disable by jbc" and run the service althought it's unable to find any device to connect throw the listen 5555 port, still on WIP. 
- There is acessible UART on PCB for 1.8v with few available boot options and if device drivers are installed it's possible to connect on 4 COM ports for especific use or directly as a RDIS modem.
> [!NOTE]
> it's necessary to execute AT+QCFG: “usbnet” command and select the mode for your system to recognize the device via USB. Default configuration is for windows and device VID 0x2C7C and PID 0x0900.

On SSH session Anyone is able to print file content and inspect throw directories. 
- For vieweing directory contents typed: "cd" and press 2x tab. 
- For printing content file as ASCII use: printf "%b\n" "$(<testfile)"

For the admin access on SSH session it's able to use tools like:
- "vi" for editing and create files
- "hexdump" to print file content as binary, hex format
- "tftp" transfer files to a server
> [!NOTE]
> it's necessary to change the mount permissions to WR using command mount: "mount -o rw,remount /"

On Web http access with builtin ASP and nginx service, the REST get\post commands from the forms are hanble by customized jhttpd service. Jhttpd is responsable to receive the JSON requests "/goform/formJsonAjaxReq" and execute files in the usr/bin/ directory while JBC control and allow the MVC.

The Good News is iptables is available and running on the system. Admin can block any access permanently to local or from internet with specified rule.

## Tools
### Hardware

For Flashrom backup the device is compactible with CH341A MinProgrammer.

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
