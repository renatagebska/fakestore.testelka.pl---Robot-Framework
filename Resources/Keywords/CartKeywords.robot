*** Settings ***
Library     SeleniumLibrary
Library    Collections
Resource    ../Variables/CartVariables.robot
Resource    ../Variables/ProductsVariables.robot
Resource    ../CommonKeywords.robot

*** Keywords ***

Click On Windsurfing Category
    Wait Until Element is Visible            ${WINDSURFING_CATEGORY_XPATH}  
    Click Element                            ${WINDSURFING_CATEGORY_XPATH}  
    Title Should Be                          Windsurfing – FakeStore

Click On Climbing Category
    Wait Until Element is Visible            ${CLIMBING_CATEGORY_XPATH}
    Click Element                            ${CLIMBING_CATEGORY_XPATH}
    Title Should Be                          Wspinaczka – FakeStore

Click On Yoga Category
    Wait Until Element is Visible            ${YOGA_CATEGORY_XPATH}
    Click Element                            ${YOGA_CATEGORY_XPATH}
    Title Should Be                          Yoga i pilates – FakeStore

Click On Sailing Category
    Execute JavaScript                       window.scrollBy(0, 200);
    Wait Until Element is Visible            ${SAILING_CATEGORY_XPATH}    timeout=10s
    Click Element                            ${SAILING_CATEGORY_XPATH}
    Title Should Be                          Żeglarstwo – FakeStore 

Select Product By Order
    [Arguments]                             ${select_option}
    ${product_locator} =    Collections.Get From Dictionary    ${SELECT_PRODUCT_LOCATORS}    ${select_option}
    Run Keyword If    '${product_locator}' != 'None'    
    ...    Click Element    ${product_locator}
    ...  ELSE
    ...    Log    No locator found for option: ${select_option}
    ...    Scroll Page Down If Element Not Visible    ${product_locator}

Locate and Click Quantity Input Field
    Click Element                           ${QUANTITY_INPUT_XPATH}

Clear and Enter Quantity
    [Arguments]                             ${quantity}
    Input Text                              ${QUANTITY_INPUT_XPATH}    ${EMPTY}
    Input Text                              ${QUANTITY_INPUT_XPATH}    ${quantity}

Add Windserfing Product To Cart
    [Arguments]    ${windserfing_locations}
    FOR    ${location}    IN    @{windserfing_locations}
        ${windserfing_locator}    Collections.Get From Dictionary    ${ADD_WINDSERFING_LOCATORS}    ${location}
        Run Keyword If    '${windserfing_locator}' != 'None'
        ...    Wait Until Element is Visible     ${windserfing_locator}    timeout=10s
        ...  ELSE
        ...    Log    No locator found for windserfing product at location: ${location}
        END
   
