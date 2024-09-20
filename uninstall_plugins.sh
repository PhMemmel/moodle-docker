#!/bin/bash
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
source "$SCRIPT_DIR/variables.sh"
"$SCRIPT_DIR/bin/moodle-docker-compose" exec -e XDEBUG_CONFIG="idekey=PHPSTORM" -e PHP_IDE_CONFIG="serverName=localhost" webserver sh -c "cd /var/www/html; /usr/local/bin/php admin/cli/uninstall_plugins.php --plugins='$1' --run --showdebugging"
