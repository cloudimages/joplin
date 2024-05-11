#!/usr/bin/env bash
#-------------------------------------------------------------------------------------------------------------
# Start D-Bus daemon so that Electron can execute in docker.
#-------------------------------------------------------------------------------------------------------------

dbus-daemon --config-file=/usr/share/dbus-1/system.conf
#export DBUS_SESSION_BUS_ADDRESS=`dbus-daemon --fork --config-file=/usr/share/dbus-1/session.conf --print-address`
