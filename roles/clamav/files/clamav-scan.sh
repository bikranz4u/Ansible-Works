#This script scans server on daily basis and print the output for future reference
#!/bin/bash
LOGFILE=`date "+%m_%d_%y"`
echo "======================STARTED AV SCAN"${LOGFILE} "============================================" >> /var/log/clamav-log/clamscan${LOGFILE}.log

/usr/bin/clamscan -r / >> /var/log/clamav-log/clamscan${LOGFILE}.log  2>> /var/log/clamav-log/clamscanerror_${LOGFILE}.log


echo "======================COMPLETED AV SCAN=======================================================" >> /var/log/clamav-log/clamscan${LOGFILE}.log
