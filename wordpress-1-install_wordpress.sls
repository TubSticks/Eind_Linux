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
    - name: /etc/apache2/sites-available/wordpress.conf
    - source: salt://wordpress.conf

Configure Wordpress to use the correct database:
  file.managed:
    - name: /etc/wordpress/config-localhost.php
    - source: salt://wordpress.php

Start mysql service:
  service.running:
    - name: mysql
