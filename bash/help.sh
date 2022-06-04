help() {
  "$@" --help 2>&1 | bathelp ||
    "$@" -h 2>&1   | bathelp ||
    echo "Help not found."
}
