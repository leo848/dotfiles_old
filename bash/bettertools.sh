# fucking syntax highlighting in the MANUAL
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# help
alias bathelp="bat --plain --language=help"
help {
  "$@" --help 2>&1 | bathelp
}
