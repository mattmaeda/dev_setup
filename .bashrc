LIGHTGREEN="\[\e[1;32m\]"
RED="\[\e[1;31m\]"
NC="\[\e[0m\]"
function parse_git_branch() {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="$RED\t[\u@\h:\W]$LIGHTGREEN\$(parse_git_branch)$NC$"
