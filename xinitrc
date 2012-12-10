#numlockx &


#devmon -s --exec-ondrive "thunar %d" --exec-on-disc "thunar %d" &
thunar --daemon &

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources


#DEFAULT_SESSION=ck-launch-session awesome

#case $1 in
#awesome)
#	exec ck-launch-session awesome
	exec awesome
#	;;
#openbox)
#	exec openbox-session
#	;;
#*)
#	exec $DEFAULT_SESSION
#	;;
#esac
