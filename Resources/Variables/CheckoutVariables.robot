*** Variables ***

${BILLING_FIRST_NAME_INPUT_ID}        id:billing_first_name
${BILLING_LAST_NAME_INPUT_ID}         id:billing_last_name
${BILLING_COMPANY_INPUT_ID}           id:billing_company
${BILLING_SELECT_COUNTRY_ID}          id:select2-billing_country-container
${BILLING_STREET_INPUT_ID}            id:billing_address_1
${BILLING_STREET2_INPUT_ID}           id:billing_address_2
${BILLING_POSTCODE_INPUT_ID}          id:billing_postcode
${BILLING_CITY_INPUT_ID}              id:billing_city
${BILLING_PHONE_INPUT_ID}             id:billing_phone
${BILLING_EMAIL_INPUT_ID}             id:billing_email

${CARD_NUMBER_INPUT_NAME}             name:cardnumber
${CARD_EXPIRY_INPUT_NAME}             name:exp-date
${CVC_INPUT_NAME}                     name:cvc

${BILLING_TERMS_INPUT_CSS}            css:#terms
${BILLING_TERMS_LINK_CSS}             css:#payment > div > div > p > label > span > a
${BILLING_PLACE_ORDER_BUTTON_CSS}     css:#place_order

${FIELDSET_ID}                        id:wc-stripe-cc-form
${IFRAME_CARD_NUMBER}                 css:#stripe-card-element > div > iframe
${IFRAME_CARD_EXPIRY}                 css:#stripe-exp-element > div > iframe
${IFRAME_CVC}                         css:#stripe-cvc-element > div > iframe

@{FIRST_NAME}                         Julita    Kasper   Beata   Wiga
@{LAST_NAME}                          Gorska    Czarnecki   Symanska    Ostrowska
@{ADDRESS}                            Pszenna 101     Baczynskiego 18     Ceynowy 111     Pola 1
@{POSTCODE}                           30-654    80-410  10-055  85-218
@{CITY}                               Krakow       Gdansk      Olsztyn     Bydgoszcz
@{PHONE}                              60 103 88 09      79 624 50 78    60 194 39 37    53 561 56 89
@{BILLING_EMAIL}                      example@example.com   example1@example.com    example2@example.com    example3@example.com

${card_number}                        4242424242424242
${card_expiry_date}                   11/26
${card_cvc}                           123

