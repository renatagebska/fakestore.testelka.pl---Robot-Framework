*** Settings ***
Documentation    Test Case: Order Checkout Process
...              Title: Verify if a user can successfully complete the order checkout process.
Resource        ../Resources/Keywords/CommonKeywords.robot
Resource        ../Resources/Keywords/CartKeywords.robot
Resource        ../Resources/Keywords/CheckoutKeywords.robot
Resource        ../Resources/Keywords/LoginKeywords.robot

*** Test Cases ***
Order Checkout Process Test 1
    [Documentation]  This test case verifies the order checkout process
    ...              by adding windsurfing and sailing products to the cart,
    ...              applying a coupon code, and filling in payment and card details.
    ...              The user must be logged in.
    [Tags]  checkout
    Open Browser To FakeStore Page
    Go To My Account Page
    Input Login Email Address    0
    Input Login Password         0
    Click On Login Button
    Go To Shop Page
    Click On Windsurfing Category
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
    Read And Accept Terms
    Click The Buy And Pay Button

    Capture Page Screenshot     Screenshots/checkout_test1.png
    [Teardown]      Close Browser
