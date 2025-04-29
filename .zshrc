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

setopt extended_glob
setopt dot_glob

# End of lines added by compinstall
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(zoxide init zsh)"
source <(/usr/bin/starship init zsh --print-full-init)
source /etc/profile.d/emscripten.sh
source ~/.zprofile

# Aliases
alias v="nvim"
alias notes="nvim -c 'VimwikiIndex'"
alias pyscratch="nvim -c ':set filetype=python'"
alias sv="EDITOR=nvim sudo -e"
alias clock="tty-clock -Bcts"
alias ls="exa -laha"
alias screenshot="sleep 1s; maim -s | xclip -selection clipboard -t image/png -i"
alias update="yay --noconfirm --sudoloop"
alias zath="zathura --fork"

# Keybinds
bindkey -r '^R'
bindkey -r '^t'
bindkey -s '^f' ';tmux-sessionizer\n'
bindkey -s '^t' ';tmux-sessionizer $(pwd)\n'
bindkey -s '^n' ';tmux-sessionizer new\n'

export PATH="$PATH:/home/soybean44/.local/bin/"
export PATH="$PATH:/home/soybean44/dotfiles/scripts/"
export PATH="$PATH:/home/soybean44/.cargo/bin/"
export PATH="$PATH:/home/soybean44/Programs/zig/"
export PATH="$PATH:/sbin/"
export PATH="$PATH:/home/soybean44/.local/share/envision/prefixes/efded882-eeeb-4a70-accf-a00fc4907f0e/bin/"
export PATH=$PATH:~/.modular/pkg/packages.modular.com_mojo/bin/

export EDITOR=nvim
export RESTART_XOCHITL_DEFAULT=1
export GOPATH="/home/soybean44/go"
export MODULAR_HOME="/home/soybean44/.modular"
# Conda
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# Yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# init dwm on login
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then 
  startx
fi
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/.local/lib/mojo
