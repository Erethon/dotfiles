setxkbmap us,gr -option grp:alt_shift_toggle
setxkbmap -option ctrl:nocaps
dwmstatus &
emacs --daemon
exec /usr/local/bin/dwm
