# copy and paste
osc52-yank() {
    # 1. Cat will read stdin when $1 is empty otherwise cat the file
    # 2. echo -n is used to avoid the new line at the end
    # 3. OSC-52 needs base64 encoded strings 
    #printf "%s" "$(cat $1)" | base64 | xargs printf '\033]52;c;%s\007'
    echo -n "$(cat $1)" | base64 | xargs printf '\033]52;c;%s\007'

}

# git stuff
alias cd-git-home='cd $(git rev-parse --show-toplevel)'
alias pushd-git-home='pushd $(git rev-parse --show-toplevel)'

# ripgrep
alias rg='rg --hidden'
