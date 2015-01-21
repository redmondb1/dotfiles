shopt -s histappend
shopt -s checkwinsize

source ~/.config/.git-prompt.sh
PROMPT_START='\n\['
PROMPT_END='\]$?:\h:\!:\W$(__git_ps1) '
prompt_command () {
    previous_command_return=$?
    history -a
    history -c
    history -r
    if [ "$OUTPUT_COLOR" == "\033[01;32m" ]
    then
        OUTPUT_COLOR="\033[01;34m"
    else
        OUTPUT_COLOR="\033[01;32m"
    fi
    PS1="$PROMPT_START$OUTPUT_COLOR$PROMPT_END"
}
PROMPT_COMMAND=prompt_command
