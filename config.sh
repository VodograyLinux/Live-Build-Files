#! /bin/bash

lb config --distribution bullseye \
          --debian-installer live \
          --debian-installer-distribution bullseye \
          --debian-installer-gui false \
          --archive-areas "main contrib non-free" \
          --linux-packages linux-image-5.10.0-15 \
          --bootappend-live "boot=live components quiet hostname=vodogray username=strumochok user-fullname=Strumochok" \
          --debootstrap-options "--variant=minbase" \
          --initsystem systemd
