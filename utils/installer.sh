LUNFARDO_VERBOSE='true';
[ -z $LUNFARDO_URL ] && LUNFARDO_URL="https://github.com/unbalancedparentheses/lunfardo.git"
[ -z "$LUNFARDO_INSTALL_DIR" ] && LUNFARDO_INSTALL_DIR="$HOME/.emacs.d"

install_lunfardo () {
    printf " Cloning the Lunfardo's GitHub repository...\n$RESET"
    if [ x$LUNFARDO_VERBOSE != x ]
    then
	/usr/bin/env git clone $LUNFARDO_URL "$LUNFARDO_INSTALL_DIR"
    else
	/usr/bin/env git clone $LUNFARDO_URL "$LUNFARDO_INSTALL_DIR" > /dev/null
    fi
    if ! [ $? -eq 0 ]
    then
	printf "$RED A fatal error occurred during Lunfardo's installation. Aborting..."
	exit 1
    fi
}

colors () {
    # Reset
    RESET='\e[0m'
    RED='\e[0;31m'          # Red
    GREEN='\e[0;32m'        # Green
    YELLOW='\e[0;33m'       # Yellow
    BLUE='\e[0;34m'         # Blue
    PURPLE='\e[0;35m'       # Purple
    CYAN='\e[0;36m'         # Cyan
    WHITE='\e[0;37m'        # White

    # Bold
    BRED='\e[1;31m'         # Red
    BGREEN='\e[1;32m'       # Green
    BYELLOW='\e[1;33m'      # Yellow
    BBLUE='\e[1;34m'        # Blue
    BPURPLE='\e[1;35m'      # Purple
    BCYAN='\e[1;36m'        # Cyan
    BWHITE='\e[1;37m'       # White
}

colors
install_lunfardo
