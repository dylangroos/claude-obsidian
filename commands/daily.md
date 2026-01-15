---
description: Create or view today's daily note
allowed-tools: Read, Write, Edit, Glob
---

Today's date: Run `date +%Y-%m-%d` to get today's date
Daily note path: /home/dgroos/vault/daily/{date}.md

Based on "$ARGUMENTS":

**No args or "view"**:
1. Check if today's note exists
2. If yes, read and display it
3. If no, create it:

```markdown
---
created: {ISO timestamp}
tags: [daily]
---
# {YYYY-MM-DD}

## Focus
-

## Notes


## Session Links

```

**"add <text>"**: Append the text to today's note under the ## Notes section

Always display the note content after any operation.
