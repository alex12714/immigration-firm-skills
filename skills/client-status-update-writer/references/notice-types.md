# Event types and handling

| Event | Draft client message? | Notes |
|---|---|---|
| No change | Yes | The most important update. Include the processing-time range and "nothing needed". |
| Receipt notice (I-797C) | Yes | Explain that the receipt number lets them check status, and that it proves filing. Mention any receipt-based work or travel benefits only if staff confirm they apply. |
| Biometrics appointment | Yes | Date, place, what to bring (the notice, photo ID). Rescheduling rules: staff confirm. |
| Case transferred | Escalate first | Often routine, but the attorney should confirm before the client is told what it means. |
| Interview scheduled | Yes, after attorney review | Include prep call scheduling. |
| RFE / NOID | No; escalate | Internal alert with the response deadline. Holding message only. |
| Approved | Yes | What arrives next (card, approval notice) and any conditions (e.g. conditional residence, I-751 / I-829 timing), confirmed by staff. |
| Card produced / mailed | Yes | What to do if it hasn't arrived within the expected window. |
| Denied | No; escalate | The attorney calls the client. Never send by message first. |
| Unknown status text | Escalate | Quote the text to the attorney. |

Internal alert format:
```
ALERT - <case ref> - <event> - received <date>
Deadline: <date or "check notice">
Needed: <what the notice asks for>
Holding message drafted: yes
```
