
# gcc 7; cuda 9.0; ogre 1.12.0; boost 1.58; opencv 4.1; pcl 1.9.1; 

sudo update-alternatives --set gcc /usr/bin/gcc-5

# sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/lib/llvm-7/bin/clang++ 170
# sudo update-alternatives --install /usr/bin/clang clang /usr/lib/llvm-7/bin/clang 170

source $HOME/bash_init/cuda90.bash


# export OPENCV_ROOT=$HOME/dev/cv/opencv-3.4.9/opencv-3.4.9-install
# export LD_LIBRARY_PATH="$HOME/dev/cv/opencv-3.4.9/opencv-3.4.9-install/lib:$LD_LIBRARY_PATH"
# export PATH="$HOME/dev/cv/opencv-3.4.9/opencv-3.4.9-install/bin:$PATH"


# export PKG_CONFIG_PATH="$HOME/dev/cv/opencv-3.4.9/opencv-3.4.9-install/lib/pkgconfig:PKG_CONFIG_PATH"

# export TORCH_DIR=:"$HOME/dev/nvidia/torch/libtorch"
# export LD_LIBRARY_PATH="$HOME/dev/nvidia/torch/libtorch/lib:$LD_LIBRARY_PATH"


# export TENSORRT_DIR=:"$HOME/dev/nvidia/TensorRT/TensorRT-6.0.1.5"
# export LD_LIBRARY_PATH="$HOME/dev/nvidia/TensorRT/TensorRT-6.0.1.5/lib:$LD_LIBRARY_PATH"

export TENSORRT_DIR=:"$HOME/dev/nvidia/TensorRT/TensorRT-5.0.2.6"
export LD_LIBRARY_PATH="$HOME/dev/nvidia/TensorRT/TensorRT-5.0.2.6/lib:$LD_LIBRARY_PATH"




# source /opt/ros/kinetic/setup.bash
# source $HOME/dev/ros_kinetic/ros_catkin_ws/install_isolated/setup.bash
# source $HOME/dev/ros_kinetic/ros_kinetic_ws_install/install_isolated/setup.bash
# source $HOME/dev/ros_kinetic/ros_kinetic_all_ws/install_isolated/setup.bash
