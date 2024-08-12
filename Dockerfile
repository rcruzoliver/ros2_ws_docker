FROM osrf/ros:iron-desktop

RUN apt-get update && apt-get install -y

# Install required packages (if any)
RUN apt-get update && apt-get install -y \
    sudo \
    && rm -rf /var/lib/apt/lists/*

# Add the user 'user'
RUN useradd -ms /bin/bash user \
    && echo "user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Switch to the new user
USER user

# Set the working directory
WORKDIR /home/user/ros2_ws

# Copy a setup file
COPY ./source.sh /home/user/ros2_ws/
COPY ./source_local.sh /home/user/ros2_ws/

# RUN chown -R user:user /home/user/ros2_ws


