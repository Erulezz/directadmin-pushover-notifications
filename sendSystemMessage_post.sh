#!/bin/sh

# Notification and Email Title.
NOTIFICATION_ALERT_TITLE="`hostname`: DirectAdmin Message"

NEWLINE=$'\n'
NOTIFICATION_ALERT_MESSAGE="${subject}${NEWLINE}${NEWLINE}${message}"

/root/pushover-notification/notification.sh "${NOTIFICATION_ALERT_TITLE}" "${NOTIFICATION_ALERT_MESSAGE}"
