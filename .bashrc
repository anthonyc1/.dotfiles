# Setup PATH
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:${PATH}"
export PATH=$HOME/mongodb/bin:${PATH}

# Customize bash prompt
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
reset=$(tput sgr0)
PS1='\[$yellow\]\D{[%F %T]} \[$red\]\w\n\[$blue\]\u\[$reset\]@\[$green\]\h\[$reset\]\$ '

# Select default editor
export EDITOR=/usr/bin/vim

