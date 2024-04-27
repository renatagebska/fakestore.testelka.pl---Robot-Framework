*** Settings ***
Library     SeleniumLibrary
Resource    ../Variables/CheckoutVariables.robot
Resource    ../Variables/CartVariables.robot
Resource    CommonKeywords.robot

*** Keywords ***

Locate and Apply Coupon Code
    [Arguments]                                 ${coupon_index}
    Execute JavaScript                          window.scrollBy(0, 200);
    Wait Until Element Is Visible               ${COUPON_CODE_INPUT_ID}    timeout=10s
    Click Element                               ${COUPON_CODE_INPUT_ID}
    Input Text                                  ${COUPON_CODE_INPUT_ID}   ${COUPONS}[${coupon_index}]
    Click Element                               ${APPLY_COUPON_BUTTON_XPATH}

Click Process To Checkout Button
    Execute JavaScript                          window.scrollBy(0, 300);
    Wait Until Element Is Visible               ${PROCEED_TO_CHECKOUT_BUTTON_XPATH}
    Click Element                               ${PROCEED_TO_CHECKOUT_BUTTON_XPATH}

Fill In Payments Details
    [Arguments]     ${first_name_index}    ${last_name_index}    ${address_index}    ${postcode_index}    ${city_index}    ${phone_index}    ${email_index}
    Wait Until Element Is Visible               ${BILLING_FIRST_NAME_INPUT_ID}    timeout=10s
    Click Element                               ${BILLING_FIRST_NAME_INPUT_ID}
    Input Text                                  ${BILLING_FIRST_NAME_INPUT_ID}    ${FIRST_NAME}[${first_name_index}]
    Log    Entered First Name:  ${FIRST_NAME}[${first_name_index}]

    Wait Until Element Is Visible               ${BILLING_LAST_NAME_INPUT_ID}     timeout=10s
    Click Element                               ${BILLING_LAST_NAME_INPUT_ID}
    Input Text                                  ${BILLING_LAST_NAME_INPUT_ID}     ${LAST_NAME}[${last_name_index}]
    Log    Entered Last Name:   ${LAST_NAME}[${last_name_index}]

    Execute JavaScript                          window.scrollBy(0, 300);
    Wait Until Element Is Visible               ${BILLING_STREET_INPUT_ID}        timeout=10s
    Click Element                               ${BILLING_STREET_INPUT_ID}
    Input Text                                  ${BILLING_STREET_INPUT_ID}        ${ADDRESS}[${address_index}]
    Log    Entered Street:  ${ADDRESS}[${address_index}]

    Execute JavaScript                          window.scrollBy(0, 300);
    Wait Until Element Is Visible               ${BILLING_POSTCODE_INPUT_ID}      timeout=10s
    Click Element                               ${BILLING_POSTCODE_INPUT_ID}
    Input Text                                  ${BILLING_POSTCODE_INPUT_ID}      ${POSTCODE}[${postcode_index}]
    Log    Entered Postcode:    ${POSTCODE}[${postcode_index}]

    Execute JavaScript                          window.scrollBy(0, 300);
    Wait Until Element Is Visible               ${BILLING_CITY_INPUT_ID}          timeout=10s
    Click Element                               ${BILLING_CITY_INPUT_ID}
    Input Text                                  ${BILLING_CITY_INPUT_ID}          ${CITY}[${city_index}]
    Log    Entered City:    ${CITY}[${city_index}]

    Execute JavaScript                          window.scrollBy(0, 300);
    Wait Until Element Is Visible               ${BILLING_PHONE_INPUT_ID}         timeout=10s
    Click Element                               ${BILLING_PHONE_INPUT_ID}
    Input Text                                  ${BILLING_PHONE_INPUT_ID}         ${PHONE}[${phone_index}]
    Log    Entered Phone:   ${PHONE}[${phone_index}]

    Execute JavaScript                          window.scrollBy(0, 300);
    Wait Until Element Is Visible               ${BILLING_EMAIL_INPUT_ID}         timeout=10s
    Click Element                               ${BILLING_EMAIL_INPUT_ID}
    Input Text                                  ${BILLING_EMAIL_INPUT_ID}         ${BILLING_EMAIL}[${email_index}]
    Log    Entered Email:   ${BILLING_EMAIL}[${email_index}]

Fill In Card Details
    Wait Until Element Is Visible               ${BILLING_CARD_NUMBER_INPUT_CSS}   timeout=10s
    Click Element                               ${BILLING_CARD_NUMBER_INPUT_CSS}
    Input Text                                  ${BILLING_CARD_NUMBER_INPUT_CSS}   ${BILLING_CARD_NUMBER}


    Wait Until Element Is Visible               ${BILLING_CARD_EXPIRY_INPUT_CSS}    timeout=10s
    Click Element                               ${BILLING_CARD_EXPIRY_INPUT_CSS}
    Input Text                                  ${BILLING_CARD_EXPIRY_INPUT_CSS}   ${BILLING_CARD_EXPIRY}


    Wait Until Element Is Visible               ${BILLING_CARD_CVC_INPUT_CSS}      timeout=10s
    Click Element                               ${BILLING_CARD_CVC_INPUT_CSS}
    Input Text                                  ${BILLING_CARD_CVC_INPUT_CSS}      ${BILLING_CARD_CVC}