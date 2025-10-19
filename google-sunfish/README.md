# Ubuntu Touch for Google Pixel 4a

Building wiht LOS Kernel 22.2 and Halium 13.

## How to build

To manually build this project, follow these steps:


just learned this is the Android 12 build toolchain

deviceinfo_kernel_clang_branch="android12L-gsi"
deviceinfo_kernel_clang_revision="r416183b"

Right Toolchain can be found in build.config.common of the Kernel source


```bash
./build.sh -b builddir  # builddir is the name of the build directory
./build/prepare-fake-ota.sh out/device_sunfish.tar.xz ota
./build/system-image-from-ota.sh ota/ubuntu_command out
```

Installation:

Make sure you are in fastbootd mode

fastboot set-active other (to switch the slots)

To make sure to flash to slot a use:

fastboot flash boot_a boot.img
run delete partitions shell (this is needed since the logical partitions are using space needed for system.img)
fastboot flash system_a system.img