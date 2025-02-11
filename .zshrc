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
alias pyscratch="nvim -c ':set filetype=python'"
alias sv="EDITOR=nvim sudo -e"
alias clock="tty-clock -Bct"
alias ls="exa -laha"
alias screenshot="sleep 1s; maim -s | xclip -selection clipboard -t image/png -i"
alias update="yay --noconfirm --sudoloop"
alias zathura="devour zathura"

# Keybinds
bindkey -r '^R'
bindkey -r '^t'
bindkey -s '^f' ';tmux-sessionizer\n'
bindkey -s '^t' ';tmux\n'
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

# --------------
# n^3 config
# --------------

# This second option relies on you're terminal using the catppuccin theme and well use true catppuccin colors:
BLK="03" CHR="03" DIR="04" EXE="02" REG="07" HARDLINK="05" SYMLINK="05" MISSING="08" ORPHAN="01" FIFO="06" SOCK="03" UNKNOWN="01"

# Export Context Colors
export NNN_COLORS="#04020301;4231"

# Finally Export the set file colors ( Both options require this)
export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$UNKNOWN"

n ()
{
    # Block nesting of nnn in subshells
    [ "${NNNLVL:-0}" -eq 0 ] || {
        echo "nnn is already running"
        return
    }

    # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
    # If NNN_TMPFILE is set to a custom path, it must be exported for nnn to
    # see. To cd on quit only on ^G, remove the "export" and make sure not to
    # use a custom path, i.e. set NNN_TMPFILE *exactly* as follows:
    #      NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    # The command builtin allows one to alias nnn to n, if desired, without
    # making an infinitely recursive alias
    command nnn "$@"

    [ ! -f "$NNN_TMPFILE" ] || {
        . "$NNN_TMPFILE"
        rm -f -- "$NNN_TMPFILE" > /dev/null
    }
}

# --------------
# End of n^3 cfg
# --------------

# init dwm on login
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then 
  startx
fi
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/.local/lib/mojo
