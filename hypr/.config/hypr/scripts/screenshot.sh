#!/bin/sh

selection=$(printf '%s\n' 'Region' 'Monitor' 'All monitors' 'Annotate' |
  noctalia dmenu --prompt 'Screenshot') || exit 0

case "$selection" in
  'Region') noctalia msg screenshot-region ;;
  'Monitor') noctalia msg screenshot-fullscreen pick ;;
  'All monitors') noctalia msg screenshot-fullscreen all ;;
  'Annotate') noctalia msg screenshot-annotate ;;
esac
