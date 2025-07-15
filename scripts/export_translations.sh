#!/bin/bash

MODULE=$1
LANG="id_ID"  # Ganti ke kode bahasa yang diinginkan (misal: en_US)

if [ -z "$MODULE" ]; then
  echo "❌ Gunakan: ./export_translations.sh <nama_module>"
  exit 1
fi

echo "🌍 Mengekspor translation untuk module $MODULE..."
docker-compose exec odoo odoo -i "$MODULE" -d odoo --language="$LANG" --stop-after-init --load-language

echo "✅ Ekspor selesai. Cek folder i18n atau po file terkait."
