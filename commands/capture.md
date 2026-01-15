---
description: Capture knowledge as a linked vault note
allowed-tools: Read, Write, Edit, Grep, Glob, Bash
---

Vault: /home/dgroos/vault
Topic: "$ARGUMENTS"

Process:
1. Convert topic to slug (lowercase, hyphens, no spaces)
2. **Search for related notes** - Use Grep to find notes mentioning similar keywords in /home/dgroos/vault/knowledge/
3. If related notes found:
   - List them with previews
   - Ask: add to existing, create new with links, or merge?
4. Extract potential tags from topic (e.g., "WSL networking" → `#wsl`, `#networking`)

5. Create note at `/home/dgroos/vault/knowledge/{slug}.md`:

```markdown
---
created: {ISO timestamp}
modified: {ISO timestamp}
tags: [knowledge, {extracted-tags}]
source: claude-session
related: [{list of related note names if found}]
---
# {Topic Title}

## Summary


## Key Points
-

## Details


## Related
{For each related note found:}
- [[knowledge/{related-slug}|{Related Title}]]

## Backlinks
```dataview
LIST FROM [[]]
```
```

6. **Create backlinks** - For each related note, add a link back to this new note under their ## Related section

7. Add to today's daily note:
   - Under ## Notes: `- Created [[knowledge/{slug}|{Topic}]]`

8. Ask what content to capture, then fill in Summary and Key Points

Show the created note and any backlinks added.
