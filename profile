export EDITOR=vim
export BROWSER=firefox
export SDL_AUDIODRIVER=alsa
export PATH="${PATH}:/opt/android-sdk/extras/:$HOME/.bin/"
export MOZ_USE_OMTC=1
export AURDEST=/tmp/pacaur-cache
export FREETYPE_PROPERTIES="truetype:interpreter-version=38"

# Remove Duplicate Entries in $PATH
PATH="$(echo -n "$PATH" | awk -v RS=: '!($0 in a) {a[$0]; printf("%s%s", length(a) > 1 ? ":" : "", $0)}')"
export PATH