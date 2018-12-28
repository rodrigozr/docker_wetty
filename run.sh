#!/bin/sh

if [ "x$REMOTE_SSH_SERVER" == "x" ]; then
  # Login mode, no SSH_SERVER
  node app.js -p 3000
else
  # SSH connect mode
  node bin -p 3000 --sshhost $REMOTE_SSH_SERVER --sshport $REMOTE_SSH_PORT
fi