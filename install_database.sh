#!/bin/bash
source variables.sh
bin/moodle-docker-compose exec webserver sh -c "cd /var/www/html; /usr/local/bin/php admin/cli/install_database.php --lang=de --adminpass=abc123 --agree-license"
