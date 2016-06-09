#!/bin/bash
if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root" 1>&2
  su
  exit 0
fi

set -x

virsh start win10

if [[ $(virsh list | grep win10) == "" ]]
then
  exit 0
fi

set +x

exit 0
