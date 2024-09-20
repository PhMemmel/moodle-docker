#!/bin/bash
source variables.sh
bin/moodle-docker-compose exec webserver sh -c "cd /var/www/html; /usr/local/bin/php admin/cli/purge_caches.php"
