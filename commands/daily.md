---
description: Create or view today's daily note
allowed-tools: Read, Write, Edit, Glob, Bash
---

Get dates:
- Today: `date +%Y-%m-%d`
- Yesterday: `date -d "yesterday" +%Y-%m-%d`
- Tomorrow: `date -d "tomorrow" +%Y-%m-%d`

Daily note path: /home/dgroos/vault/daily/{today}.md

Based on "$ARGUMENTS":

**No args or "view"**:
1. Check if today's note exists
2. If yes, read and display it
3. If no, create it with navigation links and dataview:

```markdown
---
created: {ISO timestamp}
tags: [daily]
aliases: [today]
---
# {YYYY-MM-DD}

<< [[daily/{yesterday}|Yesterday]] | [[daily/{tomorrow}|Tomorrow]] >>

## Focus
-

## Notes


## Sessions
```dataview
LIST FROM "sessions/{today}"
SORT file.ctime DESC
```

## Recent Knowledge
```dataview
LIST FROM "knowledge"
WHERE file.ctime >= date(today) - dur(7 days)
SORT file.ctime DESC
LIMIT 5
```
```

**"add <text>"**: Append the text to today's note under ## Notes

**"link <note>"**: Add a wikilink `[[{note}]]` under ## Notes

Always display the note content after any operation.
