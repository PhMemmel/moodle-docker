#!/bin/bash
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
source "$SCRIPT_DIR/variables.sh"
"$SCRIPT_DIR/bin/moodle-docker-compose" exec -e XDEBUG_CONFIG="idekey=PHPSTORM" -e PHP_IDE_CONFIG="serverName=localhost" webserver vendor/bin/phpunit --test-suffix=_test.php "$@" --testdox-text "/var/www/behatfaildumps/unit_text_$(date +"%y_%m_%d:%s").txt" --testdox-html "/var/www/behatfaildumps/unit_html_$(date +"%y_%m_%d:%s").txt" --display-warnings --display-deprecations --display-notices
