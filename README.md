# obsidian-vault

Claude Code plugin for Obsidian vault integration.

## Obsidian Dependencies

- **Dataview** - Required for dynamic queries in notes

## Commands

- `/obsidian-vault:vault` - browse, search, stats
- `/obsidian-vault:daily` - today's note
- `/obsidian-vault:capture <topic>` - save knowledge
- `/obsidian-vault:session-log` - log session

## Hooks

- SessionStart - injects vault context
- SessionEnd - auto-logs session

## Install

```bash
/plugin marketplace add dylangroos/claude-obsidian
/plugin install obsidian-vault@dylangroos-claude-obsidian
```
