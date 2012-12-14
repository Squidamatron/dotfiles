#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /etc/profile
export EDITOR=vim
export MPD_HOST=ArchieMPD@localhost
export SDL_AUDIODRIVER=alsa

PS1='[\u@\h \W]\$ '

# because no colors is for looooserssss!
alias ls='ls --color=auto'

# run windows executables that only output in the console
alias winecmd='wineconsole --backend=user'

# get a quick view of some system temperatures
alias atitemp='aticonfig --odgt'
alias cputemp='sensors coretemp-isa-0000'

# get a quick view of GPU clocks/load
alias atiload='aticonfig --od-getclock'

# No program should use capitals! Because I'll never remember it.
alias amdoverdrivectrl='AMDOverdriveCtrl'

# creat a video of the current screen
alias screencap="ffmpeg -f x11grab -s wxga -r 25 -i :0.0 -sameq /home/jon/Videos/recorded/out.mpg"

# determine which package owns a given file
alias pacown='pacman -Qo'

# alias android-connect='go-mtpfs /home/jon/.android_mount/'
alias android-disconnect='fusermount -u /home/jon/.android_mount/'

function android-connect {
	go-mtpfs /home/jon/.android_mount/ &
}

# view all users on the current system with ease
function listusers {
	awk -F":" '{ print "username: " $1 "\t\tuid:" $3 }' /etc/passwd
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

# Download youtube videos! Python2.x is needed, but 3 is used, this fixes that!
#alias youtube-dl='python2 /usr/local/bin/youtube-dl'

# Correct the mouse after steam has run
alias fixmouse='xsetroot -cursor_name left_ptr'

#alias implication='\033[32m >implying implications'

#if [ -f "$HOME/.bash_ps1" ]; then

#. "$HOME/.bash_ps1"

#fi
