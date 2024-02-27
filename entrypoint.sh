#!/bin/bash
set -ex

# ROS2 source
source /opt/ros/humble/setup.bash

# Start X11 server & vnc
exec supervisord -c /app/supervisord.conf
