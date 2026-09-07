---
name: fast-search
description: Use this to search file contents quickly using ripgrep (rg).
---
# Ripgrep Search Protocol

When searching large codebases, prefer using `rg` via the `bash` tool instead of the built-in grep.

1. Always use the `-n` (line numbers) and `--heading` flags for readability.
2. ALWAYS pipe the output to `head -n 100` to prevent context window overflow.
Example: `rg "impl FLIR" ./src | head -n 100`
