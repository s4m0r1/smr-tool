#!/bin/bash

echo "NTPのインストール確認をします"
sleep 2

LOCK_FILE="/etc/ntp.conf"

if [ -f ${LOCK_FILE} ]; then
  echo "インストールされています"
else
  echo "インストールされていません"
fi
