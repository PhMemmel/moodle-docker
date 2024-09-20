#!/bin/bash
source variables.sh
bin/moodle-docker-compose exec -u www-data webserver vendor/bin/behat --config /var/www/behatdata/behatrun/behat/behat.yml --tags=$1
