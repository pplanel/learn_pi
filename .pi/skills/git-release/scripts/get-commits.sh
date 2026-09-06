#!/usr/bin/env bash

# Get commit messages since the last git tag (or all commits if no tags exist)
LAST_TAG=$(git describe --tags --abbrev=0 2>/dev/null || echo "")
if [ -z "$LAST_TAG" ]; then
  git log --pretty=format:"* %s (%h)"
else
  git log "${LAST_TAG}..HEAD" --pretty=format:"* %s (%h)"
fi
