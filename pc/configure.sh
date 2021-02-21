#!/bin/bash
route add default gw $2
route del default gw $1
macchanger -r eth0
