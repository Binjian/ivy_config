# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

[[ $TERM == "dumb" ]] && unsetopt zle && PS1='$ ' && return
#
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git emacs emoji python pip poetry asdf ruby zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
#source "$HOME/.asdf/asdf.sh"

#export PATH="/home/n/.asdf/shims:$PATH"
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#  export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus


# PROXY settings
# PORT="37125"
# PORTFTP="8889"
PORT="20171"
# PORTFTP="20170"
# http proxy util
hp() {
  if [ "$1" = "enable" ]
  then

    if [ -n "$2" ]
    then
      PORT="$2"
    fi

    export HTTP_PROXY=http://127.0.0.1:$PORT
    export HTTPS_PROXY=http://127.0.0.1:$PORT
    export TFDS_HTTP_PROXY=http://127.0.0.1:$PORT
    export TFDS_HTTPS_PROXY=http://127.0.0.1:$PORT
    export TFDS_FTP_PROXY=http://127.0.0.1:$PORT
  else
    export HTTP_PROXY=""
    export HTTPS_PROXY=""
    export TFDS_HTTP_PROXY=""
    export TFDS_HTTPS_PROXY=""
    export TFDS_FTP_PROXY=""
  fi
}

hp enable

# doom emacs
export PATH="/home/n/.config/emacs/bin:$PATH"




# git
git config --global http.proxy http://127.0.0.1:$PORT
## workaround for get_text error
export GIT_INTERNAL_GETTEXT_TEST_FALLBACKS=1

alias cuda12="source ~/bash-init/cuda12.bash; "

# export PATH="/bin:/usr/bin:/usr/local/bin:${PATH}:/usrlocal/cuda/bin"
export PATH="/usr/local/cuda/bin:$PATH"
export LIBRARY_PATH="/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64:$LIBRARY_PATH"
export CPATH="/usr/local/cuda/lib64:/usr/local/cuda/include:$CPATH"
export CUDA_INSTALL_DIR=CUDA_ROOT
export CUDNN_INSTALL_DIR=CUDA_ROOT

function lib_installed() { /sbin/ldconfig -N -v $(sed 's/:/ /' <<< $LD_LIBRARY_PATH) 2>/dev/null | grep $1; }
function check() { lib_installed $1 && echo "$1 is installed" || echo "ERROR: $1 is NOT installed"; }


alias gcc9="sudo update-alternatives --set gcc /usr/bin/gcc-9;sudo update-alternatives --set cpp /usr/bin/cpp-9"
alias gcc10="sudo update-alternatives --set gcc /usr/bin/gcc-10;sudo update-alternatives --set cpp /usr/bin/cpp-10"
alias gcc11="sudo update-alternatives --set gcc /usr/bin/gcc-11;sudo update-alternatives --set cpp /usr/bin/cpp-11"
alias gcc12="sudo update-alternatives --set gcc /usr/bin/gcc-12;sudo update-alternatives --set cpp /usr/bin/cpp-12"

# python
## poetry config
export POETRY_HOME="/dpt/poetry"
export PATH="$POETRY_HOME/bin:$PATH"


## pyenv config
export PYENV_ROOT="/dpt/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# export PATH="/dpt/.pyenv/shims:$PATH"

#ansiweather command
export PATH="$HOME/programme/ansiweather/:$PATH"
alias wthr="ansiweather"
#OPENAI
export OPENAI_API_KEY=
export OPENAI_API4_LANGCHAIN=
export OPENAI_EMACS_KEY=
export OPENAI_ORG_AI_KEY=
export ELEVENLABS_API_KEY=

#### >>> conda initialize >>>
#### !! Contents within this block are managed by 'conda init' !!
##__conda_setup="$('/dpt/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
##if [ $? -eq 0 ]; then
##    eval "$__conda_setup"
##else
##    if [ -f "/dpt/mambaforge/etc/profile.d/conda.sh" ]; then
### . "/dpt/mambaforge/etc/profile.d/conda.sh"  # commented out by conda initialize
##    else
##        export PATH="/dpt/mambaforge/bin:$PATH"
##    fi
##fi
##unset __conda_setup
##
##if [ -f "/dpt/mambaforge/etc/profile.d/mamba.sh" ]; then
##    . "/dpt/mambaforge/etc/profile.d/mamba.sh"
##fi
#### <<< conda initialize <<<
##
#### >>> micromamba initialize >>>
#### !! Contents within this block are managed by 'mamba init' !!
##export MAMBA_EXE="/dpt/micromamba/bin/micromamba";
##export MAMBA_ROOT_PREFIX="/dpt/micromamba";
##__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
##if [ $? -eq 0 ]; then
##    eval "$__mamba_setup"
##else
##    if [ -f "/dpt/micromamba/etc/profile.d/micromamba.sh" ]; then
##        . "/dpt/micromamba/etc/profile.d/micromamba.sh"
##    else
##        export  PATH="/dpt/micromamba/bin:$PATH"  # extra space after export prevents interference from conda init
##    fi
##fi
##unset __mamba_setup
#### <<< micromamba initialize <<<


source "$HOME/.cargo/env"

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/dpt/waymo/google-cloud-sdk/path.zsh.inc' ]; then . '/dpt/waymo/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/dpt/waymo/google-cloud-sdk/completion.zsh.inc' ]; then . '/dpt/waymo/google-cloud-sdk/completion.zsh.inc'; fi

# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm



## export NVM_DIR="$HOME/.nvm"
##[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
##[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi

source "/etc/profile.d/rvm.sh"

export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools

export CLASSPATH=$CLASSPATH:/vlt/devel/misc/pyA2L/antlr-4.11.1-complete.jar

# Created by `pipx` on 2024-03-20 01:19:04
export PATH="$PATH:/home/n/.local/bin"
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
