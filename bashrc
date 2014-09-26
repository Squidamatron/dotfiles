#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /etc/profile
export EDITOR=vim
export MPD_HOST=ArchieMPD@localhost
export SDL_AUDIODRIVER=alsa
export PATH=$PATH:/opt/android-sdk/extras/:$(ruby -rubygems -e "puts Gem.user_dir")/bin
export GEM_HOME=$(ruby -rubygems -e "puts Gem.user_dir")

# git-prompt variables
export GIT_PS1_SHOWUPSTREAM="auto"
export GIT_PS1_SHOWDIRTYSTATE="auto"
export GIT_PS1_SHOWSTASHSTATE="auto"
export GIT_PS1_SHOWUNTRACKEDFILES="auto"

#PS1='[\u@\h \W]\$ '
#PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

source ~/.git-prompt.sh


red="\[\e[1;37m\]"
yellow="\[\e[1;33m\]"

if [ `id -u` -eq "0" ]; then
		root="${yellow}"
	else
		root="${red}"
fi

#PS1='\[\e[0;37m\]┌─[\e[1;37m\]\u\[\e[0;37m\]][\[\e[0;34m\]\h\[\e[0;37m\]][\[\e[0;32m\]\W\[\e[1;33m\]$(__git_ps1 " (%s)")\[\e[0;37m\]]\n\[\e[0;37m\]└──╼ \[\e[0m\]'
#PS1='\[\e[0;37m\]┌─[\e[1;37m\]\u\[\e[0;37m\]][\[\e[0;34m\]\h\[\e[0;37m\]][\[\e[0;32m\]\W\[\e[1;33m\]$(__git_ps1 " (%s)")\[\e[0;37m\]]\n\[\e[0;37m\]└──▬ \[\e[0m\]'
#PS1='\[\e[0;37m\]┌─[\e[1;37m\]\u\[\e[0;37m\]][\[\e[0;34m\]\h\[\e[0;37m\]][\[\e[0;32m\]\W\[\e[1;33m\]$(__git_ps1 " (%s)")\[\e[0;37m\]]\n\[\e[0;37m\]└── \[\e[0m\]'
PS1='\[\e[1;37m\]┌─[\e[1;37m\]\u\[\e[1;37m\]][\[\e[1;34m\]\h\[\e[1;37m\]][\[\e[1;32m\]\W\[\e[1;33m\]$(__git_ps1 " (%s)")\[\e[1;37m\]]\n\[\e[1;37m\]└── \[\e[0m\]'
PS2="╾──╼ "

# because no colors is for looooserssss!
alias ls='ls --color=auto'

# get a quick view of some system temperatures
alias nvidiatemp='nvidia-smi -q -d TEMPERATURE'
alias cputemp='sensors coretemp-isa-0000'

# creat a video of the current screen
alias screencap="ffmpeg -f x11grab -s wxga -r 25 -i :0.0 -sameq /home/jon/Videos/recorded/out.mpg"

# determine which package owns a given file
alias pacown='pacman -Qo'

# alias android-connect='go-mtpfs /home/jon/.android_mount/'
alias android-disconnect='fusermount -u /home/jon/.android_mount/'

function android-connect {
	go-mtpfs /home/jon/.android_mount/ &
}

# search man page for only the option you list
function manopt {
	man $1 | sed 's/.\x08//g' | sed -n "/^\s\+-\+$2\b/,/^\s*$/p" | sed '$d;';
}

# view all users on the current system with ease
function listusers {
	awk -F":" '{ print "username: " $1 "\t\tuid:" $3 }' /etc/passwd
}

# see where a shortened url points
function shorty {
	curl -s -D - -o /dev/null $1 | grep -i ^location
}

# easy extract
extract () {
  if [ -f "$1" ] ; then
    case "$1" in
        *.tar.bz2)  tar xvjf "$1"   ;;
        *.tar.gz)   tar xvzf "$1"   ;;
        *.bz2)      bunzip2 "$1"    ;;
        *.rar)      rar x "$1"      ;;
        *.gz)       gunzip "$1"     ;;
        *.tar)      tar xvf "$1"    ;;
        *.tbz2)     tar xvjf "$1"   ;;
        *.tgz)      tar xvzf "$1"   ;;
        *.zip)      unzip "$1"      ;;
        *.Z)        uncompress "$1" ;;
        *.7z)       7z x "$1"       ;;
        *)          echo "don't know how to extract '$1'..." ;;
    esac
else
echo "'$1' is not a valid file!"
fi
}

# Dictionary access right from the cli
function define {
	curl dict://dict.org/d:"$1"
}

function ytstream {
	mplayer -cache 1000000 -cache-min 5 -cookies -cookies-file /tmp/cookie.txt $(youtube-dl -g --cookies /tmp/cookie.txt "$1")
}

function twitch {
	livestreamer --twitch-cookie "_twitch_session_id=e91904e607371562d9581dc100541bb5; persistent 57157465%3A1da1c20f8a488341ea30dbcc84%3A1262ef44f91c17864d8de836e7" -v twitch.tv/"$1" source
}

# autojump addition
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

#if [ -f "$HOME/.bash_ps1" ]; then

#. "$HOME/.bash_ps1"

#fi
