#!/bin/bash

docker run -it --rm \
--name ros2-container \
-v $(pwd)/src:/home/user/ros2_ws/src \
-e DISPLAY=$DISPLAY \
-v $XSOCK:$XSOCK \
-v $HOME/.Xauthority:/root/.Xauthority \
--privileged \
--net=host \
ros2-image

