# Ubuntu Touch for Google Pixel 4a

Building wiht LOS Kernel 22.2 and Halium 13.

## How to build

To manually build this project, follow these steps:

Needed manual changes to setup_repository.sh

Clang download from Lineage since r416183b is needed, official Android repo only has r416183d!

"https://github.com/LineageOS/android_prebuilts_clang_kernel_linux-x86_clang-r416183b" "lineage-20.0"

```bash
./build.sh -b builddir  # builddir is the name of the build directory
./build/prepare-fake-ota.sh out/device_sunfish.tar.xz ota
./build/system-image-from-ota.sh ota/ubuntu_command out
```
