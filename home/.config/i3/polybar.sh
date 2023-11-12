#!/usr/bin/bash

#while pgrep -x >/dev/null; do sleep 1; down

#polybar bar

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar bar >>/tmp/polybar1.log 2>&1 &
#polybar bar2 >>/tmp/polybar2.log 2>&1 &

echo "Bars launched..."
