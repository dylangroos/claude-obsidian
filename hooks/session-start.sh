#!/bin/bash
# Inject vault context at session start

VAULT="/home/dgroos/vault"
DATE=$(date +%Y-%m-%d)

# Count notes
DAILY_EXISTS="no"
[ -f "$VAULT/daily/$DATE.md" ] && DAILY_EXISTS="yes"

KNOWLEDGE_COUNT=$(find "$VAULT/knowledge" -name "*.md" 2>/dev/null | wc -l | tr -d ' ')
SESSION_COUNT=$(find "$VAULT/sessions" -name "*.md" 2>/dev/null | wc -l | tr -d ' ')

# Output context for Claude
cat << EOF
{
  "suppressOutput": true
}
EOF
