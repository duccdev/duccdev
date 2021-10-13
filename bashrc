#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

printf "\033[0;34mSystem: \033[0;32mGLaDOS\n"
printf "\033[0;34mUser:   \033[0;32m$(whoami)\n"
printf "\033[0;34mGPU:    \033[0;32mNVIDIA Quadro P2000 Max-Q Mobile\n"
printf "\033[0;34mCPU:    \033[0;32mIntel Xeon E-2176M @ 6 cores with 4.4 GHz and 12 threads\n"
printf "\033[0;34mKernel: \033[0;32m$(uname -r)\n"
printf "\033[0;34mUptime: \033[0;32m$(uptime | awk -F'( |,|:)+' '{d=h=m=0; if ($7=="min") m=$6; else {if ($7~/^day/) {d=$6;h=$8;m=$9} else {h=$6;m=$7}}} {print d+0,"days,",h+0,"hours,",m+0,"minutes"}') \033[0m\n"
printf "\033[0;34mMemory: \033[0;32m"
echo $(free -m | awk 'NR==2{printf "%sMB/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }')
printf "\033[0m\n"
alias cls="/usr/bin/clear && source ~/.bashrc"
alias clear="/usr/bin/clear && source ~/.bashrc"
alias ls='printf "Contents: " | lolcat && ls --color=auto'
alias neofetch='neofetch | lolcat'
alias exit='printf "\033[0;31mCya later mate!" && sleep 2 && exit'
alias h="echo \"woah you're breaching some aelpxy laws here mate\""
alias edit="vim"
alias babyedit="nano"
alias reload="clear && source ~/.bashrc"
alias bashrc="vim ~/.bashrc"
alias babybashrc="nano ~/.bashrc"
alias install="yay -S"
alias remove="yay -R"
alias purge="yay -Rnsd"
alias update-system="yay -Syu"
alias download="wget"
alias downloadrepo="git clone"
alias startSSHServer="ngrok tcp 22"
alias adb='/usr/bin/platform-tools/adb'
alias androidstudio='/home/wheatley/android-studio/bin/studio.sh'
alias flutter='/home/wheatley/flutter/bin/flutter'
export CHROME_EXECUTABLE="/usr/bin/chromium"
export PS1="\[\033[1;37m\]┌──╼\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[1;32m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[1;37m\]⇀\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[1;32m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[1;37m\]⇀\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[1;37m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\n\[$(tput sgr0)\]\[\033[1;37m\]└╼\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[1;32m\]\[$(tput sgr0)\]"
