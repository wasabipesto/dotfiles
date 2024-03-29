# updates & upgrades
alias up="sudo apt update && sudo apt upgrade -y"
alias up-everything="up; chezmoi update -v; dc-sync"

# connections
for n in demoux celebrimbor pailiah
  set l (echo $n | cut -c1)
  alias "ss$l=ssh justin@$n.neon-locrian.ts.net"
  alias "mnt-$l=sshfs $n.neon-locrian.ts.net:/ /mnt/$n -C"
end

# grab the syslog
alias syslog="sudo tail -n500 /var/log/syslog"

# show details on all files in a directory
alias ll="ls -lFh"

# color highlighting to grep output
alias grep='grep --color=auto'

# ping -> mtr
# (use ping4 and ping6 for basic ping)
alias ping="mtr"

# get your external ip
alias myip="curl ifconfig.me"

# apt hints
alias apt-sources="sudo nano /etc/apt/sources.list"
alias apt-search="apt-cache --names-only search"
alias apt-info="apt-cache showpkg"

# docker hints
alias dc-up="docker compose -f /opt/valinor/(hostname)-compose.yml up -d \$argv"
alias dc-down="docker compose -f /opt/valinor/(hostname)-compose.yml down \$argv"
alias dc-logs="docker compose -f /opt/valinor/(hostname)-compose.yml logs \$argv"
alias dc-edit="nano /opt/valinor/(hostname)-compose.yml"
alias dc-config="docker compose -f /opt/valinor/(hostname)-compose.yml config"
alias dc-restart="docker compose -f /opt/valinor/(hostname)-compose.yml restart \$argv"
alias dc-pull="docker compose -f /opt/valinor/(hostname)-compose.yml pull \$argv"
alias dc-build="docker compose -f /opt/valinor/(hostname)-compose.yml build \$argv"
alias dc-sync="cd /opt/valinor; git pull; dc-pull; dc-up"
