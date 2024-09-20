#!/bin/bash
source variables.sh
bin/moodle-docker-compose exec webserver php admin/tool/phpunit/cli/init.php
