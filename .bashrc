[[ $- != *i* ]] && return

export LANG=en_US.utf8
export NNTPSERVER="news.epita.fr"

export EDITOR=emacs

alias ls='ls --color=auto'
PS1='[\#][MrHeliose@World]\W \$ '

alias i3locks='~/afs/lock/lock.sh'

##alias vim='~/afs/soft/nano -SmODBEF -T 8'
alias nano='~/afs/soft/nano -SmODBEF -T 4'

alias gce='gcc -Wall -Wextra -Werror -pedantic -std=c99'
LSE='/afs/cri.epita.net/resources/teach/LSE-IA/ember'
alias clg='clang -Wall -Wextra -Werror -Weverything -pedantic -std=c99'
