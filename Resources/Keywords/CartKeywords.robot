*** Settings ***
Library     SeleniumLibrary
Library     Collections
Resource    ../Variables/CartVariables.robot
Resource    ../Variables/ProductsVariables.robot
Resource    CommonKeywords.robot

*** Keywords ***

Click On Windsurfing Category
    Wait Until Element is Visible            ${WINDSURFING_CATEGORY_XPATH}  
    Click Element                            ${WINDSURFING_CATEGORY_XPATH}  
    Title Should Be                          Windsurfing – FakeStore
    Location Should Be                       ${WINDSERFING_URL}
    Log    Clicked on Windsurfing Category

Click On Climbing Category
    Wait Until Element is Visible            ${CLIMBING_CATEGORY_XPATH}
    Click Element                            ${CLIMBING_CATEGORY_XPATH}
    Title Should Be                          Wspinaczka – FakeStore
    Location Should Be                       ${CLIMBING_URL}
    Log    Clicked on Climbing Category

Click On Yoga Category
    Wait Until Element is Visible            ${YOGA_CATEGORY_XPATH}
    Click Element                            ${YOGA_CATEGORY_XPATH}
    Title Should Be                          Yoga i pilates – FakeStore
    Location Should Be                       ${YOGA_URL}
    Log    Clicked on Yoga Category

Click On Sailing Category
    Execute JavaScript                       window.scrollBy(0, 200);
    Wait Until Element is Visible            ${SAILING_CATEGORY_XPATH}    timeout=10s
    Click Element                            ${SAILING_CATEGORY_XPATH}
    Title Should Be                          Żeglarstwo – FakeStore
    Location Should Be                       ${SAILING_URL}
    Log    Clicked on Sailing Category

Select Product By Order
    [Arguments]                             ${select_option}
    ${product_locator} =    Collections.Get From Dictionary    ${SELECT_PRODUCT_LOCATORS}    ${select_option}
    Run Keyword If    '${product_locator}' != 'None'    
    ...    Click Element    ${product_locator}
    ...    Log    Selected: ${select_option}
    ...  ELSE
    ...    Log    No locator found for option: ${select_option}
    ...    Scroll Page Down If Element Not Visible    ${product_locator}

Locate and Click Quantity Input Field
    Click Element                           ${QUANTITY_INPUT_XPATH}

Clear and Enter Quantity
    [Arguments]                             ${quantity}
    Input Text                              ${QUANTITY_INPUT_XPATH}    ${EMPTY}
    Input Text                              ${QUANTITY_INPUT_XPATH}    ${quantity}
    Log     Entered quantity:   ${quantity}

Add Windsurfing Products To Cart
    ${windserfing_locations}=    Get Dictionary Keys    ${ADD_WINDSERFING_LOCATORS}
    FOR    ${windserfing_location}    IN    @{windserfing_locations}
        ${windserfing_locator}=    Get From Dictionary    ${ADD_WINDSERFING_LOCATORS}    ${windserfing_location}
        ${button_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${windserfing_locator}    timeout=10s
        IF    '${button_visible}' == 'True'
            Click Element    ${windserfing_locator}
            Log    Added '${windserfing_location}' to cart.
            Exit For Loop
        ELSE
            Log    Element '${windserfing_location}' not visible after 10 seconds.
        END
    END

Add Climbing Products To Cart
    ${climbing_locations}=   Get Dictionary Keys     ${ADD_CLIMBING_LOCATORS}
    FOR    ${climbing_location}    IN     @{climbing_locations}
        ${climbing_locator}=    Get From Dictionary     ${ADD_CLIMBING_LOCATORS}    ${climbing_location}
        ${button_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${climbing_locator}     timeout=10s
        IF    '${button_visible}' == 'True'
            Click Element    ${climbing_locator}
            Log    Added '${climbing_location}' to cart.
            Exit For Loop
        ELSE
            Log    Element '${climbing_location}' not visible after 10 seconds.
        END
    END

Add Yoga Products To Cart
    ${yoga_locations}=   Get Dictionary Keys     ${ADD_YOGA_LOCATORS}
    FOR    ${yoga_location}    IN     @{yoga_locations}
        ${yoga_locator}=    Get From Dictionary     ${ADD_YOGA_LOCATORS}    ${yoga_location}
        ${button_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${yoga_locator}     timeout=10s
        IF    '${button_visible}' == 'True'
            Click Element    ${yoga_locator}
            Log    Added '${yoga_location}' to cart.
            Exit For Loop
        ELSE
            Log    Element '${yoga_location}' not visible after 10 seconds.
        END
    END

Add Sailing Products To Cart
    ${sailing_locations}=   Get Dictionary Keys     ${ADD_SAILING_LOCATORS}
    FOR    ${sailing_location}    IN     @{sailing_locations}
        ${sailing_locator}=    Get From Dictionary     ${ADD_SAILING_LOCATORS}    ${sailing_location}
        ${button_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${sailing_locator}     timeout=10s
        IF    '${button_visible}' == 'True'
            Click Element    ${sailing_locator}
            Log    Added '${sailing_location}' to cart.
            Exit For Loop
        ELSE
            Log    Element '${sailing_location}' not visible after 10 seconds.
        END
    END