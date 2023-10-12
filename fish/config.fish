if status is-interactive
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec sway
    end
end
