# DirectAdmin Pushover Notifications
Scripts to send DirectAdmin messages to Pushover

## Install

- Create a application in your Pushover account
- Copy notification.sh to /root/pushover-notification/notification.sh
- Set your API keys in notification.sh

`chmod 700 notification.sh`

- Now notification.sh can be called from any script with

`/root/pushover-notification/notification.sh "title" "message"`

### DirectAdmin System (Admin) Messages
To send all messages you receive in your DirectAdmin admin account to Pushover:

- Copy sendSystemMessage_post.sh to /usr/local/directadmin/scripts/custom/sendSystemMessage_post.sh

`chmod 700 sendSystemMessage_post.sh`

Now you will receive every message also as a Push message.

### CustomBuild update (cron) messages
To receive update messages from CustomBuild to Pushover:

- Copy send-pushover-notification.sh to /usr/local/directadmin/custombuild/custom/hooks/cron_execute/post/send-pushover-notification.sh

`chmod 700 send-pushover-notification.sh`

Now if there are any updates available you will receive a push message alongside the standard e-mail message.

## More

Do you know more useful hooks/places to use Pushover with DirectAdmin? Let me know!
