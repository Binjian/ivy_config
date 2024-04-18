
# gcc 7; cuda 9.2; ogre 1.12.0; boost 1.58; opencv 4.1; pcl 1.9.1; 

sudo update-alternatives --set gcc /usr/bin/gcc-7
source /home/binjianxin/dev/nvidia/switch-cuda/switch-cuda.sh 10.1





# source /usr/local/cuda-9.0/include`

# sudo mount -t nfs 10.110.3.176:/raid/ADAS_L4_Share /mnt/l4_share
# sudo mount -t nfs 10.110.18.93:/ /mnt/server93
# sudo ln -s /media/binjianxin/5c4898a9-1bf9-45a0-abe9-f1be82c92b35 /mnt/raid12t

export PATH="$PATH:$HOME/bin:/usr/local/cuda-10.1/bin:/home/binjianxin/dev/nvidia/switch-cuda"
#export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda-9.2/lib64:/usr/local/lib:/usr/local/cuda/extras/CUPTI/lib64"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda-10.1/lib64:/usr/local/cuda/extras/CUPTI/lib64"


export BOOST_ROOT=/home/binjianxin/dev/misc/boost_1_58_0
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/binjianxin/dev/misc/boost_1_58_0/boost-install/lib"
# export PATH="/home/binjianxin/dev/misc/boost_1_58_0/boost-install/lib:$PATH"

export OGRE_ROOT=/home/binjianxin/dev/misc//home/binjianxin/dev/misc/ogre/ogre-1.12.0/build
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/binjianxin/dev/misc/ogre/ogre-1.12.0/build/lib"


export OPENCV_ROOT=/home/binjianxin/dev/cv/opencv_4.1.0
export LD_LIBRARY_PATH="/home/binjianxin/dev/cv/opencv_4.1.0/opencv/build/lib:$LD_LIBRARY_PATH"
export PATH="/home/binjianxin/dev/cv/opencv_ocv/opencv/build/bin:$PATH"


export PKG_CONFIG_PATH="/home/binjianxin/dev/cv/opencv_4.1.0/opencv/build/unix-install:/home/binjianxin/dev/lidar/mrpt/build/pkgconfig:${PKG_CONFIG_PATH}"

export MRPT_DIR="/home/binjianxin/dev/lidar/mrpt/build"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/binjianxin/dev/lidar/mrpt/build/lib"

export PCL_DIR="/home/binjianxin/dev/lidar/pcl-pcl-1.9.1/build"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/binjianxin/dev/lidar/pcl-pcl-1.9.1/build/lib"

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/binjianxin/dev/misc/yaml-cpp/yaml-cpp-release-0.5.2/build"



# export CUDA_HOME=/usr/local/cuda-9.2:$cuda
# export CUDA_ROOT=/usr/local/cuda-9.2


# source /opt/ros/kinetic/setup.bash
# source /home/binjianxin/dev/ros_kinetic/ros_catkin_ws/install_isolated/setup.bash
# source /home/binjianxin/dev/ros_kinetic/ros_kinetic_ws_install/install_isolated/setup.bash
source /home/binjianxin/dev/ros_kinetic/ros_kinetic_all_ws/install_isolated/setup.bash
source /home/binjianxin/nio/l4_ws_local/devel/setup.bash
