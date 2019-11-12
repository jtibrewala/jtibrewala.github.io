# Shortcuts to frequent destinations
alias web='cd /home/jaideep/Applications/clearfunds/clearfunds-web/'
alias mktg='cd /home/jaideep/Applications/clearfunds/clearfunds-mktg-rails/'

# Track progress of cp
alias cp='rsync -ah --progress'

# Default shell command enhancements
alias del='mv -f -t ~/.local/share/Trash/files'
alias df='df -h'
alias diff='colordiff'
alias dmesg='dmesg -HL'
alias du='du -c -h'
alias grep='grep  --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias hist='history | grep'         # requires an argument
alias ln='ln -i'
alias locate='locate -i'
alias openports='ss --all --numeric --processes --ipv4 --ipv'
alias more='less'

# ls changes
alias ls='exa --group-directories-first --classify'
alias ll='exa -la --group-directories-first --classify'

# TLDR cheat sheet for commands 
#alias tldr='f() { curl cheat.sh/$1; };f'
alias tldr='f(){ curl -s "cheat.sh/$(echo -n "$*"|jq -sRr @uri)";};f'

# Configure certain files to open with certain apps
alias -s md=kate

