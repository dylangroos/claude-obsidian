---
description: Initialize vault structure with folders and home note
allowed-tools: Write, Bash
---

Vault path: /home/dgroos/vault

Initialize the vault structure:

1. Create folders:
```bash
mkdir -p /home/dgroos/vault/{daily,sessions,knowledge,projects,templates}
```

2. Create Home.md at vault root:

```markdown
---
created: {ISO timestamp}
tags: [home, index]
aliases: [Index, Start]
---
# Dylan's Vault

## Quick Links
- [[daily/{today}|Today's Note]]

## Recent
```dataview
TABLE file.ctime as Created
FROM ""
WHERE file.name != "Home"
SORT file.ctime DESC
LIMIT 10
```

## Folders
- [[daily/|Daily Notes]]
- [[sessions/|Session Logs]]
- [[knowledge/|Knowledge Base]]
- [[projects/|Projects]]
```

3. Report what was created.
