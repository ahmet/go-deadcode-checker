#!/bin/sh
set -eo pipefail

echo "[+] Start - deadcode"
deadcode $1
echo "[-] End - deadcode"
