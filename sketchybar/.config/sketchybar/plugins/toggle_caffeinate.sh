#!/usr/bin/env bash

IS_RUNNING=$(pgrep caffeinate >/dev/null && echo true || echo false)

if [ "$IS_RUNNING" = "true" ]; then
  killall caffeinate
  sketchybar --set caffeinate icon=󰾪
else
  caffeinate -s &
  sketchybar --set caffeinate icon=󰅶
fi
