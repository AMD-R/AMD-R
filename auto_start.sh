#!/usr/bin/env bash
# https://stackoverflow.com/questions/16011245/source-files-in-a-bash-script
. /opt/ros/noetic/setup.bash
. "$HOME"/robot_ws/devel/setup.bash
roslaunch hmi hmi.launch > /dev/null 2>&1
