#
# ~/.bash_profile
#

# source ~/.bashrc if it exists and this is an interactive shell
if [[ $- == *i* ]] && [ -r ~/.bashrc ]; then . ~/.bashrc; fi

source $HOME/.common_profile
