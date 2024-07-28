#!/bin/sh

# Generates unique id for notes
# Call in vim with [:r !sh idgen.sh] when launched from the zettel root
# (can also add to $PATH if necessary)
idgen() {
    echo "ID:"$(date +"%d%m%Y%H%M%S")
}

# Outputs files with a matching tag
tagfind() {
    grep -l -r "TAGS:.*$1.*" *
}

# Outputs file name for the given id
idfind() {
    grep -l -r "ID:$1" *
}

# Trick to let you call the function outside this script
"$@"

