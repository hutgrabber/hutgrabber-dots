#   __  __    __  __    ______   ______    ______    ______    ______    ______    ______    ______
#  /\ \_\ \  /\ \/\ \  /\__  _\ /\  ___\  /\  == \  /\  __ \  /\  == \  /\  == \  /\  ___\  /\  == \
#  \ \  __ \ \ \ \_\ \ \/_/\ \/ \ \ \__ \ \ \  __<  \ \  __ \ \ \  __<  \ \  __<  \ \  __\  \ \  __<
#   \ \_\ \_\ \ \_____\   \ \_\  \ \_____\ \ \_\ \_\ \ \_\ \_\ \ \_____\ \ \_____\ \ \_____\ \ \_\ \_\
#    \/_/\/_/  \/_____/    \/_/   \/_____/  \/_/ /_/  \/_/\/_/  \/_____/  \/_____/  \/_____/  \/_/ /_/


#########################
# environment variables #
#########################

## zsh-vars
export ZSH="$HOME/.config/.oh-my-zsh"
export XDG_CONFIG_HOME="$HOME/.config/"
export EDITOR="nvim"
export ZSH_THEME=""
export CASE_SENSITIVE="true"
export DISABLE_MAGIC_FUNCTIONS="true" # url pasting
export HIST_STAMPS="mm/dd/yyyy"
export ZSH_CUSTOM="$HOME/.config/omz/"
export PAGER=bat
## custom-vars
export iCloud="/Users/sparsh/Library/Mobile\ Documents/com\~apple\~CloudDocs/"
export NSE="/opt/homebrew/Cellar/nmap/7.94_1/share/nmap/scripts"

## tmux-vars
export ZSH_TMUX_AUTOCONNECT="true"
export ZSH_TMUX_AUTOSTART="true" # Automatically Start TMX
export ZSH_TMUX_AUTOQUIT="false" # Automatically Quit TMX
export TMUX_PLUGIN_MANAGER_PATH="$HOME/.config/tpm/plugins/"
## starship-vars
export STARSHIP_CONFIG="$HOME/.config/starship.toml"

###############
# omz plugins #
###############

plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
    tmux
)

###################
# loading scripts #
###################

## sourcing hacking-assistnce
source $HOME/.config/omz/hacking.zsh

## sourcing aliases
source $HOME/.config/omz/aliases.zsh

## sourcing functions
source $HOME/.config/omz/environment.zsh

## sourcing oh-my-zsh
source $ZSH/oh-my-zsh.sh

## loading starship
eval "$(starship init zsh)"

# Created by `pipx` on 2024-04-16 14:04:22
export PATH="$PATH:/home/hutgrabber/.local/bin"
