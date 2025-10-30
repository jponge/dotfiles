function rss -a target
  pgrep $target | xargs ps -o pid,rss,command -p | awk '{$2=int($2/1024)"M";}{ print;}'
end