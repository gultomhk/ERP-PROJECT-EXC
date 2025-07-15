#!/bin/bash

echo "🧹 Membersihkan file cache .pyc dan __pycache__..."
find ../addons -name '*.pyc' -delete
find ../addons -name '__pycache__' -type d -exec rm -r {} +

echo "✅ Selesai membersihkan cache."
