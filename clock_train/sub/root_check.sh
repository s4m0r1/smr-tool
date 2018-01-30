#!/bin/bash

if [ "`whoami`" != "root" ]; then
  echo "rootでこのスクリプトは動かしてください><"
  exit 1
fi

echo "Hello! root User!"
