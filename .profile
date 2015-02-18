. ~/.env
echo "$(date) profile" >>/tmp/profile_tracker
export PROFILE=true

/bin/bash ~/.bash_profile
