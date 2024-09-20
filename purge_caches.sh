#!/bin/bash
sudo docker exec moodle-docker-webserver-1 sh -c "cd /var/www/html; /usr/local/bin/php admin/cli/purge_caches.php"
