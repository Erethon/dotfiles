setxkbmap us,gr,ru -variant ,,phonetic -option grp:alt_shift_toggle -option ctrl:nocaps
export LC_CTYPE="en_US.UTF-8"
while true; do
   xsetroot -name "$(mail.sh) $(date +"%F %R")"
   sleep 1m
done &
ssh-agent /usr/local/bin/dwm
