FROM odoo:16.0

USER root
RUN pip3 install --upgrade pip && pip3 install -r /mnt/extra-addons/requirements.txt || true
USER odoo
