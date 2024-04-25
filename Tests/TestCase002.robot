*** Settings ***
Documentation    Test Case: Login Functionality
...              Title: Verify if a user can successfully log in using correct login credentials.
Resource         ../Resources/Keywords/LoginKeywords.robot

*** Test Cases ***
Login Functionality
    Open Browser To FakeStore Page
    Go to My Account Page
    Input Login Email Address    example223@example.com
    Input Login password         example223password123!
    Check Remember Me Box
    Click on Login Button
    Welcome Page Should Be Open
    [Teardown]    Close Browser