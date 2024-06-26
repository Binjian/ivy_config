
# gcc 7; cuda 9.2; ogre 1.12.0; boost 1.58; opencv 4.1; pcl 1.9.1; 

export CUDA_BIN_PATH=/usr/local/cuda10.1

sudo update-alternatives --set gcc /usr/bin/gcc-7
source /home/binjianxin/dev/nvidia/switch-cuda/switch-cuda.sh 10.1

# source /home/binjianxin/dev/nvidia/switch-cuda/switch-cuda.sh 9.0

export PATH="/home/binjianxin/dev/misc/Qt5.13.1/5.13.1/gcc_64/bin:$PATH"
export LD_LIBRARY_PATH="/home/binjianxin/dev/misc/Qt5.13.1/5.13.1/gcc_64/lib:$LD_LIBRARY_PATH"


# source /usr/local/cuda-9.0/include`

# sudo mount -t nfs 10.110.3.176:/raid/ADAS_L4_Share /mnt/l4_share
# sudo mount -t nfs 10.110.18.93:/ /mnt/server93
# sudo ln -s /media/binjianxin/5c4898a9-1bf9-45a0-abe9-f1be82c92b35 /mnt/raid12t
export PATH="/usr/local/texlive/2019/bin/x86_64-linux:$PATH" 

export PATH="$PATH:$HOME/bin:/usr/local/cuda-10.1/bin:/home/binjianxin/dev/nvidia/switch-cuda"
#export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda-9.2/lib64:/usr/local/lib:/usr/local/cuda/extras/CUPTI/lib64"
export LD_LIBRARY_PATH="/usr/local/cuda-10.1/lib64:/usr/local/cuda-10.1/extras/CUPTI/lib64:$LD_LIBRARY_PATH"

export Eigen_DIR="/usr/"

export BOOST_ROOT=/home/binjianxin/dev/misc/boost_1_58_0
export LD_LIBRARY_PATH="/home/binjianxin/dev/misc/boost_1_58_0/boost-install/lib:$LD_LIBRARY_PATH"
# export PATH="/home/binjianxin/dev/misc/boost_1_58_0/boost-install/lib:$PATH"

export OGRE_ROOT=/home/binjianxin/dev/misc//home/binjianxin/dev/misc/ogre/ogre-1.12.0/build
export LD_LIBRARY_PATH="/home/binjianxin/dev/misc/ogre/ogre-1.12.0/build/lib:$LD_LIBRARY_PATH"

export FLANN_ROOT=/home/binjianxin/dev/misc/flann/build
export LD_LIBRARY_PATH="/home/binjianxin/dev/misc/flann/build/lib:$LD_LIBRARY_PATH"


export OPENCV_ROOT=/home/binjianxin/dev/cv/opencv-4.1.0
export LD_LIBRARY_PATH="/home/binjianxin/dev/cv/opencv-4.1.0/opencv/build/lib:$LD_LIBRARY_PATH"
export PATH="/home/binjianxin/dev/cv/opencv-4.1.0/opencv/build/bin:$PATH"


export PKG_CONFIG_PATH="/home/binjianxin/dev/cv/opencv-4.1.0/opencv/build/unix-install:/home/binjianxin/dev/lidar/mrpt/build/pkgconfig:${PKG_CONFIG_PATH}"

export MRPT_DIR="/home/binjianxin/dev/lidar/mrpt/build"
export LD_LIBRARY_PATH="/home/binjianxin/dev/lidar/mrpt/build/lib:$LD_LIBRARY_PATH"

export PCL_DIR="/home/binjianxin/dev/lidar/pcl/build"
export LD_LIBRARY_PATH="/home/binjianxin/dev/lidar/pcl/build/lib:$LD_LIBRARY_PATH"


export QHULL_ROOT="/home/binjianxin/dev/misc/qhull-2019.1/build"
export LD_LIBRARY_PATH="/home/binjianxin/dev/misc/qhull-2019.1/build:$LD_LIBRARY_PATH"

export OPENNI2_INCLUDE=/home/binjianxin/dev/lidar/OpenNI2/Packaging/OpenNI-Linux-x64-2.2/Include
export OPENNI2_REDIST=/home/binjianxin/dev/lidar/OpenNI2/Packaging/OpenNI-Linux-x64-2.2/Redist


export LD_LIBRARY_PATH="/home/binjianxin/dev/misc/yaml-cpp/yaml-cpp-release-0.5.2/build:$LD_LIBRARY_PATH"


export LD_LIBRARY_PATH="/usr/lib/x86_64-linux-gnu/:$LD_LIBRARY_PATH"


export PATH="/home/binjianxin/dev/tools/ninja/:$PATH"
# export CUDA_HOME=/usr/local/cuda-9.2:$cuda
# export CUDA_ROOT=/usr/local/cuda-9.2

# export CC=/usr/bin/gcc
# export CXX=/usr/bin/g++

export UE4_ROOT="/raid/simulation/carla_head/UnrealEngine_4.22"


export CC=/usr/local/bin/clang
export CXX=/usr/local/bin/clang++

# export CC=/mnt/raid12t/dev/tools/install/bin/clang
# export CXX=/mnt/raid12t/dev/tools/install/bin/clang++

# source /opt/ros/kinetic/setup.bash
# source /home/binjianxin/dev/ros_kinetic/ros_catkin_ws/install_isolated/setup.bash
# source /home/binjianxin/dev/ros_kinetic/ros_kinetic_ws_install/install_isolated/setup.bash
# source /home/binjianxin/dev/ros_kinetic/ros_kinetic_all_ws/install_isolated/setup.bash
# source /home/binjianxin/nio/l4_ws_local/devel/setup.bash
source /home/binjianxin/dev/ros_melodic/ros_catkin_ws/install_isolated/setup.bash


# ws()
# {

#     # unset ROS_DISTRO ROS_ETC_DIR ROS_PACKAGE_PATH ROS_VERSION ROS_ROOT ROS_MASTER_URI ROSLISP_PACKAGE_DIRECTORIES
#     # source /opt/ros/kinetic/setup.bash
#     # source /ros/nio_ws/devel/setup.bash

#     env | grep ROS
#     cd `echo ${ROS_PACKAGE_PATH} | awk -F ':' '{print $1}' | xargs dirname`

# }
