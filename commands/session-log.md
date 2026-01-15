---
description: Log current session summary to vault
allowed-tools: Read, Write, Edit, Bash
---

Session path: /home/dgroos/vault/sessions

Process:
1. Get today's date and current time
2. Create session folder if needed: /home/dgroos/vault/sessions/{date}/
3. Generate session ID from timestamp (HHMMSS)
4. Create log at `/home/dgroos/vault/sessions/{date}/session-{id}.md`:

```markdown
---
created: {ISO timestamp}
tags: [session, claude]
working_dir: {current working directory}
---
# Session Log - {HH:MM}

## Summary
{Ask user for summary or use $ARGUMENTS if provided}

## Topics Discussed


## Actions Taken


## Follow-ups

```

5. Add link to today's daily note under ## Session Links

Report the created session log path.
