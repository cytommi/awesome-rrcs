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
        tmux rename-window console 
        tmux split-window  -v 'cd $INTUS/IntusServer && yarn start-docker'
        tmux neww -t backend -n nvim -d 'cd $INTUS/IntusServer && nvim'
        ;;
    "-f")
        tmux new-session -d -s frontend
        tmux rename-window console 
        tmux split-window  -h 'cd $INTUS/intus-website-frontend && yarn start'
        tmux neww -t frontend -n nvim -d 'cd $INTUS/intus-website-frontend  && nvim'
        ;;
    "-d")
        tmux new-session -d -s data-pipeline
        tmux rename-window shell
        tmux neww -t data-pipeline -n nvim -d 'cd $INTUS/data_extraction_pipeline && nvim'
        ;;
    *) 
        echo "Invalid command... $curr"
    esac
done
