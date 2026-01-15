---
description: Capture knowledge as a linked vault note
allowed-tools: Read, Write, Grep, Glob
---

Vault: /home/dgroos/vault/knowledge
Topic: "$ARGUMENTS"

Process:
1. Convert topic to slug (lowercase, hyphens)
2. Search existing notes for similar topics
3. If related notes exist, ask whether to add to existing or create new
4. Create note at `/home/dgroos/vault/knowledge/{slug}.md`:

```markdown
---
created: {ISO timestamp}
tags: [knowledge]
source: claude-session
---
# {Topic Title}

## Summary


## Key Points


## Related

```

5. Ask what content to capture
6. Write the note
7. Add link to today's daily note under ## Notes

Show the created note path.
