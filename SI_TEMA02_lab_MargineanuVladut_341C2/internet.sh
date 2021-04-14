#!/bin/bash

sudo brctl addbr virbr0
sudo brctl addif virbr0 eth0
sudo ip address flush dev eth0
sudo dhclient virbr0
