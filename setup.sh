#!/bin/bash

# Switch to this script's directory
cd $(dirname "$0")

# Create the platform symlink
rm -f platform
if [ "$(uname -s)" == "Darwin" ]; then
    ln -s mac platform
else
    ln -s linux platform
fi
