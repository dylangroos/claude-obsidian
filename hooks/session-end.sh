#!/bin/bash
# Auto-log session on end

VAULT="/home/dgroos/vault"
DATE=$(date +%Y-%m-%d)
TIME=$(date +%H:%M:%S)
SESSION_ID=$(date +%H%M%S)
SESSION_DIR="$VAULT/sessions/$DATE"
SESSION_FILE="$SESSION_DIR/session-$SESSION_ID.md"
DAILY_FILE="$VAULT/daily/$DATE.md"

# Create session directory
mkdir -p "$SESSION_DIR"

# Get working directory from stdin if available
CWD=$(pwd)

# Create session log
cat > "$SESSION_FILE" << EOF
---
created: $(date -Iseconds)
tags: [session, claude, auto]
working_dir: $CWD
---
# Session Log - $TIME

## Summary
Auto-captured session. Use /session-log to add details.

## Topics Discussed


## Actions Taken


## Follow-ups

EOF

# Dataview handles session links in daily note automatically
# No manual linking needed

# Silent output
cat << EOF
{
  "suppressOutput": true
}
EOF
