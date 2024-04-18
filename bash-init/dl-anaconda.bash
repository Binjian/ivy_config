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



source /home/binjianxin/anaconda3/bin/activate
conda init

source activate dl

export PATH="$PATH:/home/binjianxin/anaconda3/bin"
