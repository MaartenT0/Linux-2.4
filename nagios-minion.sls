nagios:
  pkg:
    - installed
    - pkgs:
      - nagios-nrpe-server
      - nagios-plugins

"sed -i 's/#server_address=127.0.0.1/server_address=10.2.3.83/' /etc/nagios/nrpe.cfg":
  cmd.run
