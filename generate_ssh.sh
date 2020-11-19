#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Usage: ./generate_ssh.sh [rsa or ed]"
  exit 1
fi

if [ "ed" = $1 ]; then
  ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519.`date '+%Y-%m-%d-%H:%M:%S'` -C "$USER-`date '+%Y-%m-%d'`"
elif [ "rsa" = $1 ]; then
  ssh-keygen -b 4096 -t rsa -f ~/.ssh/id_rsa.`date '+%Y-%m-%d-%H:%M:%S'` -C "$USER-`date '+%Y-%m-%d'`"
else
  echo "Usage: ./generate_ssh.sh [rsa or ed]"
  exit 1
fi
