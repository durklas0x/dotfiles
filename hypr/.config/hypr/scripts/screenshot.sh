#!/bin/sh

selection=$(printf '%s\n' 'Region' 'Monitor' 'All monitors' 'Annotate' \
  'Record region' 'Record monitor' 'Stop recording' |
  noctalia dmenu --prompt 'Screen capture') || exit 0

case "$selection" in
  'Region') noctalia msg screenshot-region ;;
  'Monitor') noctalia msg screenshot-fullscreen pick ;;
  'All monitors') noctalia msg screenshot-fullscreen all ;;
  'Annotate') noctalia msg screenshot-annotate ;;
  'Record region') noctalia msg plugin noctalia/screen_recorder:service all start region ;;
  'Record monitor') noctalia msg plugin noctalia/screen_recorder:service all start focused ;;
  'Stop recording') noctalia msg plugin noctalia/screen_recorder:service all stop ;;
esac
