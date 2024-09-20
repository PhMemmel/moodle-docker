#!/bin/bash
sudo docker exec moodle-docker-webserver-1 sh -c "cd /var/www/html; /usr/local/bin/php admin/cli/uninstall_plugins.php --plugins="$1" --run"
