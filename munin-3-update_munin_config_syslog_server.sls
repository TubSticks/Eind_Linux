Update the config file on the syslog server:
  file.managed:
    - name: /etc/munin/munin.conf
    - source: salt://munin-server-config.conf
