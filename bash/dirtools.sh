# create directory, then go there
md () { [ $# = 1 ] && mkdir -p "$@" && cd "$@" || echo "Error - no directory passed!"; }

# cd and ls
cls () { [ $# = 1 ] && cd "$@" && ls --color=auto || echo "Error - no directory passed!"; }
