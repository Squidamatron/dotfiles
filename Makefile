chromeDir=$(shell cat ~/.moonchild\ productions/pale\ moon/profiles.ini | awk -F\= '/Path/ {print $$2}')

install: install-vim install-bash \
	 install-tmux install-browser \
	 install-xinit install-xresources \
	 install-ncmpcpp install-mplayer \
	 install-mpd

install-vim:
	ln -s `pwd`/vimrc ~/.vimrc

install-bash:
	ln -s `pwd`/vimrc ~/.bashrc

install-tmux:
	ln -s `pwd`/tmux.conf ~/.tmux.conf

install-browser:
	ln -s `pwd`/userChrome.css ~/.moonchild\ productions/pale\ moon/$(chromeDir)/chrome/userChrome.css

install-xinit:
	ln -s `pwd`/xinitrc ~/.xinitrc

install-xresources:
	ln -s `pwd`/Xresources ~/.Xresources

install-ncmpcpp:
	mkdir -p ~/.ncmpcpp
	ln -s `pwd`/ncmpcpp/config ~/.ncmpcpp/config

install-mplayer:
	mkdir -p ~/.mplayer
	ln -s `pwd`/mplayer/config ~/.mplayer/config

install-mpd:
	mkdir -p ~/.mpd
	ln -s `pwd`/mpd/mpd.conf ~/.mpd/mpd.conf
