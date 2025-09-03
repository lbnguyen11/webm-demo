parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1='\[\e[1;37m\]\[\e[1;32m\]\u\[\e[0;39m\]@\[\e[1;36m\]\h\[\e[0;39m\]:\[\e[1;33m\]\w\[\e[0;39m\]\[\e[1;35m\]$(parse_git_branch "(%s)")\[\e[0;39m\]\[\e[1;37m\]\[\e[0;39m\]\$ '

alias gdbx='gdb -x ~/.gdbinit-dashboard'
