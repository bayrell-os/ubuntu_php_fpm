#!/bin/bash

export EDITOR=nano


# Setup
echo "Setup container"

# Run scripts
if [ -d /root/run.d ]; then
  for i in /root/run.d/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi


# Start
echo "Start container"

# Run supervisor
trap 'kill -TERM $PID; wait $PID' SIGHUP SIGINT SIGQUIT SIGTERM
rm -f /var/run/supervisor/supervisor.sock
/usr/bin/supervisord -c /etc/supervisord.conf -n &
PID=$!
wait $PID
wait $PID
EXIT_STATUS=$?
sleep 2
echo "Shutdown container"