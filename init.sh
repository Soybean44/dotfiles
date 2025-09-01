#!/bin/sh
git submodule update --init --recursive
mkdir -p ../.config
mkdir -p ../.local
stow . --adopt
