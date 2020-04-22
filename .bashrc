# Setup PATH
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:${PATH}"
export PATH=$HOME/mongodb/bin:${PATH}

# Customize bash prompt
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
reset=$(tput sgr0)

function parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="\[$yellow\]\D{[%F %T]} \[$red\]\w\033[32m\]\$(parse_git_branch)\n\[$blue\]\u\[$re    set\]@\[$green\]\h\[$reset\]\$ "

# Select default editor
export EDITOR=/usr/bin/vim

# Run following command in main directory for git autocompletion:
# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
if [ -f ~/.git-completion.bash ]; then
      . ~/.git-completion.bash
fi
      
