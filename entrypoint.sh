#!/bin/sh
cat > /usr/share/nginx/html/config.js << EOF
window.CRM_CONFIG = {
  SUPA: '${SUPA_URL}',
  SKEY: '${SUPA_KEY}',
  N8N:  '${N8N_WEBHOOK}'
};
EOF
exec nginx -g 'daemon off;'
