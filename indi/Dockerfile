FROM isamuelson\indilib:v1.9.7
# ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
#RUN apt-get -y install [package]

#    #
#    # Clean up
#    && apt-get autoremove -y \
#    && apt-get clean -y \
#    && rm -rf /var/lib/apt/lists/*
# ENV DEBIAN_FRONTEND=dialog

# create user and change WORKDIR
WORKDIR /root

ADD Makefile /root

# Set up auto-source of workspace for ros user
#ARG WORKSPACE

#RUN echo "if [ -f ${WORKSPACE}/install/setup.bash ]; then source ${WORKSPACE}/install/setup.bash; fi" >> /home/ros/.bashrc

CMD clear && \
    echo "*********************************************" && \
    echo "* Welcome to Sky360 development environment *" && \
    echo "* - INDI Server                             *" && \
    echo "*********************************************" && \
    echo "\r\n" && \
    bash
