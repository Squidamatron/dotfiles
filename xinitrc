# Start thunar as a daemon
#thunar --daemon &
numlockx &

# Colors and whatnot
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Font stuffs
xset +fp /usr/share/fonts/local
xset fp rehash

# WM of choice
#exec awesome

case $1 in
dwm)
	sh $HOME/.config/dwm-statusbar &
	feh --bg-center ~/Pictures/Backgrounds/1367459225672.jpg
	exec dwm
	;;
awesome)
	exec awesome
	;;
*)
	sh $HOME/.config/dwm-statusbar &
	feh --bg-center ~/Pictures/Backgrounds/1367459225672.jpg
	exec dwm
	;;
esac
