if [ -n "$TMUX" ]
then
    source ~/.bashrc
    return
fi

echo '.bash_profile'

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

# read ssh key
eval `keychain --eval id_rsa --quiet --quick`

(
    cd ~/.config && \
    git pull && \
    git submodule foreach --recursive git pull origin master
)

export HISTCONTROL=ignoreboth
export HISTSIZE=
export HISTFILESIZE=
