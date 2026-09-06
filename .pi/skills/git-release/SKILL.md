---
name: git-release
description: Creates GitHub releases with automated changelog generation from git commit history. Use when preparing, drafting, or publishing a new project release or version tag.
compatibility: Requires git and GitHub CLI (gh)
---

# Git Release Skill

This skill guides the release process for this repository.

## Workflow

1. **Check status**:
   Verify working directory is clean:
   ```bash
   git status --porcelain
   ```

2. **Collect commits**:
   Run the helper script to list commits since last tag:
   ```bash
   ./scripts/get-commits.sh
   ```

3. **Categorize changelog items**:
   Group commits into:
   - 🚀 Features
   - 🐛 Bug Fixes
   - 📝 Documentation
   - 🔧 Maintenance

4. **Create GitHub release**:
   Create the tag and release using `gh`:
   ```bash
   gh release create <version> --title "Release <version>" --notes "<changelog>"
   ```
