#!/bin/bash

# this upgrades Ubuntu from 19.04 to 19.10. You must do this before upgrading to 20.04 with the built-in do-upgrade-release command. 

new_sources="deb http://old-releases.ubuntu.com/ubuntu eoan main\n
deb http://old-releases.ubuntu.com/ubuntu eoan-updates main\n
deb http://old-releases.ubuntu.com/ubuntu eoan-security main"

echo "$new_sources" > /etc/apt/sources.list

sudo apt update
sudo apt upgrade
sudo apt dist-upgrade

# do-upgrade-release
