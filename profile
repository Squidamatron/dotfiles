export EDITOR=vim
export BROWSER=firefox
#export SDL_AUDIODRIVER=alsa
export PATH="${PATH}:/opt/android-sdk/extras/:$HOME/.bin/"
export MOZ_USE_OMTC=1
export AURDEST=/tmp/pacaur-cache
export FREETYPE_PROPERTIES="truetype:interpreter-version=38"
export SUDO_ASKPASS="$HOME/.bin/dpass"

# fcitx - language input
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

# Clipmenu
# Add these to ~/.config/environment.d/60-clipmenud.conf for systemd --user session
# KEY=VALUE
export CM_DIR=/tmp
export CM_SELECTIONS="clipboard"
export CM_OUTPUT_CLIP=1

# Remove Duplicate Entries in $PATH
PATH="$(echo -n "$PATH" | awk -v RS=: '!($0 in a) {a[$0]; printf("%s%s", length(a) > 1 ? ":" : "", $0)}')"
export PATH
