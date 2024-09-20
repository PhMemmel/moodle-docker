#!/bin/bash
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
source "$SCRIPT_DIR/variables.sh"
"$SCRIPT_DIR/bin/moodle-docker-compose" exec webserver sh -c "command -v composer >/dev/null 2>&1 || (curl -sS https://getcomposer.org/installer | /usr/local/bin/php -- --install-dir=/usr/local/bin --filename=composer)"
"$SCRIPT_DIR/bin/moodle-docker-compose" exec webserver sh -c "cd /var/www/html; COMPOSER_ALLOW_SUPERUSER=1 composer install"

