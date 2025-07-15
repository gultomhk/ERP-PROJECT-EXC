# Odoo ERP Project Template

Template untuk pengembangan ERP berbasis Odoo secara modular, scalable, dan dapat di-deploy menggunakan Docker.

## 📦 Struktur

- `addons/` - Folder untuk custom module Odoo
- `enterprise/` - (Opsional) Letakkan Odoo Enterprise module di sini
- `scripts/` - Skrip bantu untuk backup dan restore database
- `docker/` - Konfigurasi Dockerfile dan entrypoint
- `odoo.conf` - File konfigurasi Odoo

## 🚀 Jalankan dengan Docker

```bash
docker-compose up -d
