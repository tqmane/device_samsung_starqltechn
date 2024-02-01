#!/bin/bash

echo 'Starting Cloning repos for starqltechn'
echo 'Cloning Kernel tree [1/6]'
# Kernel for sdm845
if [ ! -d "kernel/samsung/sdm845" ]; then
    git clone https://github.com/tamanegi-mogumogu/android_kernel_samsung_sdm845 -b fourteen kernel/samsung/sdm845
fi

echo 'Cloning Hardware Samsung [5/6]'
# Hardware OSS parts for Samsung
mv hardware/samsung/nfc .
rm -rf hardware/samsung
git clone https://github.com/LineageOS/android_hardware_samsung.git -b lineage-20 hardware/samsung
mv nfc hardware/samsung