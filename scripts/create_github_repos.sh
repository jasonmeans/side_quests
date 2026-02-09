#!/usr/bin/env bash
set -euo pipefail

owner="${1:-jasonmeans}"
visibility="${2:-private}"   # private or public

if ! command -v gh >/dev/null 2>&1; then
  echo "GitHub CLI (gh) is required. Install: https://cli.github.com/"
  exit 1
fi

repos=(
  "skills-learnings"
  "side_quests"
  "discogs-app"
)

for repo in "${repos[@]}"; do
  if gh repo view "${owner}/${repo}" >/dev/null 2>&1; then
    echo "Repo exists: ${owner}/${repo}"
  else
    echo "Creating ${owner}/${repo} (${visibility})"
    gh repo create "${owner}/${repo}" --"${visibility}" --confirm
  fi
done

echo "GitHub repositories verified/created."
