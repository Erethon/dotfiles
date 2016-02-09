WARN_LEVEL=$1
FULL_LEVEL=$2
CURRENT_LEVEL=$(cat /sys/class/power_supply/BAT0/uevent | grep CAPACITY= | cut -d '=' -f 2)
STATUS=$(cat /sys/class/power_supply/BAT0/status)

if [ $CURRENT_LEVEL -lt $WARN_LEVEL ] && [ $STATUS = 'Discharging' ]; then
    /usr/bin/notify-send "Low Battery" "Charge level is at $CURRENT_LEVEL%"
elif [ $CURRENT_LEVEL -ge $FULL_LEVEL ] && [ $STATUS = 'Charging' ]; then
    /usr/bin/notify-send "Battery is charged" "Remove charger"
fi
