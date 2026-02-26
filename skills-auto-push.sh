#!/bin/zsh

cd ~/.config/skillshare/skills || exit 1

# Only do anything if there are changes
if ! git diff --quiet || ! git diff --cached --quiet; then
  git add .
  git commit -m "Auto-update skills on $(date '+%Y-%m-%d %H:%M:%S')" || exit 0
  git push
fi