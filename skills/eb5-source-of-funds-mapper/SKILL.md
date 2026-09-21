---
name: eb5-source-of-funds-mapper
description: Organises EB-5 investor financial evidence into a lawful source and path of funds map - a chronological money trail from origin (salary, business profits, property sale, gift, loan, inheritance) through every transfer and currency conversion to the new commercial enterprise or escrow - with an exhibit reference for each step and a list of gaps and inconsistencies for the attorney. Use when someone says "source of funds", "path of funds", "EB-5 funds tracing", "I-526E evidence", "map the money trail", "gift letter evidence", or shares bank statements, sale contracts or transfer records for an EB-5 investor.
---

# EB-5 source of funds mapper

EB-5 files are the most document-heavy in immigration practice, and source-of-funds
problems are a common reason for RFEs. This skill turns a pile of statements into a clear,
exhibit-referenced money trail, and shows exactly where the trail breaks.

## Guardrails

- This is the most sensitive data a firm holds (bank, tax and asset records). Run **only**
  in the firm's approved AI account with retention settled; otherwise work on anonymised
  figures ("Account 1", "Investor A").
- Organise and flag; never conclude that funds are or aren't lawful. That is the
  attorney's judgement.
- Investment thresholds, TEA rules, deadlines (such as the RIA grandfathering date) and
  evidentiary requirements change. Verify current requirements on uscis.gov and in the
  USCIS Policy Manual (Volume 6, Part G) before relying on any rule. Do not state amounts
  from memory.
- Exchange rates: use the rate evidenced in the bank documents. If none is shown, flag it
  and leave the conversion for staff to source; don't invent a rate.

## Inputs

Investor placeholder; claimed source(s) of funds; documents (bank statements, tax returns,
payslips, company financials, sale contracts, gift letters and the donor's own evidence,
loan agreements and security, wire confirmations, escrow receipts); and the investment
amount and destination.

## Workflow

1. **Sources.** For each claimed source, list the evidence of how the money was lawfully
   obtained (see `references/source-types.md`) and what's missing.
2. **Trail.** Build a chronological table of every movement: date, from account → to
   account, amount and currency, converted amount, and the document proving it (exhibit
   and page). Every step must link the previous balance to the next.
3. **Reconcile.** The funds leaving each account should be traceable to funds that arrived
   from a documented source. Flag unexplained deposits, commingling, cash, round-trip
   transfers, third-party payments, and timing gaps.
4. **Consistency.** Names on accounts match the investor (or a documented donor or
   company); amounts match across contracts, statements and forms; dates line up.
5. **Report** with the trail diagram, the table, the gaps and the suggested evidence
   requests (which feed evidence-request-chaser).

## Output

```
SOURCE & PATH OF FUNDS MAP - Investor A - draft for attorney review

Trail (summary)
[Salary 2016-2023] -> Account 1 (Bank X) -> [Property sale 2024] -> Account 2 -> FX -> Escrow

| Step | Date | From | To | Amount | Evidence (exhibit/page) | Status |
|---|---|---|---|---|---|---|
| 1 | ... | ... | ... | ... | Ex. F-3 p.2 | Documented |
| 4 | ... | ... | ... | ... | - | GAP: deposit of 120,000 unexplained |

GAPS AND FLAGS
...
EVIDENCE TO REQUEST
...
```
