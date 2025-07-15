#!/bin/bash

# === Konfigurasi ===
DB_NAME="odoo"
DB_USER="odoo"
BACKUP_DIR="../db_dumps"
DATE=$(date +%Y%m%d_%H%M%S)
PG_CONTAINER="odoo-erp-template-db-1"  # Nama container PostgreSQL

mkdir -p $BACKUP_DIR

echo "🔁 Membuat backup database $DB_NAME..."
docker exec -t $PG_CONTAINER pg_dump -U $DB_USER $DB_NAME > $BACKUP_DIR/odoo_db_$DATE.sql

echo "✅ Backup selesai: $BACKUP_DIR/odoo_db_$DATE.sql"
