#!/usr/bin/env bash

case $SERVICE in
"service")
  sketchybar --set aerospace.mode label=S
  ;;
"resize")
  sketchybar --set aerospace.mode label=R
  ;;
*)
  sketchybar --set aerospace.mode label=M
  ;;
esac
