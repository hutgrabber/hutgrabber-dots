# Hutgrabber's DotFiles

### Getting Started
```bash
git clone git@github.com:hutgrabber/hutgrabber-dots.git $HOME/.dotfiles
```
**Working Tree**
```bash
$HOME
├── .config
│   ├── bat/
│   ├── nvim/
│   ├── nvim-vscode/
│   ├── omz/
│   ├── starship.toml
│   └── tmux/
├── .stow-ignore-local
├── .zshrc
└── README.md
```
### OhMyZsh
For a fresh OMZ setup, first install OhMyZsh into the terminal:
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
OhMyZsh will use the `$ZSH` variable, which points to the `.oh-my-zsh` directory. In this case - `$HOME/.config/.oh-my-zsh/`. Which is set in the `.zshrc` file by default. The `$ZSH_CUSTOM` variable points to custom OMZ plugins. Which is the `$HOME/.config/omz` folder.

**Working Tree**
```bash
omz
├── aliases.zsh
├── environment.zsh
├── hacking.zsh
└── plugins/
```
While adding plugins to the plugins directory, make sure to strip all git files for smooth management.

### Starship Prompt
Start by installing the starship binary via package manager or from git. Put it in `$PATH`:
```bash
curl -sS https://starship.rs/install.sh | sh
```

Finish by adding the following to `.zshrc`:
```bash
eval $(starship init zsh)
```
Starship uses variables to help it point to custom directories. In this case:
```bash
export STARSHIP_CONFIG="$HOME/.config/starship.toml"
```
### TMUX
The configuration file is at `$HOME/.config/tmux/tmux.conf` which is synced with this repository. However, the plugin manager consists of stand alone repositories which clashes while pushing.

For setting up TPM, create a new directory `$HOME/.config/tpm/plugins` & clone the TPM repository in it. This gets called in the tmx-conf file `run "$HOME/.config/tpm/plugins/tpm/tpm"`.

**Working Tree**
```bash
tpm
└── plugins
    ├── tmux
    ├── tmux-sensible
    ├── tmux-yank
    ├── tpm
    └── vim-tmux-navigator
```
Clone the TPM repo:
```bash
git clone https://github.com/tmux-plugins/tpm $HOME/.config/tpm/plugins/tpm
```
All TPM plugins should be installed in the plugins directory.

### NVIM
We are using the *LazyVim* configuration.

**Working Tree**
```bash
nvim
├── init.lua
├── lazy-lock.json
├── lazyvim.json
├── lua
│   ├── config
│   │   ├── autocmds.lua
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   └── options.lua
│   └── plugins
│       ├── INSTRUCTIONS.txt
│       ├── colorshemes.lua
│       ├── lazy-git.lua
│       ├── mason.lua
│       └── plugins.lua
└── stylua.toml
```

