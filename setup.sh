#!/data/data/com.termux/files/usr/bin/bash
set -e
SRC="$PREFIX/etc/apt/sources.list.d/hdb.list"
mkdir -p "$(dirname "$SRC")"
echo "deb [trusted=yes] https://wakcvjb.github.io/termux-hdb-repo/ termux main" > "$SRC"
apt update -y 2>/dev/null || true
apt install -y hdb
echo done
