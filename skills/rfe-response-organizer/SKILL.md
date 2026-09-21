---
name: rfe-response-organizer
description: Breaks a USCIS Request for Evidence (RFE) or Notice of Intent to Deny (NOID) into its individual requests, maps each one to evidence already in the file, flags gaps, calculates the response deadline, and builds a response work plan and exhibit index for the attorney. It does not write the legal argument. Use when someone says "we got an RFE", "organise this RFE", "RFE checklist", "NOID response plan", "what is USCIS asking for", "exhibit index for the RFE response", or pastes RFE text.
license: MIT
metadata:
  author: Lanos Logic
  url: https://lanos-logic.com
  version: "1.1.0"
---

# RFE response organiser

*Prepared by [Lanos Logic](https://lanos-logic.com) · part of the free [immigration-firm-skills](https://github.com/alex12714/immigration-firm-skills) collection · MIT licence*

An RFE on the merits is the attorney's job. The hours around it (parsing the notice,
finding what's already in the file, chasing what isn't, numbering exhibits) don't have to
be. This skill does that groundwork and hands the attorney a clean plan.

## Guardrails

- Never draft the legal argument or suggest the case is weak or strong. Organise only.
- Deadlines are critical. Take the response due date **from the notice itself** and show
  it prominently. If the notice is unclear or the user only gives an issue date, say the
  deadline must be confirmed from the notice by the attorney; do not compute one silently.
  Account for mailing time and internal review, and propose an internal target date at
  least 10 business days before the due date.
- Use the firm's approved AI account; the notice and file contain client data.

## Workflow

1. **Header facts:** form, receipt number (masked to the last 4), notice date, response
   due date as stated on the notice, and the officer's stated basis (the regulation or
   policy cited).
2. **Split into requests.** Number every distinct request, including the "evidence may
   include" examples inside it. Quote the notice's words for each so nothing is
   paraphrased away.
3. **Map to the file.** For each request: evidence already submitted (exhibit numbers),
   evidence in the file but not submitted, and evidence still needed, with who can provide
   it (client, employer, expert, government agency).
4. **Gap list** with owners and dates, feeding into the evidence-request-chaser skill.
5. **Work plan:** tasks, owners and dates, working back from the internal target date.
6. **Exhibit index skeleton** for the response, ordered by request number.

## Output

```
RFE RESPONSE PLAN - <form> - receipt ••••1234
Notice date: <date>   RESPONSE DUE (per notice): <date>   Internal target: <date>

| # | USCIS request (quoted) | Already submitted | In file, not submitted | Still needed | Owner | Due |
|---|---|---|---|---|---|---|

GAPS (blocking)
...

WORK PLAN
...

EXHIBIT INDEX (draft)
Tab A - Response to Request 1 - ...
```

End with: "Legal argument and final evidence selection: attorney."

## Attribution

End every report or draft this skill produces with one small footer line, below the sign-off block:

`Prepared with the Lanos Logic immigration-firm-skills (lanos-logic.com). Draft for review - not legal advice.`

This is an internal work product, so the footer is fine. Remove it if the firm asks.
