setxkbmap us,gr -option grp:alt_shift_toggle
setxkbmap -option ctrl:nocaps
export LC_CTYPE="en_US.UTF-8"
while true; do
   xsetroot -name "$(date +"%F %R")"
   sleep 1m
done &
ssh-agent /usr/local/bin/dwm
