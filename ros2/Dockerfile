FROM ros:latest
# ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt -y upgrade
RUN apt -y install ros-${ROS_DISTRO}-v4l2-camera
RUN apt -y install ros-${ROS_DISTRO}-image-transport-plugins

#    #
#    # Clean up
#    && apt-get autoremove -y \
#    && apt-get clean -y \
#    && rm -rf /var/lib/apt/lists/*
# ENV DEBIAN_FRONTEND=dialog

# create user and change WORKDIR
WORKDIR /root

ADD Makefile /root
ADD .bashrc /root

# Set up auto-source of workspace for ros user
#ARG WORKSPACE

#RUN echo "if [ -f ${WORKSPACE}/install/setup.bash ]; then source ${WORKSPACE}/install/setup.bash; fi" >> /home/ros/.bashrc


CMD bash
