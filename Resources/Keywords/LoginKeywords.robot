*** Settings ***
Library     SeleniumLibrary
Resource    ../Variables/LoginVariables.robot

*** Keywords ***

Input Login Email Address
    [Arguments]                          ${login_email}
    Input Text                           ${USERNAME_INPUT_ID}    ${login_email}

Input Login Password
    [Arguments]                          ${login_password}
    Input Text                           ${PASSWORD_INPUT_ID}    ${login_password}

Check Remember Me Box
    Click Element                        ${REMEMBER_ME_CHECKBOX_ID}

Click On Login Button
    Execute JavaScript                   window.scrollBy(0, 200);
    Wait Until Element is Visible        ${LOGIN_BUTTON_CSS}    timeout=10s
    Click Element                        ${LOGIN_BUTTON_CSS}

Welcome Page Should Be Open
     Wait Until Page Contains            Witaj