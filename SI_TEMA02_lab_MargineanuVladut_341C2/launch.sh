#!/bin/bash

sudo qemu-system-arm -machine versatilepb -cpu arm1176 -kernel zImage -append 'root=/dev/sda rw' -drive file=rpi-basic-image-raspberrypi.ext3,index=0,media=disk,format=raw -net nic,model=smc91c111,netdev=bridge -netdev bridge,br=virbr0,id=bridge -serial stdio
