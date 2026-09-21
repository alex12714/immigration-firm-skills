# Claude skills for immigration law firms

Nine [Claude Agent Skills](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview)
that take the operational load off US immigration firms: pre-filing checks, client updates,
document chasing, RFE organisation, EB-5 source-of-funds mapping and more.

Each skill drafts, organises and flags. **Attorneys and paralegals stay in charge**, and
nothing is filed or sent without human review.

→ **[Install instructions](INSTALL.md)**

---

## Why these skills exist

We read the public reviews first.

We collected **11,738 Avvo reviews of 106 immigration attorneys across 20 US metros**
(September 2026). 96% were five stars. 214 (1.8%) were one or two stars, and we read and
coded **110** of the negative immigration reviews by hand.

Almost none of them were about the law.

| What unhappy clients complained about | Share of the 110 negative reviews |
|---|---|
| Paid, then felt abandoned ("great until I paid") | 50% |
| Couldn't reach anyone | 45% |
| Never dealt with the lawyer they hired | 25% |
| Rude, rushed, didn't listen | 22% |
| Preventable mistakes (wrong dates, missing signatures) | 19% |
| Told it was fine when it wasn't | 12% |
| Never filed, missed deadlines | 10% |

*Reviews can mention more than one issue, so the column adds up to more than 100%. No firm
or attorney is named, and none will be.*

The pattern is operations, not legal judgement: what happens between the retainer and the
receipt notice. Operations problems are fixable. Each skill below targets one of them.

## The skills

| Skill | What it does | What it fixes |
|---|---|---|
| [`immigration-consistency-checker`](skills/immigration-consistency-checker/SKILL.md) | Cross-checks names, dates, A-numbers, addresses, signatures, form editions and exhibit references across a whole package, and outputs a discrepancy report for review | Preventable mistakes (19%): "an RFE over a typo shouldn't happen" |
| [`client-status-update-writer`](skills/client-status-update-writer/SKILL.md) | Plain-language updates, sent monthly and whenever a notice arrives, in the client's language, including "no change yet". Escalates RFEs and denials to the attorney instead of messaging the client | Couldn't reach anyone (45%), felt abandoned (50%) |
| [`evidence-request-chaser`](skills/evidence-request-chaser/SKILL.md) | Per-client document checklists with examples, a tracker, and polite follow-ups that get firmer on a schedule | "Ready except one bank statement. For three weeks." |
| [`client-team-intro-pack`](skills/client-team-intro-pack/SKILL.md) | A welcome pack at signing showing who does what and when the attorney is involved, plus advance notice of any handoff | "I hired the attorney. I got the assistant." (25%) |
| [`firm-ai-policy-drafter`](skills/firm-ai-policy-drafter/SKILL.md) | Interviews the firm and drafts a one-page generative AI policy on the ABA Formal Opinion 512 framework, plus a staff quick-reference card | Staff pasting client documents into personal chatbots |
| [`rfe-response-organizer`](skills/rfe-response-organizer/SKILL.md) | Splits an RFE or NOID into numbered requests, maps each to evidence in the file, flags gaps, and builds a work plan and exhibit index. The attorney writes the argument | Hours lost around every RFE |
| [`eb5-source-of-funds-mapper`](skills/eb5-source-of-funds-mapper/SKILL.md) | Builds a chronological, exhibit-referenced trail of the lawful source and path of funds, and flags every break in it | The heaviest document burden in immigration practice |
| [`immigration-policy-digest`](skills/immigration-policy-digest/SKILL.md) | A weekly digest from primary sources only (USCIS, the Visa Bulletin, the Federal Register) listing which checklists to update | "The law changes every month. The checklist hasn't." |
| [`review-response-drafter`](skills/review-response-drafter/SKILL.md) | Public replies to negative reviews that reveal nothing confidential (ABA Formal Opinion 496), plus the internal lesson from each | The visible 4% that prospects go looking for |

## Built-in safeguards

Every skill follows the same rules:

1. **Firm account only.** Client data goes only into the firm's own business or
   enterprise AI account with retention settled, never a personal one. Otherwise, work
   anonymised ("Investor A").
2. **Humans sign off.** Skills draft and flag; people decide, file and send.
3. **Nothing from memory that changes.** Fees, form editions, processing times, deadlines
   and program rules are checked against uscis.gov and other primary sources, or marked
   "verify manually".
4. **No legal advice.** No eligibility or strategy calls, and no predicted outcomes.
5. **Escalate, don't improvise.** RFEs, NOIDs, denials and deadline risks go straight to
   the attorney.
6. **Test data in demos.** Never real client files.

## Try it in two minutes

1. Install `immigration-consistency-checker` ([INSTALL.md](INSTALL.md)).
2. Open [`examples/synthetic-package.md`](skills/immigration-consistency-checker/examples/synthetic-package.md),
   a fictional I-130 package with planted errors.
3. Ask Claude: *"Run a pre-filing check on this package."*

It should find the missing attorney signature, the marriage date that differs between the
form and the certificate, a day/month swap in a date of birth, a transposed A-number, an
inconsistent surname and an address-history gap.

## Repo layout

```
skills/<skill-name>/SKILL.md      the skill
skills/<skill-name>/references/   checklists, templates, source lists
skills/<skill-name>/examples/     synthetic test data
INSTALL.md                        how to install (Claude Code, Claude.ai, API)
package.sh                        builds uploadable zips into dist/
```

## Disclaimer

These skills are drafting and organising aids for law firm staff. They are not legal
advice, don't create an attorney-client relationship, and don't replace attorney review.
Check your state bar's rules on generative AI, confidentiality and online reviews before
adopting them.

## Licence

MIT - free to use, adapt and share, including inside your firm. See [LICENSE](LICENSE).

---

Built by **Lanos Logic**. We build the systems behind immigration law firms: client
updates, intake and pre-filing checks.
