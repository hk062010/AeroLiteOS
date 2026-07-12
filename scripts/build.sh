#!/bin/bash

echo "==========================="
echo " AeroLite OS Build System"
echo "==========================="

echo "Version:"
cat ../VERSION

echo ""
echo "Checking folders..."

folders=(
branding
themes
icons
wallpapers
packages
installer
iso
)

for folder in "${folders[@]}"
do
    if [ -d "../$folder" ]; then
        echo "[OK] $folder"
    else
        echo "[ERROR] Missing $folder"
    fi
done

echo ""
echo "Build system ready."
