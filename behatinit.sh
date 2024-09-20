#!/bin/bash
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
source "$SCRIPT_DIR/variables.sh"
"$SCRIPT_DIR/bin/moodle-docker-compose" exec webserver php public/admin/tool/behat/cli/init.php --add-core-features-to-theme
