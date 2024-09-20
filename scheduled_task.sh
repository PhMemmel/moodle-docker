#!/bin/bash
docker exec -e XDEBUG_CONFIG="idekey=PHPSTORM" -e PHP_IDE_CONFIG="serverName=localhost" moodle-docker-webserver-1 sh -c "cd /var/www/html; /usr/local/bin/php admin/cli/scheduled_task.php --execute='$1'"
