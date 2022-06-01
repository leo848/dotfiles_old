help() {
  "$@" --help 2>&1 | bathelp ||
    "$@" -h 2>&1   | bathelp ||
    "$@" help 2>&1 | bathelp ||
    man "$1" ||
    echo "Help not found."
}
