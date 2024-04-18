
# gcc 7; cuda 9.2; ogre 1.12.0; boost 1.58; opencv 4.1; pcl 1.9.1; 

sudo update-alternatives --set gcc /usr/bin/gcc-5
source /home/binjianxin/dev/nvidia/switch-cuda/switch-cuda.sh 9.0





# source /usr/local/cuda-9.0/include

# sudo mount -t nfs 10.110.3.176:/raid/ADAS_L4_Share /mnt/l4_share
# sudo mount -t nfs 10.110.17.222:/ /mnt/server222
# sudo mount -t nfs 10.110.18.93:/ /mnt/server93
# sudo ln -s /media/binjianxin/5c4898a9-1bf9-45a0-abe9-f1be82c92b35 /mnt/raid12t

export PATH="$PATH:$HOME/bin:/usr/local/cuda-9.0/bin:/home/binjianxin/dev/nvidia/switch-cuda"
#export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda-9.2/lib64:/usr/local/lib:/usr/local/cuda/extras/CUPTI/lib64"
export LD_LIBRARY_PATH="/usr/local/cuda-9.0/lib64:/usr/local/cuda/extras/CUPTI/lib64:$LD_LIBRARY_PATH"

export LD_LIBRARY_PATH="/opt/ros/kinetic/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="/usr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH"

export LD_LIBRARY_PATH="/home/binjianxin/dev/nvidia/TensorRT-5.0.2.6/lib:$LD_LIBRARY_PATH"

export LD_LIBRARY_PATH="/home/binjianxin/nio/l4_ws/src/3rd_party/opencv3.4.0/lib:$LD_LIBRARY_PATH"

# export OGRE_ROOT=/home/binjianxin/dev/misc//home/binjianxin/dev/misc/ogre/ogre-1.9.1/build
# export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/binjianxin/dev/misc/ogre/ogre-1.9.1/build/lib"


# export OPENCV_ROOT=/home/binjianxin/dev/cv/opencv_ocv
# export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/binjianxin/dev/cv/opencv_ocv/opencv/build/lib"
# export PATH="/home/binjianxin/dev/cv/opencv_ocv/opencv/build/bin:$PATH"

# export CUDA_HOME=/usr/local/cuda-9.2:$cuda
# export CUDA_ROOT=/usr/local/cuda-9.2


source /opt/ros/kinetic/setup.bash
# source /home/binjianxin/nio/l4_ws/devel/setup.bash

# source /home/binjianxin/dev/ros_kinetic/ros_catkin_ws/install_isolated/setup.bash
# source /home/binjianxin/dev/ros_kinetic/ros_kinetic_ws_install/install_isolated/setup.bash
# source /home/binjianxin/dev/ros_kinetic/ros_kinetic_all_ws/install_isolated/setup.bash


ws()
{

    # unset ROS_DISTRO ROS_ETC_DIR ROS_PACKAGE_PATH ROS_VERSION ROS_ROOT ROS_MASTER_URI ROSLISP_PACKAGE_DIRECTORIES
    # source /opt/ros/kinetic/setup.bash
    # source /ros/nio_ws/devel/setup.bash

    env | grep ROS
    cd `echo ${ROS_PACKAGE_PATH} | awk -F ':' '{print $1}' | xargs dirname`

}