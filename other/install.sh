#!/bin/sh

CONFIG_PATH=~/.config/bushcraft
INSTALL_ROOT=$HOME
BIN_DIR="$INSTALL_ROOT/bin"

if ! [ -d "$CONFIG_PATH" ] ; then
    mkdir -p "$CONFIG_PATH"
fi

if ! [ -d "$BIN_DIR" ] ; then
    mkdir -p "$BIN_DIR"
fi

