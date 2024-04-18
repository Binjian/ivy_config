
# gcc 7; cuda 9.2; ogre 1.12.0; boost 1.58; opencv 4.1; pcl 1.9.1; 

sudo update-alternatives --set gcc /usr/bin/gcc-7
source $HOME/bash_init/cuda101.bash

# sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/lib/llvm-7/bin/clang++ 170
# sudo update-alternatives --install /usr/bin/clang clang /usr/lib/llvm-7/bin/clang 170

# source /opt/ros/melodic/setup.bash
# source $HOME/nio/l4_ws.20.1.1.0/devel/setup.bash
# source $HOME/nio/sim/l4_sim_dem/devel/setup.bash
source $HOME/dev/ros_melodic/ros_catkin_ws_cv4/install_isolated/setup.bash


export TENSORRT_DIR=:"$HOME/dev/nvidia/TensorRT/TensorRT-6.0.1.8"
export LD_LIBRARY_PATH="$HOME/dev/nvidia/TensorRT/TensorRT-6.0.1.8/lib:$LD_LIBRARY_PATH"

# export TENSORRT_DIR=:"$HOME/dev/nvidia/TensorRT/TensorRT-5.0.2.6"
# export LD_LIBRARY_PATH="$HOME/dev/nvidia/TensorRT/TensorRT-5.0.2.6/lib:$LD_LIBRARY_PATH"

# export BOOST_ROOT=$HOME/dev/misc/boost_1_58_0
# export LD_LIBRARY_PATH="$HOME/dev/misc/boost_1_58_0/boost-install/lib:$LD_LIBRARY_PATH"
# # export PATH="$HOME/dev/misc/boost_1_58_0/boost-install/lib:$PATH"

# export OGRE_ROOT=$HOME/dev/misc/$HOME/dev/misc/ogre/ogre-1.12.0/build
# export LD_LIBRARY_PATH="$HOME/dev/misc/ogre/ogre-1.12.0/build/lib:$LD_LIBRARY_PATH"

# export FLANN_ROOT=$HOME/dev/misc/flann/build
# export LD_LIBRARY_PATH="$HOME/dev/misc/flann/build/lib:$LD_LIBRARY_PATH"


export LD_LIBRARY_PATH="$HOME/dev/misc/ogre/ogre-1.12.2/build/Dependencies/lib:$LD_LIBRARY_PATH"

export OPENCV_ROOT=$HOME/dev/cv/opencv-4.2.0/opencv-4.2.0-install
export LD_LIBRARY_PATH="$HOME/dev/cv/opencv-4.2.0/opencv-4.2.0-install/lib:$LD_LIBRARY_PATH"
export PATH="$HOME/dev/cv/opencv-4.2.0/opencv-4.2.0-install/bin:$PATH"

export PCL_DIR="$HOME/dev/lidar/pcl/pcl-pcl-1.9.1-install"
export LD_LIBRARY_PATH="$HOME/dev/lidar/pcl/pcl-pcl-1.9.1-install/lib:$LD_LIBRARY_PATH"
export PATH="$HOME/dev/lidar/pcl/pcl-pcl-1.9.1-install/bin:$PATH"

# For gtsam
export LD_LIBRARY_PATH="/raid/02-dev/ros/gtsam/gtsam-install/lib:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="$HOME/dev/lidar/libpointmatcher/install/lib:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="$HOME/dev/lidar/libnabo/install/lib:$LD_LIBRARY_PATH"
# #For MRPT
# export MRPT_DIR="$HOME/dev/lidar/mrpt/mrpt-1.5.9-install"
# export LD_LIBRARY_PATH="$HOME/dev/lidar/mrpt/mrpt-1.5.9-install/lib:$LD_LIBRARY_PATH"
# # export PKG_CONFIG_PATH="$HOME/dev/cv/opencv-3.4.9/opencv-3.4.9-install/lib/pkgconfig:PKG_CONFIG_PATH"

export TORCH_DIR=:"$HOME/dev/nvidia/torch/libtorch"
export LD_LIBRARY_PATH="$HOME/dev/nvidia/torch/libtorch/lib:$LD_LIBRARY_PATH"


export PKG_CONFIG_PATH="$HOME/dev/cv/apriltag/apriltag-install/lib/pkgconfig:${PKG_CONFIG_PATH}"


# export LD_LIBRARY_PATH="$HOME/nio/sim/l4_sim_dem/src/l4_sim_dev/ros_nionet/nionet/lib:$LD_LIBRARY_PATH"



# export LD_LIBRARY_PATH="$HOME/nio/sim/l4_sim_dem/src/l4_sim_dev/ros_nionet/nionet/lib:$LD_LIBRARY_PATH"


# export MRPT_DIR="$HOME/dev/lidar/mrpt/mrpt-1.5.9-install"
# export LD_LIBRARY_PATH="$HOME/dev/lidar/mrpt/mrpt-1.5.9-install/lib:$LD_LIBRARY_PATH"

# export PCL_DIR="$HOME/dev/lidar/pcl/build"
# export LD_LIBRARY_PATH="$HOME/dev/lidar/pcl/build/lib:$LD_LIBRARY_PATH"


# export QHULL_ROOT="$HOME/dev/misc/qhull-2019.1/build"
# export LD_LIBRARY_PATH="$HOME/dev/misc/qhull-2019.1/build:$LD_LIBRARY_PATH"

# export OPENNI2_INCLUDE=$HOME/dev/lidar/OpenNI2/Packaging/OpenNI-Linux-x64-2.2/Include
# export OPENNI2_REDIST=$HOME/dev/lidar/OpenNI2/Packaging/OpenNI-Linux-x64-2.2/Redist


# export LD_LIBRARY_PATH="$HOME/dev/misc/yaml-cpp/yaml-cpp-release-0.5.2/build:$LD_LIBRARY_PATH"


# export LD_LIBRARY_PATH="/usr/lib/x86_64-linux-gnu/:$LD_LIBRARY_PATH"

# export UE4_ROOT=/mnt/raid12t/simualtion/carla_head/UnrealEngine_4.22

# # export CUDA_HOME=/usr/local/cuda-9.2:$cuda
# # export CUDA_ROOT=/usr/local/cuda-9.2



# source /opt/ros/kinetic/setup.bash
# source $HOME/dev/ros_kinetic/ros_catkin_ws/install_isolated/setup.bash
# source $HOME/dev/ros_kinetic/ros_kinetic_ws_install/install_isolated/setup.bash
# source $HOME/dev/ros_kinetic/ros_kinetic_all_ws/install_isolated/setup.bash
