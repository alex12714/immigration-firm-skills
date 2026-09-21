# SYNTHETIC TEST PACKAGE - fictional, for demos only

Every person, number and address below is invented. No real client data.

Case type: I-130 spouse petition (with I-130A)

## Form G-28
- Attorney: Jordan Example, Example Immigration Law PLLC
- Client: Maria Elena Ruiz-Santos
- Client signature: [signed] 02/10/2026
- Attorney signature: [BLANK]                                   <- planted error 1

## Form I-130 (edition 04/01/24)
- Petitioner: Daniel James Carter, DOB 07/22/1988, born Denver, USA
- Beneficiary: Maria Elena Ruiz Santos, DOB 11/03/1991          <- planted error 2 (hyphen)
- Beneficiary A-number: A123456789
- Date of marriage: 06/14/2019                                  <- planted error 3
- Place of marriage: Austin, Texas
- Beneficiary current address: 1452 Oak Hollow Dr, Austin, TX 78704
- Petitioner signature: [signed] 02/11/2026

## Form I-130A (edition 04/01/24)
- Beneficiary: Maria Elena Ruiz-Santos, DOB 03/11/1991          <- planted error 4 (DOB)
- A-number: A123456798                                          <- planted error 5 (digits swapped)
- Address history: 1452 Oak Hollow Dr, Austin TX, 03/2021 - present;
  prior: Calle Luna 22, Guadalajara, Mexico, 01/2015 - 12/2019
  (gap 01/2020 - 02/2021 not accounted for)                     <- bonus: address gap
- Signature: [signed] 02/11/2026

## Exhibit C: marriage certificate (translated)
- Parties: Daniel James Carter and Maria Elena Ruiz-Santos
- Date of marriage: 14 June 2018
- Place: Austin, Travis County, Texas
- Translator certification: [attached]

## Exhibit D: beneficiary passport (Mexico)
- Name: RUIZ SANTOS, MARIA ELENA
- DOB: 03 NOV 1991
- Passport no. G00000000, expires 09/2031

## Expected findings
1. G-28 missing the attorney signature (critical)
2. Beneficiary surname hyphenated on the G-28, I-130A and certificate but not on the
   I-130 or passport (warning; confirm the legal name form)
3. Marriage date: I-130 says 2019, certificate says 2018 (critical)
4. DOB: 11/03/1991 on the I-130 and passport vs 03/11/1991 on the I-130A (critical; likely
   day/month swap)
5. A-number: A123456789 vs A123456798 (critical)
6. Address history gap 01/2020 - 02/2021 on the I-130A (warning)
7. Form edition dates: verify against uscis.gov (not checked without web access)
