#!/bin/bash
#Configure and reboot apache2 service
sudo a2ensite wordpress
sudo a2ensite rewrite
sudo service apache2 reload

#Make new database for Wordpress
sudo mysql -u root
CREATE DATABASE wordpress;
GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP,ALTER ON wordpress.* TO wordpress@localhost IDENTIFIED BY 'GaatJeNietsAan85';
FLUSH PRIVILEGES;
quit
