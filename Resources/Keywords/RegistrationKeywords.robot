*** Settings ***
Library     SeleniumLibrary
Resource    ../Variables/RegistrationVariables.robot
 
*** Keywords ***

Input Registration Email Address
    [Arguments]                          ${reg_email}
    Input Text                           ${REG_EMAIL_INPUT_ID}    ${reg_email}

Input Registration Password
    [Arguments]                          ${reg_password}
    Input Text                           ${REG_PASSWORD_INPUT_ID}    ${reg_password}

Click On Register Button
    Execute JavaScript                   window.scrollBy(0, 200);
    Wait Until Element is Visible        ${REG_BUTTON_CSS}    timeout=10s
    Click Element                        ${REG_BUTTON_CSS}

Welcome Page Should Be Open
     Wait Until Page Contains            Witaj