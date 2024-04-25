*** Settings ***
Resource    ../Resources/Keywords/CommonKeywords.robot
Resource    ../Resources/Keywords/CartKeywords.robot
Resource    ../Resources/Keywords/SortKeywords.robot
Resource    ../Resources/Variables/ProductsVariables.robot

*** Test Cases ***
Test Sprawdzajacy
    Open Browser To FakeStore Page
    Go To Shop Page
    Click On Windsurfing Category
    Locate Sorting Box
    Select Sort Option         popularity
    Select Product By Order    fourth_product 
    Locate and Click Quantity Input Field    
    Clear and Enter Quantity    2
    Add Windserfing Product To Cart    ${ADD_WINDSERFING_LOCATORS}
    [Teardown]    Close Browser   