FROM ros:iron

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
WORKDIR /home/user 


