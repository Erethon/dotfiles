export LC_CTYPE="en_US.UTF-8"
xset -b
setxkbmap us,gr -option grp:alt_shift_toggle
dwmstatus &
feh --bg-center Downloads/bg.png
exec /usr/local/bin/dwm
