---
description: Log current session summary to vault
allowed-tools: Read, Write, Edit, Bash, Glob
---

Session path: /home/dgroos/vault/sessions

Process:
1. Get today's date, current time, working directory
2. **Detect project context**:
   - Check if cwd is under a known project
   - Look for project folder in /home/dgroos/vault/projects/ matching cwd name
3. Create session folder: /home/dgroos/vault/sessions/{date}/
4. Generate session ID (HHMMSS)

5. Create log at `/home/dgroos/vault/sessions/{date}/session-{id}.md`:

```markdown
---
created: {ISO timestamp}
tags: [session, claude, {project-tag-if-detected}]
working_dir: {cwd}
project: {project-name-if-detected}
---
# Session Log - {HH:MM}

<< [[daily/{date}|Daily Note]] >>
{If project detected:} | Project: [[projects/{project}/_index|{Project Name}]]

## Summary
{$ARGUMENTS if provided, otherwise ask}

## Topics Discussed
-

## Actions Taken
-

## Code Changes
{If in a git repo, run `git diff --stat HEAD~1` to summarize}

## Decisions Made
-

## Knowledge Captured
```dataview
LIST FROM "knowledge"
WHERE file.ctime >= date({date}) AND file.ctime < date({date}) + dur(1 day)
```

## Follow-ups
- [ ]

## Related Sessions
```dataview
LIST FROM "sessions"
WHERE project = "{project}" AND file.name != this.file.name
SORT file.ctime DESC
LIMIT 3
```
```

6. Link to daily note under ## Sessions
7. If project detected, add link to project's progress log

Show created session log path.
