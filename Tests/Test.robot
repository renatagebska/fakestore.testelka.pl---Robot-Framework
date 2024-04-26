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
    Select Sort Option  date
    Select Product By Order    first_product
    Locate and Click Quantity Input Field    
    Clear and Enter Quantity    2
    Add Windsurfing Product To Cart
