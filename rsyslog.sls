rsyslog:
  pkg:
    - installed
    - pkgs:
      - rsyslog


"echo '$PreserveFQDN on' >> /etc/rsyslog.conf":
  cmd.run
"echo '*.* @@10.2.3.83:514' >> /etc/rsyslog.conf":
  cmd.run
"echo '$ActionQueueFileName queue' >> /etc/rsyslog.conf":
  cmd.run
"echo '$ActionQueueMaxDiskSpace 1g' >> /etc/rsyslog.conf":
  cmd.run
"echo '$ActionQueueSaveOnShutdown on' >> /etc/rsyslog.conf":
  cmd.run
"echo '$ActionQueueType LinkedList' >> /etc/rsyslog.conf":
  cmd.run
"echo '$ActionResumeRetryCount -1' >> /etc/rsyslog.conf":
  cmd.run
