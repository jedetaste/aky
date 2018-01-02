#!/bin/bash

/usr/bin/curl -sfko "/private/tmp/CommandLineTools.sh" "https://raw.githubusercontent.com/jedetaste/aky/master/CommandLineTools.sh"
/usr/bin/curl -sfko "/private/tmp/Homebrew.sh" "https://raw.githubusercontent.com/jedetaste/aky/master/Homebrew.sh"

/bin/chmod +x "/private/tmp/CommandLineTools.sh" && cd "/private/tmp/" && ./CommandLineTools.sh
/bin/chmod +x "/private/tmp/Homebrew.sh" && cd "/private/tmp/" && ./Homebrew.sh

/usr/bin/curl -sfko "/usr/local/bin/aky" "https://raw.githubusercontent.com/jedetaste/aky/master/bin/aky" && /bin/chmod +x "/usr/local/bin/aky"
