*** Settings ***
Library     SeleniumLibrary
Library     String
Library     OperatingSystem
Library     Collections
Resource    ../Variables/RegistrationVariables.robot

*** Keywords ***

Input Registration Email Address
    [Arguments]                          ${reg_email}
    Input Text                           ${REG_EMAIL_INPUT_ID}    ${reg_email}
    Log   Entered Registration Email:    ${reg_email}

Input Registration Password
    [Arguments]                          ${reg_password}
    Input Text                           ${REG_PASSWORD_INPUT_ID}    ${reg_password}
    Log   Entered Registration Password: ${reg_password}

Click On Register Button
    Execute JavaScript                   window.scrollBy(0, 200);
    Wait Until Element is Visible        ${REG_BUTTON_CSS}    timeout=10s
    Click Element                        ${REG_BUTTON_CSS}

Welcome Page Should Be Open
    Wait Until Page Contains             Witaj

Generate Random Email and Password
    ${random_string}=  Generate Random String  ${random_string_length}
    ${global_password}=  Generate Random Password
    ${global_email}=   Set Variable  ${email_prefix}_${random_string}@${email_domain}
    Log  Random Email: ${global_email}
    Log  Random Password: ${global_password}
    RETURN  ${global_email}  ${global_password}

Generate Random Password
    ${upper_case}     Set Variable    ABCDEFGHIJKLMNOPQRSTUVWXYZ
    ${lower_case}     Set Variable    abcdefghijklmnopqrstuvwxyz
    ${digits}         Set Variable    0123456789
    ${special_chars}  Set Variable    !"#$%&'()*+,-./:;<=>?@[\]^_`{|}~
    ${all_chars}      Set Variable    ${upper_case}${lower_case}${digits}${special_chars}
    ${random_password}=    Evaluate    ''.join(random.sample($all_chars, ${password_length}))
    RETURN  ${random_password}