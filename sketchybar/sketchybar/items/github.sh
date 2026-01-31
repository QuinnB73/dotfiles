sketchybar --add item github_reviews right \
  --set github_reviews \
  icon= \
  update_freq=10 \
  script="$CONFIG_DIR/plugins/github_reviews.sh" \
  click_script="$CONFIG_DIR/plugins/github_reviews_click.sh"

sketchybar --add item github_prs right \
  --set github_prs \
  icon=󰘬 \
  update_freq=10 \
  script="$CONFIG_DIR/plugins/github_prs.sh" \
  click_script="$CONFIG_DIR/plugins/github_prs_click.sh"
