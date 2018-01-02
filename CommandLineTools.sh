#!/bin/bash

# Install Command Line Tools

macOSVers=$(sw_vers -productVersion | awk -F "." '{print $2}')

cliTemp="/tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress" && touch "${cliTemp}"

if [[ "${macOSVers}" -gt 9 ]]; then
  cli=$(/usr/sbin/softwareupdate -l | awk '/\*\ Command Line Tools/ { $1=$1;print }' | grep "${macOSVers}" | sed 's/^[[ \t]]*//;s/[[ \t]]*$//;s/*//' | cut -c 2-)
elif [[ "${macOSVers}" -eq 9 ]]; then
  cli=$(/usr/sbin/softwareupdate -l | awk '/\*\ Command Line Tools/ { $1=$1;print }' | grep "Mavericks" | sed 's/^[[ \t]]*//;s/[[ \t]]*$//;s/*//' | cut -c 2-)
fi

/usr/sbin/softwareupdate -i "${cli}" && rm -f "${cliTemp}"