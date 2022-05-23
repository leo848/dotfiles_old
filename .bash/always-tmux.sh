# Add this to your zshrc or bzshrc file

_not_inside_tmux() {
  [[ -z "$TMUX" ]]
}

ensure_tmux_is_running() {
  if _not_inside_tmux; then
    tat && exit
  fi
}

ensure_tmux_is_running
