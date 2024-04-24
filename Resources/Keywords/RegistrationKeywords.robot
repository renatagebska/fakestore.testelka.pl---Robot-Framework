*** Settings ***
Library     SeleniumLibrary
Resource    ../Variables/CommonVariables.robot
Resource    ../Variables/RegistrationVariables.robot
 
*** Keywords ***
Open Browser To FakeStore Page
    Open Browser              ${BASE_URL}    {BROWSER}
    Maximize Browser Window
    Title Should Be           FakeStore – Sklep do nauki testowania

Go to My Account Page
    Click Element             ${MY_ACCOUNT_LINK_ID}
    Title Should Be           Moje konto – FakeStore

Input Registration Email Address
    [Arguments]               ${reg_email}
    Input Text                ${USERNAME_INPUT_ID}    ${reg_email}

Input Registration Password
    [Arguments]               ${reg_password}
    Input Text                ${REG_PASSWORD_INPUT_ID}    ${reg_password}

Click on Register button
    Click Element             ${REG_BUTTON_CSS} 

Welcome Page Should Be Open
     Wait Until Page Contains Element    ${SUCCESS_MESSAGE_CSS}  