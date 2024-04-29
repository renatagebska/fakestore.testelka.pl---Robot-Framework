*** Settings ***
Documentation    Test Case: Product Sorting Functionality
...              Title: Verify if a user can successfully sort Climbing products.
Resource        ../Resources/Keywords/CommonKeywords.robot
Resource        ../Resources/Keywords/CartKeywords.robot
Resource        ../Resources/Keywords/SortKeywords.robot
Suite Setup       Open Browser To FakeStore Page
Suite Teardown    Close Browser

*** Test Cases ***
Test Select All Sort Options Test 1
    [Documentation]    Test veryfying the correctness of sorting options functionality
    ...                as well as redirection to appropriate URL addresses.
    [Tags]  sort
    Go To Shop Page
    Click On Climbing Category
    Locate Sorting Box
    Select Sort Options

Test Select Sort Option By Price Ascending Test 2
    [Documentation]    Test verifying the functionality of sorting options by price ascending.
    ...                This test case validates that the prices are sorted in ascending order.
    Go To Shop Page
    Click On Climbing Category
    Locate Sorting Box
    Select Sort Option  price_asc
    Validate Prices Are Sorted  price_asc

Test Slect Sort Option By Price Descending Test 3
    [Documentation]    Test verifying the functionality of sorting options by price descending.
    ...                This test case validates that the prices are sorted in descending order.
    Go To Shop Page
    Click On Climbing Category
    Locate Sorting Box
    Select Sort Option  price_desc
    Validate Prices Are Sorted  price_desc