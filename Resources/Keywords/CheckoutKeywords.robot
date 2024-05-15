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

Read And Accept Terms
    Execute JavaScript                          window.scrollBy(0, 500);
    Wait Until Element Is Visible               ${BILLING_TERMS_LINK_CSS}
    Click Element                               ${BILLING_TERMS_LINK_CSS}
    FOR    ${i}    IN RANGE    3
        Wait Until Page Contains Element    ${BILLING_TERMS_INPUT_CSS}    timeout=10s
        ${checkbox}=    Run Keyword And Return Status    Checkbox Should Be Selected    ${BILLING_TERMS_INPUT_CSS}
        Log    Checkbox status: ${checkbox}
        Run Keyword If    '${checkbox}' == 'FAIL'
        ...    Click Element If Visible    ${BILLING_TERMS_INPUT_CSS}
        ...    ELSE
        ...    Log    Checkbox already selected
    END
    Fail    Unable to handle checkbox after 3 attempts

Click The Buy And Pay Button
    Execute JavaScript                          window.scrollBy(0, 500);
    FOR    ${i}    IN RANGE    3
        ${billing_button} =    Run Keyword And Return Status    Wait Until Element Is Visible    ${BILLING_PLACE_ORDER_BUTTON_CSS}    timeout=20s
        Log    ${billing_button}
        Run Keyword If    '${billing_button}' == 'True'
        ...    Click Element If Visible   ${BILLING_PLACE_ORDER_BUTTON_CSS}
        ...    ELSE
        ...    Refresh Page And Retry
    END
    Fail    Unable to find the billing button after 3 attempts
    Check Redirected Page

Click Element If Visible
    [Arguments]    ${locator}
    ${element_present} =    Run Keyword And Return Status    Wait Until Element Is Visible    ${locator}    timeout=5s
    Run Keyword If    '${element_present}' == 'True'    Click Element    ${locator}
    ...    ELSE
    ...    Log    Element not visible or found after waiting

Refresh Page And Retry
    Execute JavaScript    window.location.reload(true)

Check Redirected Page
    ${current_url}=     Get Location
    Should Match Regexp     ${current_url}    ${ORDER_RECEIVED_URL}
