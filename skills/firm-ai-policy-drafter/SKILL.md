---
name: firm-ai-policy-drafter
description: Interviews a law firm (immigration firms especially) and drafts a practical one-page generative AI use policy plus a staff quick-reference card, grounded in ABA Formal Opinion 512 and the Model Rules on competence, confidentiality, communication and supervision. Covers red lines for client data, anonymisation, approved tools, account and retention settings, human review, client disclosure and training. Use when someone says "AI policy", "generative AI policy for our firm", "can our paralegals use ChatGPT", "ABA 512", "AI rules for staff", or "our team is pasting client data into AI".
---

# Firm AI policy drafter

Firms avoid AI to protect client data, while their staff quietly paste passports into
personal chatbots. Banning AI doesn't stop that; a clear, short policy with a safe approved
option does. This skill produces that policy in one sitting.

## Guardrails

- The output is a **draft for the firm's attorneys to adopt**, not legal advice. Say so
  at the top of the document.
- Cite ABA Formal Opinion 512 (July 2024) and the relevant ABA Model Rules as the
  framework, but tell the firm to check its own state bar's rules and opinions, which can
  differ and have been issued by several states.
- Don't name or rank specific AI vendors as "compliant". Describe the settings to verify
  (business or enterprise plan, training on inputs off, retention terms in the contract,
  access controls) and let the firm choose.

## Interview (ask in one short batch, accept "don't know")

1. Firm size and roles (attorneys, paralegals, intake, admin, contractors, offshore staff).
2. What AI tools people use today, officially or not.
3. Does the firm have, or plan to buy, a business or enterprise AI account?
4. Which tasks the firm wants to allow (drafting, summarising, translation, research,
   intake, client messages).
5. Case types with especially sensitive data (asylum, VAWA/U/T, EB-5 financials, minors).
6. Client engagement letter: does it mention technology or AI today?
7. Who owns the policy and approves new tools.

## Output 1: the policy (fits on one page, about 450 words)

Use the template in `references/policy-template.md`. Required sections:
1. Purpose and scope (who it covers, including contractors).
2. **Red lines**: no client-identifying information or client documents in any personal
   or unapproved AI account, ever.
3. Approved tools and the account and retention settings they must run under.
4. Allowed and not allowed uses.
5. Anonymise first ("Investor A", "[DOB]") whenever an approved tool isn't needed.
6. Human review: a qualified person checks every AI output before it's used; an attorney
   is responsible for anything filed or sent to a client (Rules 5.1 and 5.3 supervision).
7. Verification: check every citation, fact, form edition, fee and deadline against the
   primary source.
8. Client communication and consent: when the firm tells clients about AI use and when it
   asks for informed consent (Opinion 512 discusses both), plus fee fairness if AI saves
   time.
9. Incidents: what to do if client data went into the wrong tool (tell [owner] the same
   day; no blame for prompt reporting).
10. Training and review date.

## Output 2: staff quick-reference card (10 lines max)

Green (do), amber (ask first), red (never), with examples from immigration work, e.g.
Red: "Pasting a passport, bank statement or client name into a personal chatbot."

## Output 3: a one-paragraph engagement letter clause (optional)

A plain-language disclosure the firm can adapt, marked "attorney to review for your
jurisdiction".
