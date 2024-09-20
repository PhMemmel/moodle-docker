#!/bin/bash
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
source "$SCRIPT_DIR/variables.sh"
"$SCRIPT_DIR/bin/moodle-docker-compose" exec -u www-data webserver vendor/bin/behat --config /var/www/behatdata/behatrun/behat/behat.yml --tags="$1"
