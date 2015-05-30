# go back x directories
b() {
    str=""
    count=0
    while [ "$count" -lt "$1" ];
    do
        str=$str"../"
        let count=count+1
    done
    cd $str
}


alias upgrade="sudo apt-get update && sudo apt-get upgrade && sudo apt-get clean"


#Extract almost any archive
extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        p7zip -d $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}


#Instant server
servedir(){
    python -m SimpleHTTPServer $1
}

shutd(){
    echo  $((date| cut -d' ' -f 1-5 && uptime | cut -d' ' -f 3-5 | cut -d',' -f 1 ) | tr "\n" " ")  >> ~/.uptime.txt
    sudo shutdown -h now
}

wifi(){
    sudo rfkill unblock wifi
    sleep 1
    sudo ifconfig wlan0 down
    sudo macchanger -r wlan0
    sudo ifconfig wlan0 up
    sudo service wicd start
    wicd-curses
}

#Clear terminal
alias c="clear"

alias clip="xclip -selection clipboard"
alias burn="shred -n 3 -u "
alias monitor="xrandr --output DVI-I-1 --mode 1920x1080 --left-of VGA-1"

#Common typo
alias les="less"

#Open stdout in vim 
alias vr="| vim -R -"

#Pretty print json
alias json="python -mjson.tool"

#Quick apt-get install/search
alias i="sudo apt-get install"
alias s="apt-cache search"

#Quick dpkg -l | grep X
alias dp="dpkg -l | grep"

#Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

#Common programs alias
alias g="git"
alias v="vim"
alias h="history | grep"
alias less="less -R" #Enable color parsing by default
alias iptv="iptables -L -v -n --line-numbers"
