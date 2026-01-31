sketchybar --add event aerospace_workspace_change
sketchybar --add event aerospace_service_change

sketchybar --add item aerospace.mode left \
  --subscribe aerospace.mode aerospace_service_change \
  --set aerospace.mode \
  label=M \
  script="$CONFIG_DIR/plugins/aerospace_service.sh"

for m in $(aerospace list-monitors --format "%{monitor-id}"); do
  for sid in $(aerospace list-workspaces --monitor $m); do
    sketchybar --add item space.$sid left \
      --subscribe space.$sid aerospace_workspace_change \
      --set space.$sid \
      background.color=0x44ffffff \
      background.corner_radius=5 \
      background.height=20 \
      background.drawing=off \
      label="$sid" \
      label.align=center \
      label.width=dynamic \
      click_script="aerospace workspace $sid" \
      script="$CONFIG_DIR/plugins/aerospace.sh $sid"
  done
done
