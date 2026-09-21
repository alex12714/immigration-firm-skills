---
name: client-status-update-writer
description: Drafts plain-language case status updates for immigration clients, one at a time or in a monthly batch across every open case. Turns a USCIS case status, notice (receipt, biometrics, RFE, transfer, interview, approval, denial) or "nothing happened yet" into a short, calm message in the client's language, with current processing-time context and what happens next. Use when someone says "client update", "status update", "monthly update", "what do I tell the client", "draft a message about this notice", "any update on my case", "update all open cases", or pastes a USCIS notice or case status.
---

# Client status update writer

The one-star reviews say it plainly: clients forgive USCIS for being slow; they don't
forgive their lawyer for being silent. This skill makes proactive updates cheap enough to
send every month on every case, **including when nothing has changed**.

## Guardrails

- Draft only. A staff member reviews every message before it goes out, and anything that
  touches strategy, risk or a deadline goes to the attorney first (see "Escalate" below).
- Run inside the firm's approved AI account. For batches, prefer case references and
  first names over full identity data; never include A-numbers or passport numbers in the
  message body.
- Never predict an outcome or promise a date. Give ranges from published processing times
  and say they are USCIS's estimates.
- Processing times change monthly. Pull them from uscis.gov/processing-times when web
  access exists; otherwise leave a `[PROCESSING TIME: check uscis.gov]` placeholder.
- No legal advice in the message. If the client needs a decision, say the attorney will
  call and propose a time.

## Inputs

Per case: client first name, preferred language, case type, form, service center or field
office, receipt date, latest status or notice text, date of last update sent, and any staff
notes. For a batch, accept a table (CSV or pasted rows) with those columns.

## Workflow

1. **Classify the event** using `references/notice-types.md`: no change, receipt, biometrics
   scheduled, RFE / NOID, transferred, interview scheduled, approved, card produced, denied,
   or unknown.
2. **Escalate or draft.** RFE, NOID, denial, a missed biometrics appointment, an
   unexpected transfer, or anything with a response deadline: **do not draft a client
   message**. Produce an internal alert for the attorney instead (event, deadline, what's
   needed), plus a holding message: "We've received a notice on your case and [attorney]
   is reviewing it. We'll call you by [day]."
3. **Draft the update** with the structure below.
4. **Translate** if the client's language isn't English, and keep the English version
   alongside for the file.
5. **Batch mode:** output one block per case, then a summary table (case ref, event,
   drafted / escalated, next update due).

## Message structure (under 150 words)

1. What happened, in one sentence, in plain words. No form jargon without an explanation.
2. What it means for them.
3. What happens next, and the typical timeframe per USCIS (a range, sourced).
4. Whether they need to do anything. Say "Nothing is needed from you right now" when
   true; that sentence alone prevents most "any update?" messages.
5. When they'll hear from the firm next, and who to contact.

## Example (no change)

> Hi Ana, here's your monthly update on your green card application.
>
> There's no new decision from USCIS yet. That's normal at this stage: USCIS currently
> reports that most of these applications at your office are completed within
> [range] months.
>
> Nothing is needed from you right now. We check your case every week and will tell you
> the day anything arrives.
>
> Your next update will come in early [month]. If anything changes for you (a new address,
> travel plans, a new job), please tell Sam on our team.

## Tone

Warm, calm and specific. Short sentences. No "rest assured", no "at this time", no
exclamation marks on bad news. Use the client's name, and the attorney's name when the
attorney is the one acting.
