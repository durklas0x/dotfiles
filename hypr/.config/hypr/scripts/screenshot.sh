#!/bin/sh

selection=$(printf '%s\n' 'Region' 'Monitor' 'All monitors' 'Annotate' \
  'Record monitor' 'Stop recording' |
  noctalia dmenu --prompt 'Screen capture') || exit 0

case "$selection" in
  'Region') noctalia msg screenshot-region ;;
  'Monitor') noctalia msg screenshot-fullscreen pick ;;
  'All monitors') noctalia msg screenshot-fullscreen all ;;
  'Annotate') noctalia msg screenshot-annotate ;;
  'Record monitor') noctalia msg plugin noctalia/screen_recorder:service all start portal ;;
  'Stop recording') noctalia msg plugin noctalia/screen_recorder:service all stop ;;
esac
