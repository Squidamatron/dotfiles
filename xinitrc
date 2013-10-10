# Start thunar as a daemon
thunar --daemon &

# Colors and whatnot
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# WM of choice
exec awesome

