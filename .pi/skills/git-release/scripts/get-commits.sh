#!/usr/bin/env bash

LAST_TAG=$(git describe --tags --abbrev=0 2>/dev/null || echo "")
if [ -z "$LAST_TAG" ]; then
  git log --pretty=format="* %w (%h)"
else
  git log ${LAST_TAG}..HEAD --pretty=format="* %w (%h)"
i
