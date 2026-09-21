# Installing the skills

This repo holds nine skills, each in its own folder under `skills/` with a `SKILL.md`. Pick
the method that matches where you use Claude.

> **Before using these on client files:** run them only under your firm's own business or
> enterprise Claude account with data retention settled, never a personal account. Test
> with synthetic data first, e.g.
> `skills/immigration-consistency-checker/examples/synthetic-package.md`.

## Get the files

```bash
git clone https://github.com/alex12714/immigration-firm-skills.git
cd immigration-firm-skills
```

Or download the ready-made zips from the latest
[release](https://github.com/alex12714/immigration-firm-skills/releases/latest).

---

## 1. Claude Code (terminal, desktop app or IDE)

**For yourself, in every project:**
```bash
mkdir -p ~/.claude/skills
cp -R skills/* ~/.claude/skills/
```

**For one project only** (everyone who clones that project gets them):
```bash
mkdir -p /path/to/project/.claude/skills
cp -R skills/* /path/to/project/.claude/skills/
```

**Just one skill:**
```bash
cp -R skills/firm-ai-policy-drafter ~/.claude/skills/
```

> Don't add a trailing slash to a folder name (`skills/firm-ai-policy-drafter/`). On
> macOS that copies the folder's contents instead of the folder itself.

**Check it worked:** start a new session and type `/immigration-consistency-checker`. Or
describe the task ("run a pre-filing check on this package") and Claude will pick the skill
up from its description.

## 2. Claude.ai (web) and the Claude desktop app

1. Get the zips: download them from the latest release, or build them with
   `./package.sh`, which writes `dist/<skill-name>.zip` with the skill folder at the zip
   root.
2. In Claude, open **Settings**, turn on **code execution and file creation** (skills need
   it), find the **Skills** section, and upload a zip. Repeat for each skill you want.
3. Start a new chat and ask for the task, e.g. "Draft a monthly update for this case."

Notes:
- Custom skills are available on Pro, Max, Team and Enterprise plans.
- An uploaded skill belongs to the person who uploads it; each team member uploads their
  own copy. Anthropic's docs don't describe an org-wide admin install for claude.ai, so
  check the current Help Center if you need one.
- Settings menu names move occasionally. If "Skills" isn't where described, search the
  Claude Help Center for "custom skills".

## 3. Claude API (building the skills into your own software)

Skills are uploaded once through the `/v1/skills` endpoints and then referenced by
`skill_id` in the `container` parameter of a Messages request, alongside the code execution
tool. Uploaded skills are shared across the API workspace.

Beta headers and request shape change between releases, so take them from the current guide:
- https://platform.claude.com/docs/en/build-with-claude/skills-guide
- https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview

## Suggested rollout for a firm

1. `firm-ai-policy-drafter`: adopt a written AI policy first, because it decides how the
   other skills may be used.
2. `immigration-consistency-checker` and `client-status-update-writer`: the fastest,
   most visible wins.
3. The rest, as each workflow comes up.

## Updating

- Claude Code: `git pull`, then copy the folders again (the copy overwrites).
- Claude.ai: run `./package.sh <skill-name>`, delete the old skill in Settings, and upload
  the new zip.

## Editing rules

- `name:` must match the folder name, using lowercase letters, numbers and hyphens, up to
  64 characters, and must not include "claude" or "anthropic".
- `description:` is required and limited to 1,024 characters. It's how Claude decides when
  to use the skill, so keep the trigger phrases in it.
- Keep `SKILL.md` focused. Long checklists and templates go in `references/`.
