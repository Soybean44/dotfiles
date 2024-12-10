#!/bin/sh
git submodule update --init --recursive
mkdir -p ../.config
mkdir -p ../.local
mkdir -p ../.tmux/plugins
stow . --adopt
