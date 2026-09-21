# Fields to extract and compare

For each person in the case, capture every occurrence of:

## Identity
- Full legal name (family / given / middle), and every other name used (maiden, aliases)
- Date of birth
- City and country of birth
- Country of citizenship or nationality
- Sex
- A-number (A + 8 or 9 digits)
- USCIS online account number
- Social Security number (last 4 only in the report)
- Passport number, issuing country, expiry date
- I-94 number, date and port of last entry, status at entry

## Contact and history
- Current mailing and physical address
- Address history (dates from/to), checked for gaps against the period the form requires
- Phone and email (a consistency check only)

## Relationships
- Date and place of marriage
- Prior marriages, with dates they ended and how
- Children: names and dates of birth

## Employment and education
- Employer name, address, FEIN
- Job title, SOC code, dates of employment, salary or wage (petitions)
- Degree, institution, dates

## Case references
- Receipt numbers (3 letters + 10 digits, e.g. IOE, EAC, WAC, LIN, SRC, MSC)
- Priority date, category, preference classification
- Attorney and G-28 details

## EB-5 specific
- Investment amount, date(s) of transfer, NCE / JCE names, regional center name and ID
- Targeted employment area designation (if claimed)
- Source-of-funds exhibit references (see the eb5-source-of-funds-mapper skill)

In the report, mask sensitive numbers down to the last 4 characters (e.g. passport ••••4821).
