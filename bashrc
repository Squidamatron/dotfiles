#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#source /etc/profile
#export EDITOR=vim
#export BROWSER=firefox
##export MPD_HOST=ArchieMPD@localhost
#export SDL_AUDIODRIVER=alsa
#export PATH=$PATH:/opt/android-sdk/extras/:$HOME/.bin/
#export MOZ_USE_OMTC=1
#export AURDEST=/tmp/aur-cache
#export FREETYPE_PROPERTIES="truetype:interpreter-version=38"

# git-prompt variables
export GIT_PS1_SHOWUPSTREAM="auto"
export GIT_PS1_SHOWDIRTYSTATE="auto"
export GIT_PS1_SHOWSTASHSTATE="auto"
export GIT_PS1_SHOWUNTRACKEDFILES="auto"

source /usr/share/fzf/key-bindings.bash
source ~/.git-prompt.sh

PS1='\[\e[1;37m\]┌─[\e[1;37m\]\u\[\e[1;37m\]][\[\e[1;34m\]\h\[\e[1;37m\]][\[\e[1;32m\]\W\[\e[1;33m\]$(__git_ps1 " (%s)")\[\e[1;37m\]]\n\[\e[1;37m\]└── \[\e[0m\]'
PS2="└── "

# base16 colorschmes
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
	[ -s "$BASE16_SHELL/profile_helper.sh" ] && \
		eval "$("$BASE16_SHELL/profile_helper.sh")"

source ~/.config/base16-fzf/bash/base16-default-dark.config

# because no colors is for looooserssss!
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'

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

function aura {
	# Information Gathering
	package="$1"
	check=$(grep --text -w -c "installed $1 " /var/log/pacman.log)

	if [ "$check" != '0' ]; then
		first_install=$(grep --text -w "installed $1 " /var/log/pacman.log | cut -c 1-18)
		num_upgrades=$(grep --text -w -c "upgraded $1 " /var/log/pacman.log)
		recent_actions=$(grep --text -w -E "(upgraded|removed|installed) $1 " /var/log/pacman.log | tail -n 5)

		# Color Definition
		ORANGE='\033[0;33m'
		NC='\033[0m'

		echo -e "${ORANGE}Package${NC}\t\t: $package"
		echo -e "${ORANGE}First Install${NC}\t: $first_install"
		echo -e "${ORANGE}Upgrades${NC}\t: $num_upgrades"
		echo -e "${ORANGE}Recent Actions${NC}\t:\n$recent_actions\n"
	else
		# Color Definition
		RED='\033[1;31m'
		YELLOW='\033[1;33m'
		NC='\033[0m'

		echo -e "${RED}Error: ${NC}Package not found!: ${YELLOW}$package${NC}\n"
	fi
}

function _dcBackwardsPathCompletion() {
	# Note: must be used with complete -o nospace
	# $1=cmd $2=cur $3=pre
	local cwd="${2:-$PWD}"
	local upd="${cwd%/*}"
	if [[ "$cwd" == '/' ]]; then
		return
	#elif [[ "$upd" == '' ]]; then
	#	COMPREPLY=('/')
	else
		COMPREPLY=("${upd:-/}")
	fi
}

function dc() { cd "${1:-..}"; }
complete -o nospace -F _dcBackwardsPathCompletion dc

# autojump addition
#[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh
#source /etc/profile.d/autojump.bash
# zoxide (autojump replacement
eval "$(zoxide init bash --cmd j)"

#if [ -f "$HOME/.bash_ps1" ]; then

#. "$HOME/.bash_ps1"

#fi
