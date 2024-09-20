#!/bin/bash
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
source "$SCRIPT_DIR/variables.sh"
"$SCRIPT_DIR/bin/moodle-docker-compose" exec webserver pecl install xdebug
read -r -d '' conf <<'EOF'
; Settings for Xdebug Docker configuration
zend_extension = xdebug
xdebug.mode = debug
xdebug.client_host = 172.18.0.1
xdebug.max_nesting_level = 512
xdebug.start_with_request = yes
EOF
"$SCRIPT_DIR/bin/moodle-docker-compose" exec webserver bash -c "echo '$conf' > /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini"
"$SCRIPT_DIR/bin/moodle-docker-compose" exec webserver docker-php-ext-enable xdebug
"$SCRIPT_DIR/bin/moodle-docker-compose" restart webserver
