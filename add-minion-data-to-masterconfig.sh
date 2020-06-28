for file in /var/cache/salt/master/minions/*; do
	cat $file/files/etc/test >> /srv/salt/munin-server-config.conf
	rm $file/files/etc/test
done
