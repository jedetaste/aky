#!/bin/bash

# Create aky user

randString=$(/usr/bin/openssl rand -hex 15)
jamfBinary="/usr/local/jamf/bin/jamf"

"${jamfBinary}" createAccount \
  -username "aky" \
  -realname "aky" \
  -password "${randString}" \
  -home "/var/aky" \
  -admin \
  -hiddenUser \
  -suppressSetupAssistant

echo "aky ALL=(ALL) NOPASSWD: ALL" >> "/etc/sudoers"

# Install Homebrew

su -l aky -c '/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" </dev/null' && su -l aky -c "/usr/local/bin/brew update"

# Install Homebrew Taps

su -l aky -c "/usr/local/bin/brew tap caskroom/cask"
su -l aky -c "/usr/local/bin/brew tap caskroom/drivers"
su -l aky -c "/usr/local/bin/brew tap caskroom/fonts"
su -l aky -c "/usr/local/bin/brew tap caskroom/versions"
