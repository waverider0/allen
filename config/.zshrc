export CLICOLOR=1
export PS1=$'%n@%m:%{\e[01;32m%}%~%{\e[0m%}$ '
export MANPAGER='nvim +Man!'

set -o vi

alias vi='nvim'
alias vim='nvim'
 
fcd() {
        local dir
        dir=$(find . -type d 2> /dev/null | fzf) && cd "$dir"
        zle reset-prompt
        zle -R
}
zle -N fcd
bindkey '^F' fcd
 
fvi() {
        local file
        file=$(find . -type f 2> /dev/null | fzf) && vi "$file"
        zle reset-prompt
        zle -R
}
zle -N fvi
bindkey '^T' fvi
