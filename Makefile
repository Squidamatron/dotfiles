chromeDir=$(shell cat ~/.moonchild\ productions/pale\ moon/profiles.ini | awk -F\= '/Path/ {print $$2}')

install: install-vim install-bash \
	 install-tmux install-browser \
	 install-xprofile install-xresources \
	 install-ncmpcpp install-mplayer \
	 install-mpd \
	 install-infinality

install-vim:
	ln -s `pwd`/vimrc ~/.vimrc

install-bash:
	ln -s `pwd`/vimrc ~/.bashrc

install-tmux:
	ln -s `pwd`/tmux.conf ~/.tmux.conf

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
	ln -s `pwd`/mpd/mpd.conf ~/.config/mpd/mpd.conf

install-infinality:
	ln -s `pwd`/infinality ~/.infinality
	echo "Install infinality via the package manager!"
