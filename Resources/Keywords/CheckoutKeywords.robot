*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Resource    ../Variables/CheckoutVariables.robot
Resource    ../Variables/CartVariables.robot
Resource    ../Variables/CommonVariables.robot
Resource    CommonKeywords.robot

*** Keywords ***

Locate and Apply Coupon Code
    [Arguments]                                 ${coupon_index}
    Execute JavaScript                          window.scrollBy(0, 200);
    Wait Until Element Is Visible               ${COUPON_CODE_INPUT_ID}    timeout=10s
    Click Element                               ${COUPON_CODE_INPUT_ID}
    Input Text                                  ${COUPON_CODE_INPUT_ID}   ${COUPONS}[${coupon_index}]
    Execute JavaScript                          window.scrollBy(0, 200);
    Wait Until Element Is Visible               ${APPLY_COUPON_BUTTON_CSS}
    Click Element                               ${APPLY_COUPON_BUTTON_CSS}

Click Process To Checkout Button
    Execute JavaScript                          window.scrollBy(0, 400);
    Wait Until Element Is Visible               ${PROCEED_TO_CHECKOUT_BUTTON_XPATH}
    Click Element                               ${PROCEED_TO_CHECKOUT_BUTTON_XPATH}

Fill In Payments Details
    [Arguments]     ${first_name_index}    ${last_name_index}    ${address_index}    ${postcode_index}    ${city_index}    ${phone_index}    ${email_index}
    Wait Until Element Is Visible               ${BILLING_FIRST_NAME_INPUT_ID}    timeout=10s
    Click Element                               ${BILLING_FIRST_NAME_INPUT_ID}
    Clear Element Text                          ${BILLING_FIRST_NAME_INPUT_ID}
    Input Text                                  ${BILLING_FIRST_NAME_INPUT_ID}    ${FIRST_NAME}[${first_name_index}]

    Wait Until Element Is Visible               ${BILLING_LAST_NAME_INPUT_ID}     timeout=10s
    Click Element                               ${BILLING_LAST_NAME_INPUT_ID}
    Clear Element Text                          ${BILLING_LAST_NAME_INPUT_ID}
    Input Text                                  ${BILLING_LAST_NAME_INPUT_ID}     ${LAST_NAME}[${last_name_index}]

    Execute JavaScript                          window.scrollBy(0, 300);
    Wait Until Element Is Visible               ${BILLING_STREET_INPUT_ID}        timeout=10s
    Click Element                               ${BILLING_STREET_INPUT_ID}
    Clear Element Text                          ${BILLING_STREET_INPUT_ID}
    Input Text                                  ${BILLING_STREET_INPUT_ID}        ${ADDRESS}[${address_index}]

    Execute JavaScript                          window.scrollBy(0, 300);
    Wait Until Element Is Visible               ${BILLING_POSTCODE_INPUT_ID}      timeout=10s
    Click Element                               ${BILLING_POSTCODE_INPUT_ID}
    Clear Element Text                          ${BILLING_POSTCODE_INPUT_ID}
    Input Text                                  ${BILLING_POSTCODE_INPUT_ID}      ${POSTCODE}[${postcode_index}]

    Execute JavaScript                          window.scrollBy(0, 300);
    Wait Until Element Is Visible               ${BILLING_CITY_INPUT_ID}          timeout=10s
    Click Element                               ${BILLING_CITY_INPUT_ID}
    Clear Element Text                          ${BILLING_CITY_INPUT_ID}
    Input Text                                  ${BILLING_CITY_INPUT_ID}          ${CITY}[${city_index}]

    Execute JavaScript                          window.scrollBy(0, 300);
    Wait Until Element Is Visible               ${BILLING_PHONE_INPUT_ID}         timeout=10s
    Click Element                               ${BILLING_PHONE_INPUT_ID}
    Clear Element Text                          ${BILLING_PHONE_INPUT_ID}
    Input Text                                  ${BILLING_PHONE_INPUT_ID}         ${PHONE}[${phone_index}]

    Execute JavaScript                          window.scrollBy(0, 300);
    Wait Until Element Is Visible               ${BILLING_EMAIL_INPUT_ID}         timeout=10s
    Click Element                               ${BILLING_EMAIL_INPUT_ID}
    Clear Element Text                          ${BILLING_EMAIL_INPUT_ID}
    Input Text                                  ${BILLING_EMAIL_INPUT_ID}         ${BILLING_EMAIL}[${email_index}]

Fill In Card Number Details
    Wait Until Element Is Visible               ${FIELDSET_ID}
    Wait Until Frame Is Visible                 ${IFRAME_CARD_NUMBER}
    Select Frame                                ${IFRAME_CARD_NUMBER}
    Wait Until Element Is Visible               ${CARD_NUMBER_INPUT_NAME}         timeout=10s
    Click Element                               ${CARD_NUMBER_INPUT_NAME}
    Clear Element Text                          ${CARD_NUMBER_INPUT_NAME}
    Input Text                                  ${CARD_NUMBER_INPUT_NAME}         ${card_number}
    Unselect Frame

Fill In Card Expiry Details
    Wait Until Element Is Visible               ${FIELDSET_ID}
    Wait Until Frame Is Visible                 ${IFRAME_CARD_EXPIRY}
    Select Frame                                ${IFRAME_CARD_EXPIRY}
    Wait Until Element Is Visible               ${CARD_EXPIRY_INPUT_NAME}         timeout=10s
    Click Element                               ${CARD_EXPIRY_INPUT_NAME}
    Clear Element Text                          ${CARD_EXPIRY_INPUT_NAME}
    Input Text                                  ${CARD_EXPIRY_INPUT_NAME}         ${card_expiry_date}
    Unselect Frame

Fill In Card CVC Details
    Wait Until Element Is Visible               ${FIELDSET_ID}
    Wait Until Frame Is Visible                 ${IFRAME_CVC}
    Select Frame                                ${IFRAME_CVC}
    Wait Until Element Is Visible               ${CVC_INPUT_NAME}                 timeout=10s
    Click Element                               ${CVC_INPUT_NAME}
    Clear Element Text                          ${CVC_INPUT_NAME}
    Input Text                                  ${CVC_INPUT_NAME}                  ${card_cvc}
    Unselect Frame

Read And Accept Terms
    Wait Until Element Is Visible               ${BILLING_TERMS_CHECKBOX_XPATH}
    Select Checkbox                             ${BILLING_TERMS_CHECKBOX_XPATH}

Click The Buy And Pay Button
    Wait Until Element Is Visible               ${BILLING_PLACE_ORDER_BUTTON_XPATH}
    Click Element                               ${BILLING_PLACE_ORDER_BUTTON_XPATH}

Order Page Should Be Open
    Wait Until Page Contains                    Zamówienie otrzymane               timeout=20s


