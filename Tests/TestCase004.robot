*** Settings ***
Documentation    Test Case: Order Checkout Process
...              Title: Verify if a user can successfully complete the order checkout process.
Resource        ../Resources/Keywords/CommonKeywords.robot
Resource        ../Resources/Keywords/CartKeywords.robot
Resource        ../Resources/Keywords/SortKeywords.robot
Resource        ../Resources/Keywords/CheckoutKeywords.robot

*** Test Cases ***
Order Checkout Process
    [Tags]  checkout
    Open Browser To FakeStore Page
    Go To Shop Page
    Click On Windsurfing Category
    Locate Sorting Box
    Select Sort Option      date
    Select Product By Order     third_product
    Locate and Click Quantity Input Field
    Clear and Enter Quantity    2
    Add Windsurfing Products To Cart
    Go To Shop Page
    Click On Sailing Category
    Select Product By Order     first_product
    Locate and Click Quantity Input Field
    Clear and Enter Quantity    3
    Add Sailing Products To Cart
    Go To Cart Page
    Locate and Apply Coupon Code    0
    Click Process To Checkout Button
    Fill In Payments Details    1   1   1   1   1   1   1
