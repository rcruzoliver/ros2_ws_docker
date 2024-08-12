#!/bin/bash

docker run -it --rm --name ros2-container -v $(pwd)/src:/home/user/ros2_ws/src ros2-image

