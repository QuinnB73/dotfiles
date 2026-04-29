#!/usr/bin/env bash

PR_COUNT=$(gh search prs --review-requested=@me --state=open --json number | jq length)
STATUS=$?

if [ "$STATUS" -ne 0 ]; then
  sketchybar --set github_reviews label=Failed
else
  sketchybar --set github_reviews label=$PR_COUNT
fi
