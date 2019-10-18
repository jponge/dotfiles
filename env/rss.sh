rss () {
  pgrep $1 | xargs ps -o pid,rss,command -p | awk '{$2=int($2/1024)"M";}{ print;}'
}