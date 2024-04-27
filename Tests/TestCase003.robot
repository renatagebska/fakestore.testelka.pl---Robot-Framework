*** Settings ***
Documentation    Test Case: Adding To Cart Functionality
...              Title: Verify if a user can successfully add products to the cart.
Resource        ../Resources/Keywords/CommonKeywords.robot
Resource        ../Resources/Keywords/CartKeywords.robot
Resource        ../Resources/Keywords/SortKeywords.robot

*** Test Cases ***
Adding To Cart Functionality Test 1
    [Tags]  cart
    Open Browser To FakeStore Page
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
    [Teardown]    Close Browser

Adding To Cart Functionality Test 2
    [Tags]  cart
    Open Browser To FakeStore Page
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
    [Teardown]    Close Browser

Adding To Cart Functionality Test 3
    [Tags]  cart
    Open Browser To FakeStore Page
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
    [Teardown]    Close Browser