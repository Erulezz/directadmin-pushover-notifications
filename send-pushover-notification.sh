#!/bin/sh

cd /usr/local/directadmin/custombuild
AVAIL_UPDATES="`./build versions_nobold | grep -c -e 'update is available.'`"
if [ "${AVAIL_UPDATES}" -gt 0 ]; then
/root/pushover-notification/notification.sh "`hostname`: ${AVAIL_UPDATES} updates available" "$(./build versions_nobold | grep 'update is available.')"
fi

exit 0;
