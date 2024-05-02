*** Settings ***
Documentation    Test Case: Login Functionality
...              Title: Verify if a user can successfully log in using correct login credentials.
Resource         ../Resources/Keywords/LoginKeywords.robot
Resource         ../Resources/Keywords/CommonKeywords.robot

*** Test Cases ***
Login Functionality Test 1
    [Documentation]  This test case verifies successful login with valid email and password.
    [Tags]  login, successfull
    Open Browser To FakeStore Page
    Go To My Account Page
    Input Login Email Address    1
    Input Login password         1
    Check Remember Me Box
    Click On Login Button
    Welcome Page Should Be Open
    Capture Page Screenshot     Screenshots/login_test1.png
    [Teardown]   Close Browser

Login Functionality Test 2
    [Documentation]  This test case verifies successful login with different valid email and password.
    [Tags]  login, successfull
    Open Browser To FakeStore Page
    Go To My Account Page
    Input Login Email Address    2
    Input Login password         2
    Check Remember Me Box
    Click On Login Button
    Welcome Page Should Be Open
    Capture Page Screenshot     Screenshots/login_test2.png
    [Teardown]   Close Browser

Login Functionality Test 3
    [Documentation]  This test case verifies successful login with another set of valid credentials.
    [Tags]  login, successfull
    Open Browser To FakeStore Page
    Go To My Account Page
    Input Login Email Address    0
    Input Login password         0
    Check Remember Me Box
    Click On Login Button
    Welcome Page Should Be Open
    Capture Page Screenshot     Screenshots/login_test3.png
    [Teardown]   Close Browser

Login Functionality Test 4
    [Documentation]  This test case verifies error message when attempting to login without providing an email address.
    [Tags]  login, failed
    Open Browser To FakeStore Page
    Go To My Account Page
    Input Login Password         2
    Check Remember Me Box
    Click On Login Button
    Error Message Should Be Displayed   Błąd: Nazwa użytkownika jest wymagana.
    Capture Page Screenshot     Screenshots/login_test4.png
    [Teardown]   Close Browser

Login Functionality Test 5
    [Documentation]  This test case verifies error message when attempting to login without providing a password.
    [Tags]  login, failed
    Open Browser To FakeStore Page
    Go To My Account Page
    Input Login Email Address    0
    Check Remember Me Box
    Click On Login Button
    Error Message Should Be Displayed   Błąd: pole hasła jest puste.
    Capture Page Screenshot     Screenshots/login_test5.png
    [Teardown]   Close Browser

Login Functionality Test 6
    [Documentation]  This test case verifies error message when attempting to login with unregistered user's credentials.
    [Tags]  login, failed
    Open Browser To FakeStore Page
    Go To My Account Page
    Input Login Email Address   3
    Input Login Password    3
    Check Remember Me Box
    Click On Login Button
    Error Message Should Be Displayed   Nieznany adres e-mail. Proszę sprawdzić ponownie lub wypróbować swoją nazwę użytkownika.
    Capture Page Screenshot     Screenshots/login_test6.png
    [Teardown]   Close Browser