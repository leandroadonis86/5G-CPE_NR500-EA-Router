# Unisoc SDK rebuild v.1 for NR500-EA router device

This is a non-official Unisoc SDK toolchain library for cross-compile development.
It's a rebuild to improve and fix security issues for applications in the main OEM router firmware.
This can miss some library and give errors in compilation due to different version and may not be compatible,
 you may need to troubleshoot it.

Download available link: `https://files.fm/f/rs3dugng9x`

## Contents
"/unisoc-initgc/udx710-module+unisoc-initgc-1.0+202.../sysroot/aarch64-unisoc-linux" directory with library from router device.

"/unisoc-initgc/udx710-module+unisoc-initgc-1.0+202.../sysroot/x86_64-unisocsdk-linux" directory with library from host pc.


## Requirements
- Host PC with Ubuntu 20.04.6 LTS 64bit, Kernel linux 5.4.0-200-generic x86_64

- TFTP server installed on PC (tftpd-hpa)

- "root" user access


## Instalation
install the package (prefered):

`$: sudo apt install gcc make gcc-aarch64-linux-gnu binutils-aarch64-linux-gnu`

or execute:

`$: sudo chmod 777 unisoc-initgc-glibc-x86_64-unisoc-console-image-aarch64-toolchain-udx710-module+unisoc-initgc-1.0+20201024+userdebug+native.sh`

`$: ./unisoc-initgc-glibc-x86_64-unisoc-console-image-aarch64-toolchain-udx710-module+unisoc-initgc-1.0+20201024+userdebug+native.sh`

or manually copy "unisoc-initgc" folder to Host PC "/opt" and check all file permitions.


## Development
"Hello word" app:

- code in C like below

```
#include <stdio.h>
int main()
{
	printf("Hello World!\n");
	return 0;
}
```

- compile it

`:$ aarch64-linux-gnu-gcc -g helloworld.c -o helloworld-aarch64 -static`

- make it stripped

`:$ aarch64-linux-gnu-strip helloworld-aarch64`

or use Makefile\External sources (from CSDN suggested forum):

for exemple change "CMakelist.txt"

```
SET(CMAKE_C_COMPILER "/opt/unisoc-initgc/udx710-module+unisoc-initgc-1.0+20201024+userdebug+native/sysroots/x86_64-unisocsdk-linux/usr/bin/aarch64-linux-gnu-cpp-9") 
SET(CMAKE_CXX_COMPILER "/opt/unisoc-initgc/udx710-module+unisoc-initgc-1.0+20201024+userdebug+native/sysroots/x86_64-unisocsdk-linux/usr/bin/aarch64-linux-gnu-gcc-9")
SET(CMAKE_SYSROOT "/opt/unisoc-initgc/udx710-module+unisoc-initgc-1.0+20201024+userdebug+native/sysroots/aarch64-unisoc-linux")

include_directories(/opt/unisoc-initgc/udx710-module+unisoc-initgc-1.0+20201024+userdebug+native/sysroots/aarch64-unisoc-linux/usr/include) 
link_directories(/opt/unisoc-initgc/udx710-module+unisoc-initgc-1.0+20201024+userdebug+native/sysroots/aarch64-unisoc-linux/usr/lib)

SET(CMAKE_SYSROOT_LINK "/opt/unisoc-initgc/udx710-module+unisoc-initgc-1.0+20201024+userdebug+native/sysroots/aarch64-unisoc-linux/usr/lib")
SET(CMAKE_C_FLAGS "-I${INCLUDE_DIRECTORIES}")
SET(CMAKE_EXE_LINKER_FLAGS "-L${CMAKE_SYSROOT}/usr/lib --sysroot=${CMAKE_SYSROOT}")
```

`:$ make build`

`:$ cd build`

`:$ cmake ..`

`:$ make`

for example change "config.mk"
```
CC=aarch64-unisoc-linux-gcc
CXX=aarch64-unisoc-linux-g++

LDFLAGS+= -L/opt/unisoc-initgc/udx710-module+unisoc-initgc-1.0+20201024+userdebug+native/sysroots/aarch64-unisoc-linux/usr/lib/
LDFLAGS+= -L/opt/unisoc-initgc/udx710-module+unisoc-initgc-1.0+20201024+userdebug+native/sysroots/aarch64-unisoc-linux/lib/

CPPFLAGS+= -I/opt/unisoc-initgc/udx710-module+unisoc-initgc-1.0+20201024+userdebug+native/sysroots/aarch64-unisoc-linux/usr/include/
CPPFLAGS+= -I/home/user/
WITH_CJSON:=no
```

`:$ export DESTDIR=/home/user/mosquitto_install/`

`:$ make`

`:$ make install`


## Send and Execute on router
- connect router 192.168.188.1 to the PC 192.168.188.2 with Ethernet cable.

- start tftp server in the host PC

- place the compiled file "helloworld-aarch64" inside tftp folder on PC

- on router set RW mode for your partition

`:$ mount -o remount,rw /`

- on router home directory execute to import the file

`:$ tftp -g -r helloworld-aarch64 192.168.188.2`

- change permitions to 777

`:$ chmod 777 helloworld-aarch64`

- and execute by:

`:$ ./helloworld-aarch64`


## File compression compatible
- check the output file

`:$ file helloworld-aarch64`

- supported type of file in the Router

```
ELF 64-bit LSB executable, ARM aarch64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=..., for GNU/Linux 3.14.0, stripped
ELF 64-bit LSB executable, ARM aarch64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=..., for GNU/Linux 3.7.0, stripped
```

[END]
