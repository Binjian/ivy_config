# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


sudo update-alternatives --set gcc /usr/bin/gcc-7

source /opt/ros/kinetic/setup.bash
source /home/binjianxin/dev/ros_kinetic/ros_catkin_ws/install_isolated/setup.bash
source /home/binjianxin/nio/l4_ws_local/devel/setup.bash
# source /usr/local/cuda-9.0/include
source /home/binjianxin/dev/nvidia/switch-cuda/switch-cuda.sh 9.2

# sudo mount -t nfs 10.110.3.176:/raid/ADAS_L4_Share /mnt/l4_share
# sudo mount -t nfs 10.110.18.93:/ /mnt/server93
# sudo ln -s /media/binjianxin/5c4898a9-1bf9-45a0-abe9-f1be82c92b35 /mnt/raid12t

export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export PATH="$PATH:$HOME/bin:/usr/local/cuda-9.2/bin:/home/binjianxin/dev/nvidia/switch-cuda"
#export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda-9.2/lib64:/usr/local/lib:/usr/local/cuda/extras/CUPTI/lib64"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda-9.2/lib64:/usr/local/cuda/extras/CUPTI/lib64"

export BOOST_ROOT=/home/binjianxin/dev/misc/boost_1_58_0
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/binjianxin/dev/misc/boost_1_58_0/boost-install/lib"


export OPENV=/home/binjianxin/dev/cv/opencv_ocv
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/binjianxin/dev/cv/opencv_ocv/opencv/build/lib"
export PATH="/home/binjianxin/dev/cv/opencv_ocv/opencv/build/bin:$PATH"

# export CUDA_HOME=/usr/local/cuda-9.2:$cuda
# export CUDA_ROOT=/usr/local/cuda-9.2


export OPENCV4_TEST_DATA_PATH="/home/binjianxin/dev/cv/opencv_ocv/opencv_extra/testdata"
export OpenCV4_INCLUDE_DIRS="/home/binjianxin/dev/cv/opencv_ocv/opencv/build/include"
export OpenCV4_LIBS="/home/binjianxin/dev/cv/opencv_ocv/opencv/build/lib"
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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/binjianxin/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/binjianxin/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/binjianxin/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/binjianxin/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
unset SUDO_UID SUDO_GID SUDO_USER

# export PATH="/home/binjianxin/anaconda3/bin:$PATH"  # commented out by conda initialize
