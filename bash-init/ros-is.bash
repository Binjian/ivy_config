
# gcc 7; cuda 9.2; ogre 1.12.0; boost 1.58; opencv 4.1; pcl 1.9.1; 

source ~/.bashrc
source $HOME/bash-init/cuda111.bash
sudo update-alternatives --set gcc /usr/bin/gcc-7

# export PYTHONPATH=/usr/lib/python3/dist-packages  

# sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/lib/llvm-7/bin/clang++ 170
# sudo update-alternatives --install /usr/bin/clang clang /usr/lib/llvm-7/bin/clang 170

# source /raid/02-dev/osrf/ros-melodic/ros_catkin_ws/devel_isolated/setup.bash
source /home/is/devel/ros/ros_catkin_ws/install_isolated/setup.bash
# source $HOME/dev/ros_melodic/ros_catkin_ws/install_isolated/setup.bash
# source /opt/ros/melodic/setup.bash
# source /raid/02-dev/nio/ws-Release/20200601/l4_ws/devel/setup.bash
# source $HOME/nio/sim/l4_sim_dem/devel/setup.bash


# export TENSORRT_DIR=:"$HOME/dev/nvidia/TensorRT/TensorRT-6.0.1.8"
# export LD_LIBRARY_PATH="$HOME/dev/nvidia/TensorRT/TensorRT-6.0.1.8/lib:$LD_LIBRARY_PATH"
# export PKG_CONFIG_PATH="$HOME/dev/misc/yaml-cpp/yaml-cpp-release-0.5.2-install/lib/pkgconfig:${PKG_CONFIG_PATH}"


export TENSORRT_DIR=:"$HOME/Downloads/nvidia/11.1/TensorRT-7.2.1.6"
export LD_LIBRARY_PATH="$HOME/Downloads/nvidia/11.1/TensorRT-7.2.1.6/lib:$LD_LIBRARY_PATH"
export PATH="$HOME/devel/cv/opencv/opencv-3.4.12-dist/bin:$PATH"


# orocos
export OROCOS_KDL_ROOT="$HOME/devel/robotics/orocos/orocos_kinematics_dynamics/orocos_kdl-dist"
export LD_LIBRARY_PATH="$HOME/devel/robotics/orocos/orocos_kinematics_dynamics/orocos_kdl-dist/lib:$LD_LIBRARY_PATH"


# open3d
export OPEN3D_KDL_ROOT="$HOME/devel/lidar/open3d/Open3D-dist"
export LD_LIBRARY_PATH="$HOME/devel/lidar/open3d/Open3D-dist/lib:$LD_LIBRARY_PATH"

# export BOOST_ROOT=$HOME/dev/misc/boost_1_58_0
# export LD_LIBRARY_PATH="$HOME/dev/misc/boost_1_58_0/boost-install/lib:$LD_LIBRARY_PATH"
# # export PATH="$HOME/dev/misc/boost_1_58_0/boost-install/lib:$PATH"

# export OGRE_ROOT=$HOME/dev/misc/$HOME/dev/misc/ogre/ogre-1.12.0/build
# export LD_LIBRARY_PATH="$HOME/dev/misc/ogre/ogre-1.12.0/build/lib:$LD_LIBRARY_PATH"

# export FLANN_ROOT=$HOME/dev/misc/flann/build
# export LD_LIBRARY_PATH="$HOME/dev/misc/flann/build/lib:$LD_LIBRARY_PATH"


export OPENCV_ROOT="$HOME/devel/cv/opencv/opencv-3.4.12-dist"
export LD_LIBRARY_PATH="$HOME/devel/cv/opencv/opencv-3.4.12-dist/lib:$LD_LIBRARY_PATH"
export PATH="$HOME/devel/cv/opencv/opencv-3.4.12-dist/bin:$PATH"


#For MRPT
export MRPT_DIR="$HOME/devel/lidar/mrpt/mrpt-1.5.8-dist"
export LD_LIBRARY_PATH="$HOME/devel/lidar/mrpt/mrpt-1.5.8-dist/lib:$LD_LIBRARY_PATH"
# export PKG_CONFIG_PATH="$HOME/dev/cv/opencv-3.4.9/opencv-3.4.9-install/lib/pkgconfig:PKG_CONFIG_PATH"

export PCL_DIR="$HOME/devel/lidar/pcl/pcl-pcl-1.9.1-dist"
export LD_LIBRARY_PATH="$HOME/devel/lidar/pcl/pcl-pcl-1.9.1-dist/lib:$LD_LIBRARY_PATH"


export TORCH_DIR=:"$HOME/programme/fair/libtorch"
export LD_LIBRARY_PATH="$HOME/programme/fair/libtorch/lib:$LD_LIBRARY_PATH"



# export LD_LIBRARY_PATH="$HOME/nio/sim/l4_sim_dem/src/l4_sim_dev/ros_nionet/nionet/lib:$LD_LIBRARY_PATH"

# export LD_LIBRARY_PATH="$HOME/nio/sim/l4_sim_dem/src/l4_sim_dev/ros_nionet/nionet/lib:$LD_LIBRARY_PATH"

# export PKG_CONFIG_PATH="$HOME/dev/cv/opencv-4.1.0/opencv/build/unix-install:$HOME/dev/lidar/mrpt/build/pkgconfig:${PKG_CONFIG_PATH}"

# export MRPT_DIR="$HOME/dev/lidar/mrpt/mrpt-1.5.9-install"
# export LD_LIBRARY_PATH="$HOME/dev/lidar/mrpt/mrpt-1.5.9-install/lib:$LD_LIBRARY_PATH"



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
# $SHELL