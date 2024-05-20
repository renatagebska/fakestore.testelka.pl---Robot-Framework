*** Settings ***
Library     SeleniumLibrary
Resource    ../Variables/CommonVariables.robot

*** Keywords ***

Open Browser To FakeStore Page
    Open Browser                         ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be                      FakeStore – Sklep do nauki testowania

Go To Main Page
    Click Element                        ${MAIN_PAGE_LINK_ID}
    Title Should Be                      FakeStore – Sklep do nauki testowania
    Location Should Be                   ${BASE_URL}
    Log     Redirected to Main Page

Go To My Account Page
    Click Element                        ${MY_ACCOUNT_LINK_ID}
    Title Should Be                      Moje konto – FakeStore
    Location Should Be                   ${MY_ACCOUNT_URL}
    Log     Redirected to My Account Page

Go To Shop Page
    Click Element                        ${SHOP_LINK_ID}
    Title Should Be                      Sklep – FakeStore
    Location Should Be                   ${SHOP_URL}
    Log     Redirected to Shop Page

Go To Order Page
    Click Element                        ${ORDER_LINK_ID}
    Title Should Be                      Zamówienie – FakeStore
    Location Should Be                   ${ORDER_URL}
    Log     Redirected to Order Page

Go To Cart Page
    Click Element                        ${CART_LINK_ID} 
    Title Should Be                      Koszyk – FakeStore
    Location Should Be                   ${CART_URL}
    Log     Redirected to Cart Page

Go To Wishlist Page
    Click Element                        ${WISHLIST_LINK_ID}
    Title Should Be                      Lista życzeń – FakeStore
    Location Should Be                   ${WISHLIST_URL}
    Log     Redirected to Wishlist Page

Scroll Page Down If Element Not Visible 
    [Arguments]                          ${locator}
    ${element_visible} =    Run Keyword And Return Status    Element Should Be Visible    ${locator} 
    Run Keyword If    not ${element_visible}
    ...    Execute JavaScript    window.scrollBy(0, 400)

Error Message Should Be Displayed
    [Arguments]                           ${expected_message}
    Wait Until Element Is Visible         ${error_element}
    ${actual_message}   Get Text          ${error_element}
    Should Be Equal As Strings  ${actual_message}   ${expected_message}

Click Element If Visible
    [Arguments]    ${locator}
    ${element_present} =    Run Keyword And Return Status    Wait Until Element Is Visible    ${locator}    timeout=5s
    Run Keyword If    '${element_present}' == 'True'    Click Element    ${locator}
    ...    ELSE
    ...    Log    Element not visible or found after waiting

Refresh Page And Retry
    Execute JavaScript    window.location.reload(true)

Check Redirected Page
    ${current_url}=     Get Location
    Should Match Regexp     ${current_url}    ${ORDER_RECEIVED_URL}

Wait Until Frame Is Visible
    [Arguments]     ${iframe_locator}
    Wait Until Element Is Visible    ${iframe_locator}    timeout=10s