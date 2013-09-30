# Start thunar as a daemon
thunar --daemon &

# Little script to see what my NIC's are doing
nic_mail &

# Colors and whatnot
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# WM of choice
exec awesome

