*** Settings ***
Library     SeleniumLibrary
Resource    ../Variables/CommonVariables.robot
Resource    ../Variables/LoginVariables.robot

*** Keywords ***
Open Browser To FakeStore Page
    Open Browser                         ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be                      FakeStore – Sklep do nauki testowania

Go to My Account Page
    Click Element                        ${MY_ACCOUNT_LINK_ID}
    Title Should Be                      Moje konto – FakeStore

Input Login Email Address
    [Arguments]                          ${login_email}
    Input Text                           ${USERNAME_INPUT_ID}    ${login_email}

Input Login password
    [Arguments]                          ${login_password}
    Input Text                           ${PASSWORD_INPUT_ID}    ${login_password}

Check Remember Me Box
    Click Element                        ${REMEMBER_ME_CHECKBOX_ID}

Click on Login Button
    Execute JavaScript                   window.scrollBy(0, 200);
    Wait Until Element is Visible        ${LOGIN_BUTTON_CSS}    timeout=10s
    Click Element                        ${LOGIN_BUTTON_CSS}

Welcome Page Should Be Open
     Wait Until Page Contains            Witaj