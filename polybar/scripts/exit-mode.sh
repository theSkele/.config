#!/bin/bash

STATE_FILE="/tmp/i3-exit-mode"

case "$1" in
    "start")
        echo "active" > "$STATE_FILE"
        ;;
    "stop")
        rm -f "$STATE_FILE"
        # Restart polybar when stopping exit mode
        $HOME/.config/polybar/launch.sh &
        ;;
    "status")
        if [ -f "$STATE_FILE" ]; then
            echo "EXIT MODE - (R)eboot (S)hutdown (L)ock (Q)uit (ESC)ape"
        else
            echo ""
        fi
        ;;
esac