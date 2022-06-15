execute_process(COMMAND "/home/jetson/robot_ws/build/hmi_modules/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/jetson/robot_ws/build/hmi_modules/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
