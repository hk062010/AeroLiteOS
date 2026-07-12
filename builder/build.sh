#!/bin/bash

clear

ROOT="$(cd "$(dirname "$0")/.." && pwd)"

echo "========================================"
echo "        AeroLite Build Engine"
echo "========================================"

echo
echo "Project Root: $ROOT"

if [ -f "$ROOT/config/system.conf" ]; then
    echo "[OK] Configuration found"
    source "$ROOT/config/system.conf"
else
    echo "[ERROR] config/system.conf not found"
    exit 1
fi

echo
echo "OS Name   : $NAME"
echo "Version   : $VERSION"
echo "Desktop   : $DE"
echo "Base      : $DISTRO"

echo
echo "Checking project folders..."

for dir in branding themes icons wallpapers packages installer iso apps
do
    if [ -d "$ROOT/$dir" ]; then
        echo "✔ $dir"
    else
        echo "✖ Missing $dir"
    fi
done

echo
echo "AeroLite Build Engine initialized successfully."
