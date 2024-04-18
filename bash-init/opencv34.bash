
# gcc 7; cuda 9.2; ogre 1.12.0; boost 1.58; opencv 4.1; pcl 1.9.1; 

# sudo update-alternatives --set gcc /usr/bin/gcc-7

# sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/lib/llvm-7/bin/clang++ 170
# sudo update-alternatives --install /usr/bin/clang clang /usr/lib/llvm-7/bin/clang 170

source $HOME/bash-init/switch-cuda/switch-cuda.sh 10.2

# # source /usr/local/cuda-9.0/include`

# # sudo mount -t nfs 10.110.3.176:/raid/ADAS_L4_Share /mnt/l4_share
# # sudo mount -t nfs 10.110.18.93:/ /mnt/server93
# # sudo ln -s /media/binjianxin/5c4898a9-1bf9-45a0-abe9-f1be82c92b35 /mnt/raid12t

export PATH="$PATH:/usr/local/cuda-10.2/bin"
#export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda-9.2/lib64:/usr/local/lib:/usr/local/cuda/extras/CUPTI/lib64"
export LD_LIBRARY_PATH="/usr/local/cuda-10.2/lib64:/usr/local/cuda-10.2/extras/CUPTI/lib64:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="$HOME/Downloads/nvidia/10.2/TensorRT-7.2.1.6/lib:$LD_LIBRARY_PATH"
export LIBRARY_PATH="/usr/local/cuda-10.2/lib64:/usr/local/cuda-10.2/extras/CUPTI/lib64:$LIBRARY_PATH"
export LIBRARY_PATH="$HOME/Downloads/nvidia/10.2/TensorRT-7.2.1.6/lib:$LIBRARY_PATH"
export CPATH="/usr/local/cuda-10.2/lib64:/usr/local/cuda-10.2/include:$CPATH"

export CUDA_ROOT=/usr/local/cuda-10.2

export CUDA_INSTALL_DIR=CUDA_ROOT
export CUDNN_INSTALL_DIR=CUDA_ROOT
export TRT_LIB_DIR="$HOME/Downloads/nvidia/10.2/TensorRT-7.2.1.6"

export SUITESPARSE_ROOT="$HOME/devel/math/SuiteSparse/SuiteSparse-5.8.1-install"

cuda102

export LD_LIBRARY_PATH="$HOME/programme/amd/aocl/2.2/lib:$LD_LIBRARY_PATH"

# export LIBRARY_PATH="$HOME/Downloads/nvidia/10.2/TensorRT-7.2.1.6/lib:$LIBRARY_PATH"
