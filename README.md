# Hutgrabber's DotFiles

**Working Tree**
```bash
.
├── .config
│   ├── bat
│   ├── nvim
│   ├── nvim-vscode
│   ├── omz
│   ├── starship.toml
│   └── tmux
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
└── plugins
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

