---
name: immigration-consistency-checker
description: Pre-filing consistency check for US immigration packages. Cross-checks names, dates of birth, addresses, A-numbers, passport numbers, employer details, job titles, marriage and entry dates across every form, supporting document and exhibit, then confirms required signatures, form edition dates, fees and exhibit references. Produces a discrepancy report for paralegal and attorney review. Use when someone says "check this package", "pre-filing check", "QC this petition", "cross-check the forms", "find mismatches", "before we file", "catch typos before USCIS", or shares a set of forms and exhibits (I-130, I-485, I-765, I-131, I-129, I-140, I-526E, I-829, N-400, G-28 and similar).
---

# Immigration consistency checker

Catches the preventable mistakes that trigger RFEs and denials: a wrong wedding date, a
misspelt name, a missing signature, an outdated form edition. It **flags**; it never corrects
a form or decides what the right value is. A paralegal reviews every flag and an attorney
signs off on the package.

## Guardrails (read first)

- Only run on client documents inside the firm's own approved AI account, with data
  retention settled. If the user appears to be on a personal account, say so and suggest
  anonymised or test data instead.
- Never "fix" a value silently. Report what each document says and where.
- Never guess which value is correct. When two documents disagree, list both with sources.
- Form editions, fees and filing addresses change. Do not rely on memory: check
  uscis.gov (the form's page, "Forms Updates" and the fee schedule, Form G-1055) when web
  access exists, and otherwise mark those checks "verify manually".
- This is quality control, not legal advice. Don't comment on eligibility or strategy.

## Inputs

Ask for, or detect:
1. **Case type** (e.g. marriage-based adjustment, H-1B, EB-5 I-526E, naturalisation).
2. **Documents**: forms (PDF or text), civil documents, IDs, and the exhibit list or index.
3. **Optional:** the firm's own checklist for this case type, which overrides the defaults.

If documents are scanned images, read them carefully, and treat any low-confidence reading
as its own flag ("illegible, confirm manually") rather than a match.

## Workflow

1. **Inventory.** List every document received, with page counts. Compare the list against
   `references/checklists.md` for the case type and note anything missing.
2. **Extract the fact sheet.** For every person (beneficiary, petitioner, spouse, children,
   investor), pull every identity field from every document into one table:
   field → value → document → page/field number. The field list is in
   `references/fields.md`.
3. **Compare.** For each field, group identical values. Flag any field with more than one
   distinct value. Normalise before comparing: date formats (03/04/2020 vs 4 March 2020;
   note the US MM/DD order), diacritics, name order, hyphenation, abbreviations
   (St./Street). Report **normalised matches** as info, not errors, because USCIS may still
   read them as a mismatch when they involve names.
4. **Cross-document logic.** Check timelines: marriage date before filing date; entry date
   matching the I-94; employment dates without unexplained gaps or overlaps where the form
   asks for continuity; children's birth dates against the parents' relationship dates;
   address history covering the full required period with no gaps.
5. **Package completeness.**
   - Signatures: every signature block that needs one (applicant, petitioner, preparer,
     interpreter, G-28 attorney and client), with dates.
   - Form edition date on every page matches the edition USCIS currently accepts.
   - Fees: amount and payment form (or G-1450 / fee waiver) match the current schedule.
   - Translations: every foreign-language document has a full English translation and a
     translator certification.
   - Exhibit references: every exhibit cited in a cover letter or brief exists in the
     package, and every exhibit in the package is cited or listed.
6. **Report** in the format below.

## Output format

```
PRE-FILING CHECK - <case type> - <client placeholder or file ref>
Documents reviewed: <n>   Flags: <critical> critical, <warning> warnings, <info> info

CRITICAL (fix before filing)
1. Date of marriage differs
   - Form I-130, Part 2, item 18: 06/14/2019
   - Marriage certificate (Exhibit C): 14 June 2018
   Action: confirm the correct date against the certificate and correct the form.

WARNINGS (confirm)
...

INFO (normalised matches, no action unless the attorney wants consistency)
...

MISSING / NOT CHECKED
- Form edition dates: verify manually (no web access)
- ...

Reviewed by: ____________ (paralegal)   Approved: ____________ (attorney)
```

Severity guide:
- **Critical:** identity fields that differ (name, DOB, A-number, passport number,
  receipt number), a missing required signature, missing required form or fee, dates that
  contradict each other, an outdated form edition.
- **Warning:** address or employment inconsistencies, exhibits cited but missing,
  translations without certification, illegible fields.
- **Info:** formatting differences that normalise to the same value.

## Don'ts

- Don't paste extracted identity data into any other tool or output beyond the report.
- Don't mark the package "ready to file". The last line is always the human sign-off.
- Don't skip a check silently. Anything not checked goes under MISSING / NOT CHECKED.

## Demo

`examples/synthetic-package.md` is a fictional I-130 package with five planted errors. Use it
for screen recordings and demos. Never demo on a real client file.
