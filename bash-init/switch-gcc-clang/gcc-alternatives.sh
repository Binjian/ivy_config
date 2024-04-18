#!/usr/bin/env sh

# Remove all existing alternatives
sudo update-alternatives --remove-all gcc

# exit on first error
set -e

# To install gcc toolchain versions 7/8/9.
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo apt update 
sudo apt install -y gcc-5 g++-5 gfortran-5 cpp-5
sudo apt install -y gcc-7 g++-7 gfortran-7 cpp-7
sudo apt install -y gcc-8 g++-8 gfortran-8 cpp-8
sudo apt install -y gcc-9 g++-9 gfortran-9 cpp-9

# GCC 5.x
sudo update-alternatives \
      --install /usr/bin/gcc   gcc   /usr/bin/gcc-5     50 \
      --slave   /usr/bin/g++ g++ /usr/bin/g++-5  \
      --slave   /usr/bin/gfortran gfortran /usr/bin/gfortran-5  \
      --slave   /usr/bin/gcc-nm gcc-nm /usr/bin/gcc-nm-5  \
      --slave   /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-5  \
      --slave   /usr/bin/gcc-ranlib gcc-ranlib /usr/bin/gcc-ranlib-5  \
      --slave   /usr/bin/gcov gcov /usr/bin/gcov-5  \
      --slave   /usr/bin/gcov-dump gcov-dump /usr/bin/gcov-dump-5  \
      --slave   /usr/bin/gcov-tool gcov-tool /usr/bin/gcov-tool-5
      # --slave   /usr/bin/cpp cpp /usr/bin/cpp-5
sudo update-alternatives --install /usr/bin/cpp cpp /usr/bin/cpp-5 50


# GCC 7.x
sudo update-alternatives \
      --install /usr/bin/gcc   gcc   /usr/bin/gcc-7     70 \
      --slave   /usr/bin/g++ g++ /usr/bin/g++-7  \
      --slave   /usr/bin/gfortran gfortran /usr/bin/gfortran-7  \
      --slave   /usr/bin/gcc-nm gcc-nm /usr/bin/gcc-nm-7  \
      --slave   /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-7  \
      --slave   /usr/bin/gcc-ranlib gcc-ranlib /usr/bin/gcc-ranlib-7  \
      --slave   /usr/bin/gcov gcov /usr/bin/gcov-7  \
      --slave   /usr/bin/gcov-dump gcov-dump /usr/bin/gcov-dump-7  \
      --slave   /usr/bin/gcov-tool gcov-tool /usr/bin/gcov-tool-7
      # --slave   /usr/bin/cpp cpp /usr/bin/cpp-7
sudo update-alternatives --install /usr/bin/cpp cpp /usr/bin/cpp-7 70

# GCC 8.x
sudo update-alternatives \
      --install /usr/bin/gcc   gcc   /usr/bin/gcc-8     80 \
      --slave   /usr/bin/g++ g++ /usr/bin/g++-8  \
      --slave   /usr/bin/gfortran gfortran /usr/bin/gfortran-8  \
      --slave   /usr/bin/gcc-nm gcc-nm /usr/bin/gcc-nm-8  \
      --slave   /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-8  \
      --slave   /usr/bin/gcc-ranlib gcc-ranlib /usr/bin/gcc-ranlib-8  \
      --slave   /usr/bin/gcov gcov /usr/bin/gcov-8  \
      --slave   /usr/bin/gcov-dump gcov-dump /usr/bin/gcov-dump-8  \
      --slave   /usr/bin/gcov-tool gcov-tool /usr/bin/gcov-tool-8
      # --slave   /usr/bin/cpp cpp /usr/bin/cpp-8  \

sudo update-alternatives --install /usr/bin/cpp cpp /usr/bin/cpp-8 80      
# GCC 9.x
sudo update-alternatives \
      --install /usr/bin/gcc   gcc   /usr/bin/gcc-9     90 \
      --slave   /usr/bin/g++ g++ /usr/bin/g++-9  \
      --slave   /usr/bin/gfortran gfortran /usr/bin/gfortran-9  \
      --slave   /usr/bin/gcc-nm gcc-nm /usr/bin/gcc-nm-9  \
      --slave   /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-9  \
      --slave   /usr/bin/gcc-ranlib gcc-ranlib /usr/bin/gcc-ranlib-9  \
      --slave   /usr/bin/gcov gcov /usr/bin/gcov-9  \
      --slave   /usr/bin/gcov-dump gcov-dump /usr/bin/gcov-dump-9  \
      --slave   /usr/bin/gcov-tool gcov-tool /usr/bin/gcov-tool-9

sudo update-alternatives --install /usr/bin/cpp cpp /usr/bin/cpp-9 90
      # --slave   /usr/bin/cpp cpp /usr/bin/cpp-9  \