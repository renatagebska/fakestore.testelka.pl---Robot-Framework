*** Settings ***
Library     SeleniumLibrary
Resource    ../Variables/SortVariables.robot

*** Keywords ***

Locate Sorting Box
    Wait Until Element Is Visible        ${ORDERBY_FORM_NAME}
    Click Element                        ${ORDERBY_FORM_NAME}

Select Sort Option
    [Arguments]                          ${select_option}
    ${sort_locator} =    Collections.Get From Dictionary    ${SORT_LOCATORS}    ${select_option}
    Run Keyword If    '${sort_locator}' != 'None'
    ...    Click Element    ${sort_locator}
    ...  ELSE
    ...    Log    No locator found for option: ${select_option}