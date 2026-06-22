#!/bin/bash
# November 16th - libbpf got updated and broke the lab. bcc tools won't work unless libbpf is updated.
# Unregister and register the VM
subscription-manager clean
subscription-manager register --activationkey=12-5-22-instruqt --org=12451665 --force

dnf update -y libbpf

