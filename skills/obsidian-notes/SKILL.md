---
name: obsidian-notes
description: Use when creating notes, saving to vault, logging sessions, capturing knowledge, or working with Obsidian markdown files. Provides guidance for proper formatting, frontmatter, linking, and graph-building.
---

# Obsidian Notes

Create and manage notes in the vault at `/home/dgroos/vault`.

## Vault Structure

```
/home/dgroos/vault/
├── daily/       # Daily notes (YYYY-MM-DD.md)
├── sessions/    # Claude session logs
├── knowledge/   # Research findings
├── projects/    # Project tracking
└── templates/   # Note templates
```

## Obsidian Features to Use

### Wikilinks (builds the graph!)
```markdown
[[note-name]]                    # Basic link
[[note-name|Display Text]]       # Aliased link
[[folder/note-name]]             # Link to nested note
[[note-name#Heading]]            # Link to heading
[[note-name#^blockid]]           # Link to block
```

### Embeds (inline content)
```markdown
![[note-name]]                   # Embed entire note
![[note-name#Heading]]           # Embed section
![[image.png]]                   # Embed image
```

### Tags (categorization)
```markdown
#tag                             # Inline tag
tags: [tag1, tag2]               # Frontmatter tags
```

### Dataview Queries (dynamic content)
```markdown
```dataview
LIST FROM "folder"
WHERE tags contains "topic"
SORT file.ctime DESC
LIMIT 5
```                              # Query notes like a database
```

### Frontmatter Properties
```yaml
---
created: 2026-01-14T20:00:00
modified: 2026-01-14T20:00:00
tags: [category, subcategory]
aliases: [alternate-name, shortcut]
related: [note1, note2]
status: active|completed|archived
project: project-name
---
```

## Graph-Building Best Practices

1. **Always link related notes** - Don't create orphan notes
2. **Use bidirectional links** - If A links to B, consider B linking to A
3. **Add backlinks section** - Use `dataview LIST FROM [[]]` to show incoming links
4. **Use consistent naming** - lowercase-with-hyphens for slugs
5. **Tag hierarchically** - `#project/wslsink`, `#topic/wsl`

## When Creating Notes

| Type | Must Include |
|------|--------------|
| Daily | Navigation links (yesterday/tomorrow), dataview for sessions |
| Session | Link to daily, project link if applicable, follow-up tasks |
| Knowledge | Related notes, backlinks dataview, source attribution |
| Project | Dataview for decisions/progress, status in frontmatter |

## Linking Patterns

```markdown
## Related
- [[knowledge/related-topic|Related Topic]]
- [[projects/myproject/_index|Project Link]]

## Backlinks
```dataview
LIST FROM [[]]
```

## See Also
- [[daily/2026-01-14|Today's Note]]
```

## Rules

1. **Never create orphan notes** - Always link from somewhere
2. Always include frontmatter with `created`, `tags`
3. Use wikilinks, not markdown links
4. Add `## Related` section with relevant links
5. Include dataview queries for dynamic connections
6. Check for existing notes before creating duplicates
