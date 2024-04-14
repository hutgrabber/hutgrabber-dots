#  __  __    __  __    ______   ______    ______    ______    ______    ______    ______    ______
# /\ \_\ \  /\ \/\ \  /\__  _\ /\  ___\  /\  == \  /\  __ \  /\  == \  /\  == \  /\  ___\  /\  == \
# \ \  __ \ \ \ \_\ \ \/_/\ \/ \ \ \__ \ \ \  __<  \ \  __ \ \ \  __<  \ \  __<  \ \  __\  \ \  __<
#  \ \_\ \_\ \ \_____\   \ \_\  \ \_____\ \ \_\ \_\ \ \_\ \_\ \ \_____\ \ \_____\ \ \_____\ \ \_\ \_\
#   \/_/\/_/  \/_____/    \/_/   \/_____/  \/_/ /_/  \/_/\/_/  \/_____/  \/_____/  \/_____/  \/_/ /_/

###########
# General #
###########

alias disklist="diskutil list"
alias clear_history="cat /dev/null > ~/.bash_history && history -c && reset" 
alias cc='clear'
alias qq='exit'
alias python3='python3.11'

##############
# File Paths #
##############

alias cd-icloud="/Users/sparsh/Library/Mobile\ Documents/com\~apple\~CloudDocs/"
alias cd-obsidian="/Users/sparsh/Library/Mobile\ Documents/iCloud\~md\~obsidian/Documents"
alias gits="cd /Users/sparsh/Developer/Projects/git-repos/"
alias conf="cd $HOME/.config/"

################
# Tmux Aliases #
################

alias td="tmux detach"

#########################
# Config & Source Files #
#########################

alias zsrc="source $HOME/.zshrc"
alias oconf="nvim $HOME/.config/omz/"
alias zconf="nvim $HOME/.zshrc"
alias tconf="nvim $HOME/.config/tmux/tmux.conf"
alias aconf="nvim $HOME/.config/omz/alias.zsh"
alias pconf="nvim $HOME/.config/omz/hutgrabber.zsh"
alias sshconf="nvim $HOME/.ssh/config"
alias starconf="nvim $HOME/.config/starship/starship.toml"
alias viconf="nvim ~/.config/nvim/"
alias vim="nvim"

####################
# Homebrew Aliases #
####################

alias cleanbrew="brew cleanup && brew autoremove"
