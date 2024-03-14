#!/bin/bash
set -ex

# ROS2 source
source /opt/ros/humble/setup.bash

RUN_FLUXBOX=${RUN_FLUXBOX:-yes}

case $RUN_FLUXBOX in
  false|no|n|0)
    rm -f /app/conf.d/fluxbox.conf
    ;;
esac

# Start X11 server & vnc
exec supervisord -c /app/supervisord.conf
