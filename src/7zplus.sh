#!/bin/bash

# This script wraps 7z to easy use.

# Usage: 7zplus.sh [options] [files] [directory]
# Options:
#   -h, --help: show this help message and exit
#   -x, --extract: extract files from archive

# Author: kizero.yoon

# Read options
while [ $# -gt 0 ]; do
    case "$1" in
        -h|--help)
            echo "Usage: 7zplus.sh [options] [files] [directory]"
            echo "Options:"
            echo "  -h, --help: show this help message and exit"
            echo "  -x, --extract: extract files from archive"
            exit 0
            ;;
        -x|--extract)
            extract=1
            ;;
        *)
            break
            ;;
    esac
    shift
done

# extract files from archive to directory
if [ $extract ]; then
    if [ $# -lt 2 ]; then
        echo "Usage: 7zplus.sh [options] [files] [directory]"
        exit 1
    fi
    if [ ! -d "$2" ]; then
        mkdir -p "$2"
    fi
    7z x "$1" -o"$2"
    exit 0
fi