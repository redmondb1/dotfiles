. ~/.env
echo "$(date) bash_profile" >>/tmp/profile_tracker
export BASH_PROFILE=true

if [ -n "$SSH_CLIENT" ]
then
    source ~/.bashrc
else
    (
        cd ~/.config && \
        git pull && \
        git submodule foreach --recursive git pull origin master
    )
fi
