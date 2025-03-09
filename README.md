# 5G-CPE_NR500-EA-Router
Fix, Debug, Access, Tools, Tests and more functionalities for this router.

SW, RG500UEAABxCOMSLICv3.4.2731.16.43
CPU, Unisoc UDX710 
Shell, Linux version 4.14.98 (jboneos@) (gcc version 9.3.0 (GCC))
OS release, unisoc-initgc-distro udx710-module+unisoc-initgc-1.0+W24.26.1:16.43.31+user+native (sumo)
JBC version, v3.4.2731.16.43
Quectel SDK version, quectel_RXX00U_sdk_03.001S09

## Disclaimer

The code and scripts provided herein are for informational and educational purposes only. 
By using this code, you acknowledge and agree to the following terms:
  1.Use at Your Own Risk: The authors and contributors of this code are not responsible for any damages, losses, or issues that may arise from its use. You use this code at your own risk.
  2.Outdated or Incompatible: The code may be outdated or incompatible with your specific version of software, device, or environment. It is your responsibility to ensure that the code is appropriate for your particular circumstances.
  3.Technical Knowledge Required: This code is intended for individuals with a reasonable level of technical knowledge. You should only use this code if you are confident in your ability to understand and troubleshoot any potential issues.
  4.No Assumption of Responsibility: The authors do not assume any responsibility for any consequences resulting from the use of this code, including but not limited to data loss, system failures, or any other damages.
By proceeding to use this code, you accept and agree to this disclaimer in its entirety.

## Router

The software contains an operating system based on linux Yocto distributed by Unisoc with some of the controllers that can be obtained and adapted from OpenWRT or CodeLinaro projects. In the same system  project presented, it can be seen that it was adapted from other similar routers such as those being distributed by Airtel and Unicom operators. For development in this environment and connection of the modules present in the device it was possibly necessary to use the Qualcomm SDK and OpenQuectel. There are other drivers that need to be directly embedded into the system such as the AX88179A Gigabit Ethernet, Spreadtrum SC2730 or Qualcomm QCA6390 wifi. It has a customized integrated JBC system, JBoneOS from JBoneOS Could Technologies that limits access restrictions to internal commands such as disabling services and controlling the entire ordering system via the router's web page.

The hardware composition in this router PCB version NR500-WIFI6-V2.0 dated 2023/10/18 with outputs for two external TS-9 antennas, output for Ethernet and Telephone, USB Type C, battery connection connector and two outputs for SIM card is made up of the following integrated circuit components: On the front, Processor known as RG500U from Quectel, Built-in Quectel FC06E module similar to the Qualcomm module, ICS Logic Eutech EUP8202 controls battery charge located near the battery connector, Microsemi MSC Le6943 IC for SLIC telephone voice line, TDA L69BW protects the voltage on the telephone line, Macronix KH25L1606E FlashRom of 16Mb 64K each block, Globaltech_DS_GS339 Voltage comparator to indicate the battery level on front leds. On the back, no description chip possibly an 8-pin 12v to 5v voltage regulator and ASIX AX88179 Gigabit Ethernet Controller for USB 3.0. There are currently no drivers or fixes for the device software, contacting the manufacturer is not possible to correct previously announced security flaws. The only support available is on the Quectel forums, which they provide some useful applications and firmware for the modem. For this router the firmware available from Quectel will remove some functions and modules like wifi due to be a standart version of the firmware.

## Issues

There are some severe secure internet and Ethernet issues, as claimed on the medium forum. I will not dig on these topics, so here is the link you should be worried if you use this device as the main router of your network. I hope in the future I will be able to help you fix it soon as possible that's the pourpose of this repository.
https://github.com/advisories/GHSA-m584-rmpj-6q5p

