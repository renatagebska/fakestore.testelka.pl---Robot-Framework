*** Settings ***
Documentation    Test Case: Login Functionality
...              Title: Verify if a user can successfully log in using correct login credentials.
Resource         ../Resources/Keywords/LoginKeywords.robot
Resource         ../Resources/Keywords/CommonKeywords.robot

*** Test Cases ***
Login Functionality Test 1
    [Tags]  login
    Open Browser To FakeStore Page
    Go To My Account Page
    Input Login Email Address    1
    Input Login password         1
    Check Remember Me Box
    Click On Login Button
    Welcome Page Should Be Open
    [Teardown]    Close Browser

Login Functionality Test 2
    [Tags]  login
    Open Browser To FakeStore Page
    Go To My Account Page
    Input Login Email Address    2
    Input Login password         2
    Check Remember Me Box
    Click On Login Button
    Welcome Page Should Be Open
    [Teardown]    Close Browser

Login Functionality Test 3
    [Tags]  login
    Open Browser To FakeStore Page
    Go To My Account Page
    Input Login Email Address    0
    Input Login password         0
    Check Remember Me Box
    Click On Login Button
    Welcome Page Should Be Open
    [Teardown]    Close Browser