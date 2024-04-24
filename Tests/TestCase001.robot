*** Settings ***
Documentation    Test Case: User Registration Functionality
...              Title: Verify if a new user can successfully complete the registration process.
Resource         ../Resources/Keywords/RegistrationKeywords.robot

*** Test Cases ***
User Registration Functionality
    Open Browser To FakeStore Page
    Go to My Account Page
    Input Registration Email Address    example22@example.com
    Input Registration Password         example22password123!
    Click on Register button
    Welcome Page Should Be Open
    [Teardown]    Close Browser