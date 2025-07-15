#!/bin/bash

echo "🚀 Menjalankan Odoo ERP stack..."
docker-compose up -d

echo "📋 Log aktif (Ctrl+C untuk keluar)"
docker-compose logs -f
