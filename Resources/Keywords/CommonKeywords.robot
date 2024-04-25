*** Settings ***
Library     SeleniumLibrary
Resource    ../Variables/CommonVariables.robot

** Keywords ***

Open Browser To FakeStore Page
    Open Browser                         ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be                      FakeStore – Sklep do nauki testowania

Go To Main Page
    Click Element                        ${MAIN_PAGE_LINK_ID}
    Title Should Be                      FakeStore – Sklep do nauki testowania

Go To My Account Page
    Click Element                        ${MY_ACCOUNT_LINK_ID}
    Title Should Be                      Moje konto – FakeStore

Go To Shop Page
    Click Element                        ${SHOP_LINK_ID}
    Title Should Be                      Sklep – FakeStore

Go To Order Page
    Click Element                        ${ORDER_LINK_ID}
    Title Should Be                      Zamówienie – FakeStore

Go To Cart Page
    Click Element                        ${CART_LINK_ID} 
    Title Should Be                      Koszyk – FakeStore 

Go To Wishlist Page
    Click Element                        ${WISHLIST_LINK_ID}
    Title Should Be                      Lista życzeń – FakeStore 

Scroll Page Down If Element Not Visible 
    [Arguments]                          ${locator}
    ${element_visible} =    Run Keyword And Return Status    Element Should Be Visible    ${locator} 
    Run Keyword If    not${element_visible}
    ...    Execute JavaScript    window.scrollBy(0, 300)   