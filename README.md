# Dotfiles
This repo stores my dotfiles for my linux setup, currently it has dotfiles for zsh, neovim, and kitty

## Usage
In cloning this repo make sure to use the --recursive flag to install the neovim repo as it has a separate repo  
To add the dotfiles to a computer, install the gnu stow package and run `stow .` to add the symlinks to the system.

If you mess this up run the following command:
`git submodule update --init --recursive`

