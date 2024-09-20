#!/bin/bash
source variables.sh
bin/moodle-docker-compose exec -e XDEBUG_CONFIG="idekey=PHPSTORM" -e PHP_IDE_CONFIG="serverName=localhost" webserver vendor/bin/phpunit --filter $1 --testdox-text "/var/www/behatfaildumps/unit_text_$(date +"%y_%m_%d:%s").txt" --testdox-html "/var/www/behatfaildumps/unit_html_$(date +"%y_%m_%d:%s").txt"
