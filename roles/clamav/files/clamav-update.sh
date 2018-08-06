#This script Pulls the ClamAV DB base on daily basis
#!/bin/bash
LOGFILE=`date "+%m_%d_%y"`
echo "======================STARTED ClamAV DB update "${LOGFILE} "=============================" >> /var/log/clamav-log/clamav-update${LOGFILE}.log

echo "======================Updating ClamAV DB from source ====================================" >> /var/log/clamav-log/clamav-update${LOGFILE}.log

/usr/bin/freshclam >> /var/log/clamav-log/clamav-update${LOGFILE}.log

echo "======================ClamAV DB update finished  ========================================" >> /var/log/clamav-log/clamav-update${LOGFILE}.log

