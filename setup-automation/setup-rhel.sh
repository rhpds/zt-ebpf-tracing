#!/bin/bash
while [ ! -f /opt/instruqt/bootstrap/host-bootstrap-completed ]
do
   echo "Waiting for Instruqt to finish booting the VM"
   sleep 1
done

subscription-manager config --rhsm.manage_repos=1
subscription-manager register --activationkey=${ACTIVATION_KEY} --org=12451665 --force

# November 16th - libbpf got updated and broke the lab. bcc tools won't work unless libbpf is updated.
dnf update -y libbpf

# December 16th - Switching over to the rhel 9 image. Need to install tmux.
dnf install -y tmux
