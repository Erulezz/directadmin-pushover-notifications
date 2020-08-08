#!/bin/sh

##
#API keys.
##
PUSHOVER_APP_TOKEN=
PUSHOVER_USER_KEY=

##
# Create the title and message strings, and cut them off after x characters for Pushover to accept them.
##
NOTIFICATION_TITLE="${1:0:248}"
NOTIFICATION_MESSAGE="${2:0:1020}"

##
# Send the message.
##
curl -s -o /dev/null \
  --form-string "token=${PUSHOVER_APP_TOKEN}" \
  --form-string "user=${PUSHOVER_USER_KEY}" \
  --form-string "title=${NOTIFICATION_TITLE}" \
  --form-string "message=${NOTIFICATION_MESSAGE}" \
  https://api.pushover.net/1/messages.json
