*** Settings ***
Library     SeleniumLibrary
Resource    ../Variables/CommonVariables.robot
Resource    ../Variables/RegistrationVariables.robot
 
*** Keywords ***
Open Browser To FakeStore Page
    Open Browser                         ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be                      FakeStore – Sklep do nauki testowania

Go to My Account Page
    Click Element                        ${MY_ACCOUNT_LINK_ID}
    Title Should Be                      Moje konto – FakeStore

Input Registration Email Address
    [Arguments]                          ${reg_email}
    Input Text                           ${REG_EMAIL_INPUT_ID}    ${reg_email}

Input Registration Password
    [Arguments]                          ${reg_password}
    Input Text                           ${REG_PASSWORD_INPUT_ID}    ${reg_password}

Click on Register button
    Execute JavaScript                   window.scrollBy(0, 200);
    Wait Until Element is Visible        ${REG_BUTTON_CSS}    timeout=10s
    Click Element                        ${REG_BUTTON_CSS}

Welcome Page Should Be Open
     Wait Until Page Contains            Witaj