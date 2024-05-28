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
    [Tags]  checkout, succesfull
    Open Browser To FakeStore Page
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
    Fill In Card Number Details
    Fill In Card Expiry Details
    Fill In Card CVC Details
    Read And Accept Terms
    Click The Buy And Pay Button
    Order Page Should Be Open
    Capture Page Screenshot     Screenshots/checkout_test1.png
    [Teardown]      Close Browser

Order Checkout Process Test 2
    [Documentation]  This test case verifies the order checkout process
    ...              by adding windsurfing and sailing products to the cart,
    ...              applying a coupon code, and filling in payment and card details.
    ...              Card number details have not been entered.
    [Tags]  checkout, failed
    Open Browser To FakeStore Page
    Go To Shop Page
    Click On Windsurfing Category
    Select Product By Order     first_product
    Locate and Click Quantity Input Field
    Clear and Enter Quantity    2
    Add Windsurfing Products To Cart
    Go To Shop Page
    Click On Sailing Category
    Select Product By Order     first_product
    Locate and Click Quantity Input Field
    Clear and Enter Quantity    1
    Add Sailing Products To Cart
    Go To Cart Page
    Locate and Apply Coupon Code    1
    Click Process To Checkout Button
    Fill In Payments Details    0   0   0   0   0   0   0
    Fill In Card Expiry Details
    Fill In Card CVC Details
    Read And Accept Terms
    Click The Buy And Pay Button
    Error Message Should Be Displayed    Numer karty jest niekompletny.
    Capture Page Screenshot     Screenshots/checkout_test2.png
    [Teardown]      Close Browser

Order Checkout Process Test 3
    [Documentation]  This test case verifies the order checkout process
    ...              by adding windsurfing and sailing products to the cart,
    ...              applying a coupon code, and filling in payment and card details.
    ...              Card expiry details have not been entered.
    [Tags]  checkout, failed
    Open Browser To FakeStore Page
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
    Locate and Apply Coupon Code    2
    Click Process To Checkout Button
    Fill In Payments Details    2   2   2   2   2   2   2
    Fill In Card Number Details
    Fill In Card CVC Details
    Read And Accept Terms
    Click The Buy And Pay Button
    Error Message Should Be Displayed    Data ważności karty jest niekompletna.
    Capture Page Screenshot     Screenshots/checkout_test3.png
    [Teardown]      Close Browser

Order Checkout Process Test 4
    [Documentation]  This test case verifies the order checkout process
    ...              by adding windsurfing and sailing products to the cart,
    ...              applying a coupon code, and filling in payment and card details.
    ...              Card cvc details have not been entered.
    [Tags]  checkout, failed
    Open Browser To FakeStore Page
    Go To Shop Page
    Click On Windsurfing Category
    Select Product By Order     second_product
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
    Locate and Apply Coupon Code    3
    Click Process To Checkout Button
    Fill In Payments Details    3   3   3   3   3   3   3
    Fill In Card Number Details
    Fill In Card Expiry Details
    Read And Accept Terms
    Click The Buy And Pay Button
    Error Message Should Be Displayed    Kod bezpieczeństwa karty jest niekompletny.
    Capture Page Screenshot     Screenshots/checkout_test4.png
    [Teardown]      Close Browser