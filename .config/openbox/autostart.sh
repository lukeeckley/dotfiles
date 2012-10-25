# This shell script is run before Openbox launches.
# Environment variables set here are passed to the Openbox session.

# Set a background color
BG=""
if which hsetroot >/dev/null 2>&1; then
    BG=hsetroot
else
    if which esetroot >/dev/null 2>&1; then
	BG=esetroot
    else
	if which xsetroot >/dev/null 2>&1; then
	    BG=xsetroot
	fi
    fi
fi
test -z $BG || $BG -solid "#303030"

thunar --daemon &
xscreensaver -no-splash &

xfce4-panel &
(sleep 2 && volumeicon) &
#(sleep 3 && /usr/bin/wicd-client) &
# Commented out wicd-client after it was starting up twice... Must be starting up somewhere else.
(sleep 4 && xfce4-power-manager) & 
xrdb -merge /home/luke/.Xresources &