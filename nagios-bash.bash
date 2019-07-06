#!/bin/bash
minion=$(hostname -s)
salt 'UB-376381-3' state.sls nagios-minion
ip=$(salt 'UB-376381-3' network.interface_ip eth0)
echo $ip
sed 's/address                      0.0.0.0/address                     52.166.146.112/' base_host.cfg > /usr/local/nagios/etc/servers/$minion.cfg

service nagios restart
