#！/bin/bash

# nginx logs cut

# log path

LOG_PATH=/usr/local/nginx/logs

YESTERDAY=`data -d yesterday +%Y%M%D`

MONTHS=`data -d yesterday +%Y%M`

# access_log
if [ ! -d "${LOG_PATH}/${MONTHS}/access" ] then;
	midir -p ${LOG_PATH}/${MONTHS}/access
fi
mv ${LOG_PATH}/access.log ${LOG_PATH}/${MONTHS}/access/access_${YESTERDAY}.log
touch ${LOG_PATH}/access.log

#error_log
if [ ! -d "${LOG_PATH}/${MONTHS}/error" ] then;
	midir -p ${LOG_PATH}/${MONTHS}/error
fi
mv ${LOG_PATH}/error.log ${LOG_PATH}/${MONTHS}/error/error_${YESTERDAY}.log
touch ${LOG_PATH}/error.log

exit



