---
name: obsidian-notes
description: Use when creating notes, saving to vault, logging sessions, capturing knowledge, or working with Obsidian markdown files. Provides guidance for proper formatting, frontmatter, and linking.
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

## Frontmatter

All notes require YAML frontmatter:

```yaml
---
created: 2026-01-14T19:58:00
tags: [category, subcategory]
---
```

## Linking

- Internal links: `[[note-name]]`
- With alias: `[[note-name|Display Text]]`
- Daily refs: `[[daily/2026-01-14]]`

## Creating Notes

| Type | Path | Tags |
|------|------|------|
| Daily | `daily/YYYY-MM-DD.md` | `[daily]` |
| Session | `sessions/YYYY-MM-DD/session-HHMMSS.md` | `[session, claude]` |
| Knowledge | `knowledge/topic-slug.md` | `[knowledge, topic]` |

## Rules

1. Always include frontmatter with `created` and `tags`
2. Use wikilinks for internal connections
3. Check for existing notes before creating duplicates
4. Slug titles: lowercase, hyphens, no spaces
