#!/bin/bash

# === Konfigurasi ===
MODULES_DIR="../addons"
REPO_URL=$1

if [ -z "$REPO_URL" ]; then
  echo "❌ Gunakan: ./install_module.sh <repo_url>"
  exit 1
fi

MODULE_NAME=$(basename -s .git "$REPO_URL")
DEST="$MODULES_DIR/$MODULE_NAME"

if [ -d "$DEST" ]; then
  echo "⚠️ Module $MODULE_NAME sudah ada di $DEST. Hapus dulu jika ingin install ulang."
  exit 1
fi

echo "🔽 Meng-clone $REPO_URL ke $DEST"
git clone "$REPO_URL" "$DEST"

echo "✅ Module $MODULE_NAME berhasil di-clone."
