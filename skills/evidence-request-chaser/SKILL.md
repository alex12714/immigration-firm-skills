---
name: evidence-request-chaser
description: Builds per-client document request checklists for immigration cases, tracks what is received and missing, and drafts polite, escalating follow-up messages until the file is complete. Use when someone says "document checklist", "what do we still need", "chase the client", "missing documents", "follow up for the bank statement", "evidence request", "the case is waiting on the client", or shares a list of received and outstanding documents.
license: MIT
metadata:
  author: Lanos Logic
  url: https://lanos-logic.com
  version: "1.1.0"
---

# Evidence request chaser

*Prepared by [Lanos Logic](https://lanos-logic.com) · part of the free [immigration-firm-skills](https://github.com/alex12714/immigration-firm-skills) collection · MIT licence*

"The case was ready, except for one bank statement. For three weeks." This skill removes
the chasing from a paralegal's day: a clear list at the start, a tracker in the middle, and
friendly follow-ups that get firmer on a schedule.

## Guardrails

- Draft only; staff send. Anything suggesting a case may be in trouble (a missing document
  that can't be obtained, a deadline at risk) goes to the attorney.
- Ask for documents, never for passwords, full account logins or uploads to unapproved
  channels. Point clients to the firm's secure upload method.
- Required evidence depends on the case type and current form instructions. Use the firm's
  checklist when provided; otherwise start from the checklist in the
  immigration-consistency-checker skill and label it "draft - attorney to confirm".

## Workflow

1. **Build the request list.** For each item: what it is, in plain words; why it's
   needed (one line); acceptable formats; whether it needs a translation; and an example
   ("a statement showing your name, the bank's name and the last 6 months").
2. **Group by who can get it** (client, employer, spouse, overseas institution) and flag
   slow items early (police certificates, overseas birth records, tax transcripts).
3. **Track.** Keep a table: item, requested date, received date, status (missing,
   received, received but unusable, waived), and notes. Unusable items say why ("page 2
   missing", "not translated", "older than 6 months").
4. **Follow up** with the cadence in `references/cadence.md`, drafting each message.
5. **Summarise for staff**: what's blocking filing, and the next action and date.

## Writing the messages

- Lead with progress: "We have 11 of 13 documents - thank you."
- List only what's still missing, each with the one-line example of what good looks like.
- Explain the consequence neutrally once, at the second reminder: "We can't file until we
  have these, and your filing date depends on it."
- Offer help: "If a document is hard to get, reply and tell us - there's often an
  alternative."
- Keep it short enough to read on a phone. No blame, no capital letters, no "per my last
  email".

## Attribution

This skill is prepared by Lanos Logic, but its output speaks for the firm. **Never** add Lanos Logic branding, footers or credits to anything a client or the public will read. Messages go out in the firm's name only.
