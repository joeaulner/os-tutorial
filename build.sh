#!/bin/bash


set -e
echo --Compiling boot loader--
nasm -f bin bootloader/Boot1.asm -o bootloader/bin/Boot1.bin

echo --Copying to raw image--
dd if=bootloader/bin/Boot1.bin count=1b of=bin/custom-os.raw

set +e
echo --Removing previous virtual machine--
VBoxManage unregistervm "Custom OS" --delete
rm bin/custom-os.vmdk

echo --Creating new virtual machine disk from raw image--
VBoxManage convertdd bin/custom-os.raw bin/custom-os.vmdk --format VMDK --uuid {3b639566-0b61-4fb7-8569-3daca1ae448e}
