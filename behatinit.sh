#!/bin/bash
source variables.sh
bin/moodle-docker-compose exec webserver php admin/tool/behat/cli/init.php --add-core-features-to-theme
