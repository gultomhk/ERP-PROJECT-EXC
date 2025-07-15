#!/bin/bash

MODULE=$1
LANG="id_ID"

if [ -z "$MODULE" ]; then
  echo "❌ Gunakan: ./import_translations.sh <nama_module>"
  exit 1
fi

echo "🌍 Mengimpor translation untuk $MODULE..."
docker-compose exec odoo odoo --load-language="$LANG" -d odoo -u "$MODULE" --stop-after-init

echo "✅ Import translation selesai."
