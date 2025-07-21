#!/bin/bash

curl -fsSL https://enterprise.proxmox.com/iso/proxmox-ve_8.4-1.iso /iso/proxmox.iso

proxmox-auto-install-assistant prepare-iso /iso/proxmox.iso --fetch-from iso --answer-file /iso/answer.toml

rm -r /iso/proxmox.iso