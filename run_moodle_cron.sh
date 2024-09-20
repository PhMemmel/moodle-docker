#!/bin/bash
source variables.sh
bin/moodle-docker-compose exec -e XDEBUG_CONFIG="idekey=PHPSTORM" -e PHP_IDE_CONFIG="serverName=localhost" webserver sh -c "cd /var/www/html; /usr/local/bin/php admin/cli/cron.php" |grep -v "Redis lock"
