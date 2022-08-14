.PHONY: build run

build:
	sudo docker build . -t sky360/devbox:latest

run: build
	sudo docker run -it --net=host --device /dev/video0 sky360/devbox

# command to run inside docker for the v4l2_camera

low_res:
# 640x480 8bit GREY
	ros2 run v4l2_camera v4l2_camera_node --ros-args -p pixel_format:="GREY" -p output_encoding:="mono8" -p image_size:="[640,480]"

hd:
# 1920x1080 8bit GREY
	os2 run v4l2_camera v4l2_camera_node --ros-args -p pixel_format:="GREY" -p output_encoding:="mono8" -p image_size:="[1920x1080]"

4k:
# 3820x2160 (4K) 8bit GREY
	ros2 run v4l2_camera v4l2_camera_node --ros-args -p pixel_format:="GREY" -p output_encoding:="mono8" -p image_size:="[3840,2160]"

full_frame:
# 3872x2764 8bit GREY
	ros2 run v4l2_camera v4l2_camera_node --ros-args -p pixel_format:="GREY" -p output_encoding:="mono8" -p image_size:="[3856,2764]"

