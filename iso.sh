#!/bin/sh
set -e
. ./build.sh
 
mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub
 
cp sysroot/boot/dfcos.kernel isodir/boot/dfcos.kernel
cat > isodir/boot/grub/grub.cfg << EOF
menuentry "dfcos" {
	multiboot /boot/dfcos.kernel
}
EOF
grub-mkrescue -o dfcos.iso isodir
