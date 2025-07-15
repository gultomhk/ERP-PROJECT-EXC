#!/bin/bash

# === Konfigurasi ===
DB_NAME="odoo"
DB_USER="odoo"
PG_CONTAINER="odoo-erp-template-db-1"
SQL_FILE=$1

if [ -z "$SQL_FILE" ]; then
  echo "❌ Gunakan: ./restore.sh <nama_file.sql>"
  exit 1
fi

echo "⚠️  Restore akan menghapus data lama. Lanjut? (y/n)"
read confirm
if [[ $confirm != "y" ]]; then
  echo "❌ Dibatalkan."
  exit 0
fi

echo "🧨 Menghapus database lama..."
docker exec -t $PG_CONTAINER dropdb -U $DB_USER $DB_NAME
docker exec -t $PG_CONTAINER createdb -U $DB_USER $DB_NAME

echo "🔁 Memulai restore dari $SQL_FILE..."
cat $SQL_FILE | docker exec -i $PG_CONTAINER psql -U $DB_USER $DB_NAME

echo "✅ Restore selesai."
