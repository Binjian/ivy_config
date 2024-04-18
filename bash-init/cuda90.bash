
# gcc 7; cuda 9.2; ogre 1.12.0; boost 1.58; opencv 4.1; pcl 1.9.1; 

# sudo update-alternatives --set gcc /usr/bin/gcc-5

# sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/lib/llvm-7/bin/clang++ 170
# sudo update-alternatives --install /usr/bin/clang clang /usr/lib/llvm-7/bin/clang 170

source $HOME/dev/nvidia/switch-cuda/switch-cuda.sh 9.0


# # source /usr/local/cuda-9.0/include`

# # sudo mount -t nfs 10.110.3.176:/raid/ADAS_L4_Share /mnt/l4_share
# # sudo mount -t nfs 10.110.18.93:/ /mnt/server93
# # sudo ln -s /media/$HOME/5c4898a9-1bf9-45a0-abe9-f1be82c92b35 /mnt/raid12t

export PATH="$PATH:$HOME/bin:/usr/local/cuda-9.0/bin:$HOME/dev/nvidia/switch-cuda"
#export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda-9.2/lib64:/usr/local/lib:/usr/local/cuda/extras/CUPTI/lib64"
export LD_LIBRARY_PATH="/usr/local/cuda-9.0/lib64:/usr/local/cuda-9.0/extras/CUPTI/lib64:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="$HOME/dev/nvidia/TensorRT/TensorRT-5.0.2.6/lib:$LD_LIBRARY_PATH"
export CUDA_ROOT=/usr/local/cuda-9.0
