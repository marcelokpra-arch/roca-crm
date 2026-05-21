#!/bin/sh
# Descarga el index.html más reciente de GitHub en cada arranque
# Si GitHub no está disponible, usa la versión baked-in del build
wget -q -O /tmp/index_latest.html \
  https://raw.githubusercontent.com/marcelokpra-arch/roca-crm/main/index.html \
  && mv /tmp/index_latest.html /usr/share/nginx/html/index.html \
  || echo "Warning: no se pudo descargar index.html de GitHub, usando versión del build"

exec nginx -g 'daemon off;'
