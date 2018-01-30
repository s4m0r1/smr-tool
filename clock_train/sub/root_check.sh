#!/bin/bash

if [ "`whoami`" != "root" ]; then
  echo "Require root privilege"
  exit 1
fi

echo "Hello! root User!"
