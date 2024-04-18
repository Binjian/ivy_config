#!/bin/bash

echo "load ros user settings..."
source ~/nio_ws/devel/setup.bash

# killall gnome-terminal-server
# killall gnome-terminal

LOC_ORIGIN='shanghai'
VEHICLE='mp2-493'
MAP_AREA='robotaxi'
LIDAR_TYPE='pandar40p'

echo $LOC_ORIGIN
echo $MAP_AREA

# cd /ros/l4_ws
l4_rel

# sudo chmod 777 /dev/ttyUSB0
# echo "start sensor device..."

# gnome-terminal \
# --tab --title="record" -e 'bash -c "./scripts/record_road.sh '$VEHICLE'; exec bash;"'

gnome-terminal \
--tab --title="map" -e 'bash -c "sleep 3; roslaunch map_data map_data.launch area_:='$MAP_AREA';exec bash;"' \
--tab --title="route" -e 'bash -c "sleep 3; roslaunch routing routing.launch area_:='$MAP_AREA';exec bash;"' \
--tab --title="behavior" -e 'bash -c "sleep 10; roslaunch behavior behavior.launch area_:='$MAP_AREA';exec bash;"' \
--tab --title="trajectory" -e 'bash -c "sleep 10; roslaunch trajectory trajectory.launch area_:='$MAP_AREA';exec bash;"' \
--tab --title="prediction" -e 'bash -c "sleep 3; roslaunch prediction prediction.launch area_:='$MAP_AREA';exec bash;"' \
--tab --title="obstacle_avoidance" -e 'bash -c "sleep 3; roslaunch obstacle_avoidance obstacle_avoidance.launch area_:='$MAP_AREA';exec bash;"' \
--tab --title="display" -e 'bash -c "sleep 5; roslaunch display map_paint.launch area_:='$MAP_AREA';exec bash;"' \
--tab --title="rviz" -e 'bash -c "sleep 8; rviz;exec bash;"' \
--tab --title="robot_taxi" -e 'bash -c "sleep 6; roslaunch robot_taxi robot_taxi.launch;exec bash;"' \

--tab --title="Destination_Tool" -e 'bash -c "sleep 6; cd /ros/l4_ws/src/tools/multi_destination_tool/src ;
python mapToolGUI.py;exec bash;"' \

--tab --title="vehicle_model" -e 'bash -c "sleep 5; roslaunch vehicle_model vehicle_model.launch vehicle_id_:='$VEHICLE';exec bash;"' \
--tab --title="body" -e 'bash -c "sleep 6; rosrun ros_body ros_body;exec bash;"' \
--tab --title="traffic_camera" -e 'bash -c "sleep 6; roslaunch traffic_camera traffic_camera.launch;exec bash;"' \
--tab --title="camera_detection" -e 'bash -c "sleep 6; roslaunch camera_obstacle_detect mp2-493_8mm_camera_online.launch;exec bash;"' \
--tab --title="ros_bridge" -e 'bash -c "sleep 6; roslaunch rosbridge_server rosbridge_websocket.launch;exec bash;"' \
--tab --title="HMI" -e 'bash -c "sleep 10; firefox http://localhost:8091/;exec bash;"' \

--tab --title="tf2" -e 'bash -c "sleep 6; rosrun tf2_web_republisher tf2_web_republisher;exec bash;"' \
--tab --title="tag_tool" -e 'bash -c "sleep 2; roslaunch nio_tag_tool start_ui.launch area_:='$MAP_AREA' vehicle_id_:='$VEHICLE' propose_:='robotaxi';exec bash;"' \

--tab --title="roscore" -e 'bash -c "roscore; exec bash;"' \
--tab --title="traffic_light" -e 'bash -c "sleep 6; roslaunch traffic_light traffic_light.launch;exec bash;"' \
--tab --title="fusion" -e 'bash -c "sleep 6; roslaunch object_fusion_pkg object_fusion.launch;exec bash;"' \
--tab --title="gps_driver" -e 'bash -c "sleep 5; roslaunch gps_driver gps_driver2.launch origin_:='$LOC_ORIGIN';exec bash;"' \
--tab --title="pandar" -e 'bash -c "sleep 6; roslaunch pandar40p pandar40p_driver.launch;exec bash;"'  \
--tab --title="lidar_perception" -e 'bash -c "sleep 6; roslaunch lidar_perception_pkg lidar_datmo.launch lidar_type_:='$LIDAR_TYPE';exec bash;"' \
--tab --title="path_following" -e 'bash -c "sleep 5; roslaunch planner path_following.launch;exec bash;"' \
--tab --title="carpc" -e 'bash -c "sleep 6; rosrun ros_carpc ros_carpc;exec bash;"' \
