#                 ██
#                ░██
#  ██████  ██████░██
# ░░░░██  ██░░░░ ░██████
#    ██  ░░█████ ░██░░░██
#   ██    ░░░░░██░██  ░██
#  ██████ ██████ ░██  ░██
# ░░░░░░ ░░░░░░  ░░   ░░
#
# shamelessly stolen from xero
#
#█▓▒░ aliases

# man for zsh builtins
if ! [[ $NAME =~ "Ubuntu" ]]; then
    unalias run-help
    autoload run-help
fi
alias zshman="run-help"
alias vim="nvim"
alias vi="nvim"
alias godown="cd ~/downloads"
alias cleardown="rm -rf ~/downloads/*"
alias mci="sudo make clean install"
alias mr="make run"
alias zzz="sudo zzz"
alias ZZZ="sudo ZZZ"
alias p="patch -p1 <"
alias mcc="musl-gcc -static"
alias less="less -R"
alias v='f -e nvim'
alias git-adog='git log --all --decorate --oneline --graph'
alias sl='ls'
# moved to a script now, left commented for history
# alias e='emacsclient --socket-name=/tmp/emacs1000/emacsd -r -n'
# alias ne='emacsclient --socket-name=/tmp/emacs1000/emacsd -c -n'

if [[ $OS =~ "Linux" ]]; then
    alias ls="ls --color=auto"
    alias u="paru --sudoloop -Syu"
else # mac os / satsuki
    alias python=python3
    alias u="brew update && brew upgrade"
fi

if [[ $NAME =~ "Void" ]]; then
    alias u="sudo xbps-install -Su"
    alias gu="sudo xbps-install -Su -R https://mirrors.servercentral.com/voidlinux/current -R https://mirrors.servercentral.com/voidlinux/current/nonfree"
elif [[ $NAME =~ "Ubuntu" ]]; then
    alias u="sudo apt update && sudo apt upgrade"
fi

# not mine
#alias xyzzy="echo nothing happens"
#alias ls="ls -hF --color=auto"
#alias ll="ls -lahF --color=auto"
#alias lsl="ls -lhF --color=auto"
#alias "cd.."="cd ../"
#alias up="cd ../"
#alias rmrf="rm -rf"
#alias psef="ps -ef"
#alias mkdir="mkdir -p"
#alias grep="grep -i"
#alias cp="cp -r"
#alias scp="scp -r"
#alias xsel="xsel -b"
#alias fuck='sudo $(fc -ln -1)'
#alias e="$EDITOR"
#alias se="sudo $EDITOR"
#alias v="nvim"
#alias vimdiff="nvim -d -u ~/.vimrc"
#alias emacs="nvim"
#alias g="git"
#alias ga="git add"
#alias gc="git commit -m"
#alias gs="git status"
#alias gd="git diff"
#alias gf="git fetch"
#alias gm="git merge"
#alias gr="git rebase"
#alias gp="git push"
#alias gu="git unstage"
#alias gg="git graph"
#alias ggg="git graphgpg"
#alias gco="git checkout"
#alias gcs="git commit -S -m"
#alias gpr="hub pull-request"
#alias ag="ag --color --color-line-number '0;35' --color-match '46;30' --color-path '4;36'"
#alias tree='tree -CAFa -I "CVS|*.*.package|.svn|.git|.hg|node_modules|bower_components" --dirsfirst'
#alias rock="ncmpcpp"
#alias mixer="alsamixer"
#alias matrix="cmatrix -b"
#alias tempwatch="while :; do sensors; sleep 1 && clear; done;"
#alias term="urxvtc -hold -e " #used for run menu
#alias toiletlist='for i in ${TOILET_FONT_PATH:=/usr/share/figlet}/*.{t,f}lf; do j=${i##*/}; echo ""; echo "╓───── "$j; echo "╙────────────────────────────────────── ─ ─ "; echo ""; toilet -d "${i%/*}" -f "$j" "${j%.*}"; done'
#alias tdlist='for i in ${TD_FONT_PATH:=/usr/local/share/tdfiglet/fonts}/*.tdf; do j=${i##*/}; echo ""; echo "╓───── "$j; echo "╙────────────────────────────────────── ─ ─ "; echo ""; tdfiglet -f "$j" "${j%.*}"; done'
#alias ascii="toilet -t -f 3d"
#alias future="toilet -t -f future"
#alias rusto="toilet -t -f rusto"
#alias rustofat="toilet -t -f rustofat"
#alias lol="base64 </dev/urandom | lolcat"
#alias pacman="sudo pacman"
#alias update="pacman-colors && yay -Syu"
#alias systemctl="sudo systemctl"
#alias :q="sudo systemctl poweroff"
#alias ZZ="exit"
#alias disks='echo "╓───── m o u n t . p o i n t s"; echo "╙────────────────────────────────────── ─ ─ "; lsblk -a; echo ""; echo "╓───── d i s k . u s a g e"; echo "╙────────────────────────────────────── ─ ─ "; df -h;'
#alias todo="bash ~/code/sys/todo"
#alias record="ffmpeg -f x11grab -s 1366x768 -an -r 16 -loglevel quiet -i :0.0 -b:v 5M -y" #pass a filename
#alias nexus="jmtpfs ~/nexus"
#alias p="pass -c"
#alias doc="sudo docker"
##alias docclean="sudo docker rm $(sudo docker ps -a -q) &&  sudo docker rmi $(sudo docker images -q)"
#alias docstats="sudo docker ps -q | xargs  docker stats --no-stream"
##█▓▒░ update mpd database
#function genplaylist() {
#cd ~/music
#find . -name '*.mp3' -o -name '*.flac'|sed -e 's%^./%%g' > ~/.config/mpd/playlists/all.m3u
#mpc clear
#mpc load all.m3u
#mpc update
#}
##█▓▒░ tmux
#function t() {
#X=$#
#[[ $X -eq 0 ]] || X=X
#tmux new-session -A -s $X
#}
##█▓▒░ cli mail
#function email() {
#echo $3 | mutt -s $2 $1
#}
##█▓▒░ read stuff like manpages
#function md() {
#pandoc -s -f markdown -t man "$*" | man -l -
#}
#function manwww() {
#curl -skL "$*" | pandoc -s -f html -t man | man -l -
#}
##█▓▒░ nullpointer url shortener
#function short() {
#curl -F"shorten=$*" https://0x0.st
#}
##█▓▒░ smaller scrots
#function scrot_area() {
#read -r G < <(slop -f "%g")
#import -window root -crop $G ~/$(date "+%Y-%m-%d_%H-%M-%S")_slop_scrot.png
#}
##█▓▒░ record video
#function vid_area() {
#read -r X Y W H G ID < <(slop -f "%x %y %w %h %g %i")
#ffmpeg -f x11grab -s "$W"x"$H" -i :0.0+$X,$Y -f alsa -i pulse ~/$(date "+%Y-%m-%d_%H-%M-%S")_slop_vid.webm
#}
## i hate this
#alias x="startx"
