WARN_LEVEL=$1
CURRENT_LEVEL=$(cat /sys/class/power_supply/BAT0/uevent | grep CAPACITY= | cut -d '=' -f 2)

if [ $CURRENT_LEVEL -lt $WARN_LEVEL ]; then
    /usr/bin/notify-send "Low Battery" "Charge level is at $CURRENT_LEVEL%"
fi
