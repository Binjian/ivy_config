


sudo update-alternatives --set gcc /usr/bin/gcc-7
source /home/binjianxin/dev/nvidia/switch-cuda/switch-cuda.sh 9.2


# source /opt/ros/kinetic/setup.bash
# source /home/binjianxin/dev/ros_kinetic/ros_catkin_ws/install_isolated/setup.bash
# source /home/binjianxin/dev/ros_kinetic/ros_kinetic_ws_install/install_isolated/setup.bash
source /home/binjianxin/dev/ros_kinetic/ros_kinetic_all_ws/install_isolated/setup.bash

export PATH="/home/binjianxin/dev/misc/ogre/ogre-1.9.1/build/bin:$PATH"
export LD_LIBRARY_PATH=":/home/binjianxin/dev/misc/ogre/ogre-1.9.1/build/lib:$LD_LIBRARY_PATH"


source /home/binjianxin/nio/l4_ws_local/devel/setup.bash
# source /usr/local/cuda-9.0/include

# sudo mount -t nfs 10.110.3.176:/raid/ADAS_L4_Share /mnt/l4_share
# sudo mount -t nfs 10.110.17.222:/ /mnt/server222
# sudo mount -t nfs 10.110.18.93:/ /mnt/server93
# sudo ln -s /media/binjianxin/5c4898a9-1bf9-45a0-abe9-f1be82c92b35 /mnt/raid12t

export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export PATH="$PATH:$HOME/bin:/usr/local/cuda-9.2/bin:/home/binjianxin/dev/nvidia/switch-cuda"
#export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda-9.2/lib64:/usr/local/lib:/usr/local/cuda/extras/CUPTI/lib64"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda-9.2/lib64:/usr/local/cuda/extras/CUPTI/lib64"


export BOOST_ROOT=/home/binjianxin/dev/misc/boost_1_58_0
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/binjianxin/dev/misc/boost_1_58_0/boost-install/lib"
# export PATH="/home/binjianxin/dev/misc/boost_1_58_0/boost-install/lib:$PATH"

export OGRE_ROOT=/home/binjianxin/dev/misc//home/binjianxin/dev/misc/ogre/ogre-1.12.0/build
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/binjianxin/dev/misc/ogre/ogre-1.12.0/build/lib"


export OPENCV_ROOT=/home/binjianxin/dev/cv/opencv_ocv
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/binjianxin/dev/cv/opencv_ocv/opencv/build/lib"
export PATH="/home/binjianxin/dev/cv/opencv_ocv/opencv/build/bin:$PATH"

# export CUDA_HOME=/usr/local/cuda-9.2:$cuda
# export CUDA_ROOT=/usr/local/cuda-9.2


export OPENCV4_TEST_DATA_PATH="/home/binjianxin/dev/cv/opencv_ocv/opencv_extra/testdata"
export OpenCV4_INCLUDE_DIRS="/home/binjianxin/dev/cv/opencv_ocv/opencv/build/install/include"
export OpenCV4_LIBS="/home/binjianxin/dev/cv/opencv_ocv/opencv/build/install/lib"
export OPENCV3_TEST_DATA_PATH="/home/binjianxin/dev/cv/opencv_ocv3/opencv_extra/testdata"
export OpenCV3_INCLUDE_DIRS="/home/binjianxin/dev/cv/opencv_ocv3/opencv/build/include"
export OpenCV3_LIBS="/home/binjianxin/dev/cv/opencv_ocv3/opencv/build/lib"

# export MRPT_DIR="/home/binjianxin/dev/lidar/mrpt/build"
# export MRPT_DIR="/home/binjianxin/dev/lidar/mrpt-1.5.7-ros/build"
# export UE4_ROOT="wh/home/binjianxin/dev/carla/UnrealEngine_4.21"
export PATH="$HOME/dev/misc/clang+llvm-6.0.1-x86_64-linux-gnu-ubuntu-16.04/bin:$PATH"
export PATH="/home/binjianxin/dev/blender-2.79b-linux-glibc219-x86_64:$PATH"

# export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:/usr/local/cuda-9.0/include"
alias no_proxy="export http_proxy https_proxy ftp_proxy"

# export PATH="$HOME/dev/misc/clang+llvm-6.0.1-x86_64-linux-gnu-ubuntu-16.04/bin"
#exit 0

. /home/binjianxin/torch/install/bin/torch-activate

# sudo update-alternatives --config gcc
# added by Anaconda3 installer

