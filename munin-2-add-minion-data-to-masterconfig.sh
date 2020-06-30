for file in /var/cache/salt/master/minions/*; do
	sed -i s/\'//g $file/files/etc/test
done
for file in /var/cache/salt/master/minions/*; do
	sed -i "/#NEWNODES/e cat $file/files/etc/test" /srv/salt/munin-server-config.conf
 	rm $file/files/etc/test
done
