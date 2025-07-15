#!/bin/bash

ODOO_CONTAINER="odoo-erp-template-odoo-1"
MODULE=$1

if [ -z "$MODULE" ]; then
  echo "❌ Gunakan: ./update_addons.sh nama_module"
  exit 1
fi

echo "🔄 Update module $MODULE..."
docker exec -it $ODOO_CONTAINER odoo -u $MODULE -d odoo --stop-after-init

echo "✅ Module $MODULE berhasil diupdate."
