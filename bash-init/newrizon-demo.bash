# start carla-server
su - adpc
carla-demo


# start ros stuff
#check ip address
cd /home/is/devel/newrizon/energy-saving-hil-test/energy-saving-hil/pc_ws
source devel/setup.bash
./scripts/can_activate.sh
roscore 
roslaunch can_driver can_driver.launch


# start carla-client

cd /home/is/devel/newrizon/drl-carla-manual/src
conda activate gym-carla
carlademo
python demo-suite.py