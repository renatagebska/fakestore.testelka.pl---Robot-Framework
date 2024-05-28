*** Settings ***
Library     SeleniumLibrary
Resource    ../Variables/SortVariables.robot

*** Keywords ***

Locate Sorting Box
    Wait Until Element Is Visible        ${ORDERBY_FORM_NAME}
    Click Element                        ${ORDERBY_FORM_NAME}

Select Sort Option
    [Arguments]    ${select_option}
    ${sort_locator} =    Collections.Get From Dictionary    ${SORT_LOCATORS}    ${select_option}
    Run Keyword If    '${sort_locator}' != 'None'
    ...    Click Element    ${sort_locator}
    ...    ELSE
    ...    Log    No locator found for option:  ${select_option}

Select Sort Options
    ${sort_options}    Create List    @{SORT_LOCATORS.keys()}
    FOR    ${select_option}    IN    @{sort_options}
        Log    "Selecting sort option: ${select_option}"
        Select Sort Option    ${select_option}
        ${expected_url}    Get From Dictionary    ${SORT_URLS}    ${select_option}
        ${current_url}    Get Location
        Should Contain    ${current_url}    ${expected_url}
    END

Validate Prices Are Sorted
    [Arguments]    ${sort_option}
    Wait Until Page Contains Element    ${price_element}
    ${prices}   Get WebElements  ${price_element}
    ${prices_text}    Create List
    FOR    ${price}    IN    @{prices}
        ${price_text}   Get Text    ${price}
        Append To List    ${prices_text}    ${price_text}
    END
    ${sorted_prices}    Run Keyword If    '${sort_option}' == 'price_asc'
    ...    Evaluate    sorted(${prices_text}, key=lambda x: int(float(x.replace(' zł', '').replace(' ', '').replace(',', '.'))))
    Log    Prices sorted in ascending order: ${sorted_prices}
    ${sorted_prices_desc}    Run Keyword If    '${sort_option}' == 'price_desc'
    ...    Evaluate    sorted(${prices_text}, key=lambda x: int(float(x.replace(' zł', '').replace(' ', '').replace(',', '.'))), reverse=True)
    Log    Prices sorted in descending order: ${sorted_prices_desc}

