#  __  __    __  __    ______   ______    ______    ______    ______    ______    ______    ______
# /\ \_\ \  /\ \/\ \  /\__  _\ /\  ___\  /\  == \  /\  __ \  /\  == \  /\  == \  /\  ___\  /\  == \
# \ \  __ \ \ \ \_\ \ \/_/\ \/ \ \ \__ \ \ \  __<  \ \  __ \ \ \  __<  \ \  __<  \ \  __\  \ \  __<
#  \ \_\ \_\ \ \_____\   \ \_\  \ \_____\ \ \_\ \_\ \ \_\ \_\ \ \_____\ \ \_____\ \ \_____\ \ \_\ \_\
#   \/_/\/_/  \/_____/    \/_/   \/_____/  \/_/ /_/  \/_/\/_/  \/_____/  \/_____/  \/_____/  \/_/ /_/ 

####################
# Custom Functions #
####################

# TODO :
# ## bat integration
# # https://github.com/sharkdp/bat --documentation
# function batdiff() {
#     git diff --name-only --relative --diff-filter=d | xargs bat --diff
# }

funtion addkey() {
 eval $(ssh-agent -s);
 ssh-add $HOME/.ssh/gitkey;
 ssh -T git@github.com
}
## print help
function helpme() {
  echo "# Configurations"
  echo "viconf  > open vim config."
  echo "tconf   > open tmx config."
  echo "sshconf > open SSH config."
  echo ""

  echo "# Brew"
  echo "cleanbrew > run cleanup & autoremove."
  echo ""

  echo "# Misc"
  echo "cd-icloud   > enter icloud directory."
  echo "cd-obsidian > enter obsidian vault."
  echo "disklist    > diskutil list."
  echo "gits        > enter git directory."
  echo ""

  echo "# TMUX"
  echo "td    >     tmux detach              >   Detach From Current TMX session"
  echo "ta    >     tmux attach -t           >   Attach new tmux session to already running named session"
  echo "tad   >     tmux attach -d -t        >   Detach named tmux session"
  echo "tds   >     _tmux_directory_session  >   Creates or attaches to a session for the current path"
  echo "tkss  >     tmux kill-session -t     >   Terminate named running tmux session"
  echo "tksv  >     tmux kill-server         >   Terminate all running tmux sessions"
  echo "tl    >     tmux list-sessions       >   Displays a list of running tmux sessions"
  echo "ts    >     tmux new-session -s      >   Create a new named tmux session"
}
