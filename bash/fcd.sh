f () {
  cd $(command ls -d */ | fzf)
}
fcd () {
  cd $(fd --type directory | fzf)
}
