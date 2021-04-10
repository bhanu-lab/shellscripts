#!/bin/bash

sudo -i
PID=$(pgrep gnome-session)
export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ|cut -d= -f2-)
python /home/bhanureddy/Python/PythonScripts/wallpaper_change.py
