#!/bin/sh
git submodule update --init --recursive
mkdir -p ../.config
mkdir -p ../.tmux/plugins
stow . --adopt
