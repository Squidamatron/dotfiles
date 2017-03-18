chromeDir=$(shell cat ~/.moonchild\ productions/pale\ moon/profiles.ini | awk -F\= '/Path/ {print $$2}')

install: install-vim \
	 install-bash \
	 install-tmux \
	 install-browser \
	 install-xprofile \
	 install-xresources \
	 install-ncmpcpp \
	 install-mplayer \
	 install-mpd \
	 install-compton \
	 install-polybar \
	 install-bspwm \
	 install-sxhkd

install-vim:
	ln -s `pwd`/vimrc ~/.vimrc

install-bash:
	ln -s `pwd`/vimrc ~/.bashrc

install-tmux:
	ln -s `pwd`/tmux.conf ~/.tmux.conf
	ln -s `pwd`/tmux ~/.tmux

install-browser:
	ln -s `pwd`/userChrome.css ~/.moonchild\ productions/pale\ moon/$(chromeDir)/chrome/userChrome.css

install-xprofile:
	ln -s `pwd`/xprofile ~/.xprofile

install-xresources:
	ln -s `pwd`/Xresources ~/.Xresources

install-ncmpcpp:
	mkdir -p ~/.ncmpcpp
	ln -s `pwd`/ncmpcpp/config ~/.ncmpcpp/config

install-mplayer:
	mkdir -p ~/.mplayer
	ln -s `pwd`/mplayer/config ~/.mplayer/config

install-mpd:
	mkdir -p ~/.config/mpd
	ln -s `pwd`/config/mpd/mpd.conf ~/.config/mpd/mpd.conf

install-compton:
	mkdir -p ~/.config/compton
	ln -s `pwd`/config/compton/config ~/.config/compton/config

install-polybar:
	mkdir -p ~/.config/polybar
	ln -s `pwd`/config/polybar/config ~/.config/polybar/config
	ln -s `pwd`config/polybar/launch.sh ~/.config/polybar/launch.sh

install-bspwm:
	mkdir -p ~/.config/bspwm
	ln -s `pwd`/config/bspwm/bspwmrc ~/.config/bspwm/bspwmrc

install-sxhkd:
	mkdir -p ~/.config/sxhkd/
	ln -s `pwd`/config/sxhkd/sxhkdrc ~/.config/sxhkd/sxhkdrc
