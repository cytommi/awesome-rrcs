#!/bin/bash


# Session: backend 
# --1. nvim
# --2. console
# ----a) running console
# ----b) open shell
while [ "$#" -gt 0 ]; do
    curr=$1
    shift

    case "$curr" in 
    "-b")
        tmux new-session -d -s backend
        tmux rename-window -t 0 console
        tmux neww -t backend -n nvim -d 'cd ~/dev/intus/IntusServer && nvim'
        ;;
    *) 
        echo "Invalid command... $curr"
    esac
done
