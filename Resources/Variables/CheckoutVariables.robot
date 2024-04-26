*** Variables ***

${BILLING_FIRST_NAME_INPUT_ID}        id=billing_first_name
${BILLING_LAST_NAME_INPUT_ID}         id=billing_last_name
${BILLING_COMPANY_INPUT_ID}           id=billing_company
${BILLING_SELECT_COUNTRY_ID}          id=select2-billing_country-container
${BILLING_STREET_INPUT_ID}            id=billing_address_1
${BILLING_STREET2_INPUT_ID}           id=billing_address_2
${BILLING_POSTCODE_INPUT_ID}          id=billing_postcode
${BILLING_CITY_INPUT_ID}              id=billing_city
${BILLING_PHONE_INPUT_ID}             id=billing_phone
${BILLING_EMAIL_INPUT_ID}             id=billing_email

${BILLING_CARD_NUMBER_INPUT_CSS}      css=#stripe-card-element input.input
${BILLING_CARD_EXPIRY_INPUT_CSS}      css=#stripe-exp-element input.input
${BILLING_CARD_CVC_INPUT_CSS}         css=#stripe-cvc-element input.input

${BILLING_TERMS_INPUT_ID}             id=terms
${BILLING_PLACE_ORDER_BUTTON_ID}      id=place_order

@{FIRST_NAME}                         Julita    Kasper   Beata   Wiga
@{LAST_NAME}                          Gorska    Czarnecki   Symanska    Ostrowska
@{ADDRESS}                            Pszenna 101     Baczynskiego 18     Ceynowy 111     Pola 1
@{POSTCODE}                           30-654    80-410  10-055  85-218
@{CITY}                               Krakow       Gdansk      Olsztyn     Bydgoszcz
@{PHONE}                              60 103 88 09      79 624 50 78    60 194 39 37    53 561 56 89
@{BILLING_EMAIL}                      example@example.com   example1@example.com    example2@example.com    example3@example.com

${BILLING_CARD_NUMBER}                4242424242424242
${BILLING_CARD_EXPIRY}                10/26
${BILLING_CARD_CVC}                   111

