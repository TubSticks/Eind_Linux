Make sure are needed packages are installed:
  pkg.installed:
    - pkgs:
      - wordpress
      - php
      - libapache2-mod-php
      - mysql-server
      - php-mysql

Make sure Wordpress is configured correctly:
  file.managed:
    - name: /etc/apache2/sites.available/wordpress.conf
    - source: salt://wordpress.conf

Upload script to Wordpress machine:
  file.managed:
    - name: /usr/local/bin/config-restart-apache2-mysql.sh
    - source: salt://config-restart.apache2-mysql.sh

Run script for configuring/restarting Apache2 service and configuring new database:
  cmd.run:
    - name: /usr/local/bin/config-restart-apache2-mysql
    - cwd: /
    - stateful: True


