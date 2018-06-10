#!/bin/bash

set -e

echo "Please run openocd in another terminal window (you might need sudo)"
echo ""

# https://stackoverflow.com/questions/3466166/how-to-check-if-running-in-cygwin-mac-or-linux
unameOut="$(uname -s)"
case "${unameOut}" in
    # Linux*)     machine=Linux;;
    Darwin*)    arm-none-eabi-gdb-py -iex 'add-auto-load-safe-path .' $1;;
    *)          arm-none-eabi-gdb -iex 'add-auto-load-safe-path .' $1
esac
