*** Settings ***
Documentation    Test Case: User Registration Functionality
...              Title: Verify if a new user can successfully complete the registration process.
Resource         ../Resources/Keywords/RegistrationKeywords.robot
Resource         ../Resources/Keywords/CommonKeywords.robot

*** Test Cases ***
User Registration Functionality
    Open Browser To FakeStore Page
    Go to My Account Page
    ${global_email}  ${global_password}=    Generate Random Email and Password
    Input Registration Email Address    ${global_email}
    Input Registration Password         ${global_password}
    Click On Register Button
    Welcome Page Should Be Open
    [Teardown]    Close Browser