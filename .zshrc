# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/soybean44/.zshrc'

autoload -Uz compinit
compinit

zstyle ':completion::complete:*' gain-privileges 1
zstyle ':completion:*' menu select
zstyle :compinstall filename '/home/otaj/.zshrc'
zstyle ':completion:*' rehash true
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
setopt COMPLETE_ALIASES

# End of lines added by compinstall
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(zoxide init zsh)"
source <(/usr/bin/starship init zsh --print-full-init)

# Aliases
alias v="nvim"
alias pyscratch="nvim -c ':set filetype=python'"
alias sv="EDITOR=nvim sudo -e"
alias clock="tty-clock -Bct"
alias ls="exa -lah"
alias screenshot="sleep 1s; maim -s | xclip -selection clipboard -t image/png -i"

# Keybinds
bindkey -r '^R'
bindkey -s '^f' 'tmux-sessionizer\n'
bindkey -s '^s' 'tmux-sessionizer new\n'

export PATH="$PATH:/home/soybean44/.local/bin/"
export PATH="$PATH:/home/soybean44/dotfiles/scripts/"
export PATH="$PATH:/home/soybean44/.cargo/bin/"
export PATH="$PATH:/home/soybean44/Programs/zig/"
export PATH="$PATH:/sbin/"
export PATH=$PATH:~/.modular/pkg/packages.modular.com_mojo/bin/

export EDITOR=nvim
export RESTART_XOCHITL_DEFAULT=1
export MODULAR_HOME="/home/soybean44/.modular"
# Conda
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# init dwm on login
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then 
  startx
fi
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/.local/lib/mojo
