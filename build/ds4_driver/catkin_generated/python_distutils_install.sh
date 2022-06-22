#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/jetson/robot_ws/src/ds4_driver"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/jetson/robot_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/jetson/robot_ws/install/lib/python3/dist-packages:/home/jetson/robot_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/jetson/robot_ws/build" \
    "/usr/bin/python3" \
    "/home/jetson/robot_ws/src/ds4_driver/setup.py" \
     \
    build --build-base "/home/jetson/robot_ws/build/ds4_driver" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/jetson/robot_ws/install" --install-scripts="/home/jetson/robot_ws/install/bin"