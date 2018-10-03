*** Settings ***
Documentation    Login Test Cases

Library  SeleniumLibrary

*** Keywords ***
Login Test

    Log   "Enter Domain "

    Log   "Enter User Name "

    Log   "Enter Password"

*** Test Cases ***
TC_2006
    [Documentation]     Test Case for Login
    [Tags]    smoke

    Log    Login 1

TC_2007
    [Documentation]     Test Case for Login
    [Tags]    smoke

    Log    Login 2


TC_2008
    [Documentation]     Test Case for Login
    [Tags]    smoke

    4/5
