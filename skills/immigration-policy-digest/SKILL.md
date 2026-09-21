---
name: immigration-policy-digest
description: Produces a weekly or on-demand digest of US immigration changes that affect a firm's work - USCIS Policy Manual updates, form edition and fee changes, processing-time shifts, Visa Bulletin movement, Federal Register rules, and program deadlines (e.g. EB-5) - with an internal brief for staff, a checklist-impact list ("what we must update"), and an optional client-facing note. Use when someone says "what changed in immigration this week", "policy update", "visa bulletin summary", "new form edition", "USCIS news digest", "update our checklists", or "client newsletter on immigration changes".
---

# Immigration policy digest

"The law changes every month. The intake checklist hasn't changed in years." This skill
turns the change feed into two outputs a busy firm can use: what staff must do differently,
and what clients should hear.

## Guardrails

- **Primary sources only**, each linked: uscis.gov (news, alerts, Policy Manual updates,
  Forms Updates, fee schedule G-1055, processing times), travel.state.gov (Visa Bulletin),
  federalregister.gov, and dol.gov where relevant. Secondary commentary can point to a
  change but never be the citation.
- If web access isn't available, say so and stop. Never write a digest from memory; the
  whole value is that it's current.
- Separate **fact** (what the source says, quoted or closely paraphrased, with an
  effective date) from **impact** (the firm's likely next steps, marked "for attorney
  review").
- Client notes: general information only, with no advice, and "contact us about your case".

## Inputs

Period (default: last 7 days); the firm's practice areas (e.g. family, employment, EB-5,
naturalisation, humanitarian); and optionally the firm's checklists, to flag which ones need
updating. Sources are listed in `references/sources.md`.

## Output

```
IMMIGRATION DIGEST - week of <date> - practice areas: <list>

TOP 3 THINGS THAT CHANGE OUR WORK
1. <change> - effective <date> - source <link>
   Impact (attorney review): <what to update, which cases>

ALL CHANGES
| Area | Change | Effective | Source |

CHECKLISTS / TEMPLATES TO UPDATE
- <checklist> - <what> - owner - due

DEADLINES COMING UP (next 60 days)
...

CLIENT NOTE (optional, under 150 words, plain language)
...
```
