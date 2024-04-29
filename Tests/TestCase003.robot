*** Settings ***
Documentation    Test Case: Adding To Cart Functionality
...              Title: Verify if a user can successfully add products to the cart.
Resource        ../Resources/Keywords/CommonKeywords.robot
Resource        ../Resources/Keywords/CartKeywords.robot
Resource        ../Resources/Keywords/SortKeywords.robot
Suite Setup       Open Browser To FakeStore Page
Suite Teardown    Close Browser

*** Test Cases ***
Adding To Cart Functionality Test 1
    [Documentation]  This test case verifies the functionality of adding climbing and yoga products to the cart.
    [Tags]  cart
    Go To Shop Page
    Click On Climbing Category
    Locate Sorting Box
    Select Sort Option      popularity
    Select Product By Order     first_product
    Locate and Click Quantity Input Field
    Clear and Enter Quantity    1
    Add Climbing Products To Cart
    Go To Shop Page
    Click On Yoga Category
    Locate Sorting Box
    Select Sort Option      price_asc
    Select Product By Order     second_product
    Locate and Click Quantity Input Field
    Clear and Enter Quantity    2
    Add Yoga Products To Cart
    Go To Cart Page

Adding To Cart Functionality Test 2
    [Documentation]  This test case verifies the functionality of adding windsurfing and sailing products to the cart.
    [Tags]  cart
    Go To Shop Page
    Click On Windsurfing Category
    Locate Sorting Box
    Select Sort Option      date
    Select Product By Order     third_product
    Locate and Click Quantity Input Field
    Clear and Enter Quantity    3
    Add Windsurfing Products To Cart
    Go To Shop Page
    Click On Sailing Category
    Locate Sorting Box
    Select Sort Option      price_desc
    Select Product By Order     first_product
    Locate and Click Quantity Input Field
    Clear and Enter Quantity    4
    Add Sailing Products To Cart
    Go To Cart Page

Adding To Cart Functionality Test 3
    [Documentation]  This test case verifies the functionality of adding yoga and climbing products to the cart.
    [Tags]  cart
    Go To Shop Page
    Click On Yoga Category
    Locate Sorting Box
    Select Sort Option      rating
    Select Product By Order     fifth_product
    Locate and Click Quantity Input Field
    Clear and Enter Quantity    2
    Add Yoga Products To Cart
    Go To Shop Page
    Click On Climbing Category
    Locate Sorting Box
    Select Sort Option      price_asc
    Select Product By Order     third_product
    Locate and Click Quantity Input Field
    Clear and Enter Quantity    5
    Add Climbing Products To Cart
    Go To Cart Page