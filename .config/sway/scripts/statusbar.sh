#!/bin/sh


bat_charging=$(cat /sys/class/power_supply/BAT0/status)
bat_perc=$(cat /sys/class/power_supply/BAT0/capacity)
muted=$(pamixer --get-mute)
vol_perc=$(pamixer --get-volume)
current_date=$(date +'%a %F')
current_time=$(date +'%H:%M')


if [ "${bat_charging}" = Charging ]; then
  bat_status='🔌'
elif [ "${bat_charging}" = Discharging ]; then
  bat_status='🔋'
else
  bat_status='⚡'
fi

if [ "${muted}" = true ]; then
  vol_status='🔇'
elif [ "${vol_perc}" -le 30 ]; then
  vol_status='🔈'
elif [ "${vol_perc}" -le 70 ]; then
  vol_status='🔉'
else
  vol_status='🔊'
fi

printf '%s %d%% %s %d%% 📅 %s 🕓 %s\n' "${vol_status}" "${vol_perc}" "${bat_status}" "${bat_perc}" "${current_date}" "${current_time}"
