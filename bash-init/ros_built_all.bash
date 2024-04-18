


sudo update-alternatives --set gcc /usr/bin/gcc-7
source /home/binjianxin/dev/nvidia/switch-cuda/switch-cuda.sh 9.2


source /home/binjianxin/dev/ros_kinetic/ros_kinetic_all_ws/install_isolated/setup.bash

export PATH="/home/binjianxin/dev/misc/ogre/ogre-1.9.1/build/bin:$PATH"
export LD_LIBRARY_PATH=":/home/binjianxin/dev/misc/ogre/ogre-1.9.1/build/lib:$LD_LIBRARY_PATH"


export PATH="$PATH:$HOME/bin:/usr/local/cuda-9.2/bin:/home/binjianxin/dev/nvidia/switch-cuda"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda-9.2/lib64:/usr/local/cuda/extras/CUPTI/lib64"


export BOOST_ROOT=/home/binjianxin/dev/misc/boost_1_58_0
export LD_LIBRARY_PATH="/home/binjianxin/dev/misc/boost_1_58_0/boost-install/lib:$LD_LIBRARY_PATH"
export PATH="/home/binjianxin/dev/misc/boost_1_58_0/boost-install/lib:$PATH"



export OPENCV_ROOT=/home/binjianxin/dev/cv/opencv_ocv
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/binjianxin/dev/cv/opencv_ocv/opencv/build/lib"
export PATH="/home/binjianxin/dev/cv/opencv_ocv/opencv/build/bin:$PATH"

export OPENCV4_TEST_DATA_PATH="/home/binjianxin/dev/cv/opencv_ocv/opencv_extra/testdata"
export OpenCV4_INCLUDE_DIRS="/home/binjianxin/dev/cv/opencv_ocv/opencv/build/install/include"
export OpenCV4_LIBS="/home/binjianxin/dev/cv/opencv_ocv/opencv/build/install/lib"
export OPENCV3_TEST_DATA_PATH="/home/binjianxin/dev/cv/opencv_ocv3/opencv_extra/testdata"
export OpenCV3_INCLUDE_DIRS="/home/binjianxin/dev/cv/opencv_ocv3/opencv/build/include"
export OpenCV3_LIBS="/home/binjianxin/dev/cv/opencv_ocv3/opencv/build/lib"

