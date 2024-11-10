#!/bin/zsh
alias kconf="nvim $HOME/kali.zsh"
alias htb="cd $HOME/Documents/htb"
alias loot="mkcd loot && touch hashes creds users"
alias hosts="cat /etc/hosts"

function exip() {
  export IP=$1
  echo "Exported IP $1"
}

function addhost() {
  ip=$1
  shift
  hostname="$@"
  sudo /bin/zsh -c "echo \"$ip $hostname\" >> /etc/hosts"
}

function rmhost() {
    # Check the last line of the file
    last_line=$(sudo tail -n 1 /etc/hosts)
    mark="MARK"

    # Check if the last line is the protected line
    if [[ "$last_line" =~ "$mark" ]]; then
        echo "Don't Push It Partner -_-"
    else
        # Remove the last line
        sudo /bin/zsh -c "sed -i '\$d' /etc/hosts"
        echo "Removing:"
        echo "$last_line"
    fi
}
