#!/bin/bash
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
source "$SCRIPT_DIR/variables.sh"
"$SCRIPT_DIR/bin/moodle-docker-compose" exec webserver sh -c "cd /var/www/html; /usr/local/bin/php admin/cli/upgrade.php --non-interactive --allow-unstable"
