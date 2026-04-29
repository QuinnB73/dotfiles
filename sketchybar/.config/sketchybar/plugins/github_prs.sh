#!/usr/bin/env bash

AUTHORED_COUNT=$(
  gh search prs \
    --author @me \
    --state open \
    --json number \
    --jq 'length'
)
AUTHORED_STATUS=$?

if [ "$AUTHORED_STATUS" -ne 0 ]; then
  sketchybar --set github_prs label=Failed
  exit 0
fi

ASSIGNED_COUNT=$(
  gh search prs \
    --assignee @me \
    --state open \
    --json number \
    --jq 'length'
)
ASSIGNED_STATUS=$?

if [ "$ASSIGNED_STATUS" -ne 0 ]; then
  sketchybar --set github_prs label=Failed
  exit 0
fi

TOTAL=$((AUTHORED_COUNT + ASSIGNED_COUNT))

sketchybar --set github_prs label=$TOTAL
