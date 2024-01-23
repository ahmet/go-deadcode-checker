#!/bin/sh
set -eo pipefail

echo "[+] Start - deadcode"
# reasoning for evaluating output for the time being: https://github.com/golang/go/issues/64713
deadcode $1 | tee out && [ ! -s out ]
echo "[-] End - deadcode"
