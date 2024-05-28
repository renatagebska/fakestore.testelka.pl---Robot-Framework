*** Settings ***
Library     SeleniumLibrary
Resource    ../Variables/LoginVariables.robot

*** Keywords ***

Input Login Email Address
    [Arguments]                          ${login_email_index}
    Input Text                           ${USERNAME_INPUT_ID}    ${email_list}[${login_email_index}]

Input Login Password
    [Arguments]                          ${login_password_index}
    Input Text                           ${PASSWORD_INPUT_ID}    ${password_list}[${login_password_index}]

Check Remember Me Box
    Click Element                        ${REMEMBER_ME_CHECKBOX_ID}

Click On Login Button
    Execute JavaScript                   window.scrollBy(0, 200);
    Wait Until Element is Visible        ${LOGIN_BUTTON_CSS}    timeout=10s
    Click Element                        ${LOGIN_BUTTON_CSS}

Welcome Page Should Be Open
     Wait Until Page Contains            Witaj