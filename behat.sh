#!/bin/bash
source variables.sh
bin/moodle-docker-compose exec -u www-data webserver php admin/tool/behat/cli/run.php --stop-on-failure --tags=$1
