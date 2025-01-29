# copy and paste
osc-yank() {
    local input=$(cat "$@")
    local len=$(printf %s "$input" | wc -c)
    local max=74994
    test $len -gt $max && "input is too long - truncating!" >&2
    printf "\033]52;c;$(printf %s "$input" | head -c $max | base64 | tr -d '\r\n')\a"
}

# git stuff
alias cd-git-home='cd $(git rev-parse --show-toplevel)'
alias pushd-git-home='pushd $(git rev-parse --show-toplevel)'

# ripgrep
alias rg='rg --hidden'
