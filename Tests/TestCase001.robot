*** Settings ***
Documentation     Test Case: User Registration Functionality
...               Title: Verify if a new user can successfully complete the registration process.
Resource          ../Resources/Keywords/RegistrationKeywords.robot
Resource          ../Resources/Keywords/CommonKeywords.robot

*** Test Cases ***
User Registration Functionality Test 1
    [Documentation]  This test case verifies successful user registration with randomly generated email and password.
    [Tags]  registration, successfull
    Open Browser To FakeStore Page
    Go to My Account Page
    ${global_email}=      Generate Random Email
    Input Registration Email Address    ${global_email}
    ${global_password}=   Generate Random Password
    Input Registration Password         ${global_password}
    Click On Register Button
    Welcome Page Should Be Open
    Capture Page Screenshot     Screenshots/registration_test1.png
    [Teardown]  Close Browser

User Registration Functionality Test 2
    [Documentation]  This test case verifies error message when attempting to register without providing an email address.
    [Tags]  registration, failed
    Open Browser To FakeStore Page
    Go to My Account Page
    ${global_password}=    Generate Random Password
    Input Registration Password         ${global_password}
    Click On Register Button
    Error Message Should Be Displayed   Błąd: Podaj poprawny adres e-mail.
    Capture Page Screenshot     Screenshots/registration_test2.png
    [Teardown]  Close Browser

User Registration Functionality Test 3
    [Documentation]  This test case verifies error message when attempting to register without providing a password.
    [Tags]  registration, failed
    Open Browser To FakeStore Page
    Go to My Account Page
    ${global_email} =    Generate Random Email
    Input Registration Email Address    ${global_email}
    Click On Register Button
    Error Message Should Be Displayed     Błąd: Proszę wpisać hasło.
    Capture Page Screenshot     Screenshots/registration_test3.png
    [Teardown]  Close Browser