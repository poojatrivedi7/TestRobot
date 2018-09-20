*** Settings ***
Documentation    """Suite to show case execution/tear up/ tear down"""

Suite Setup     Log  "Suite Tear Up"
Suite Teardown    Log   "Suite Tear Down"

Test Setup    Log  "Common Test Tear Up"
Test Teardown    Log  "Common Test Tear Down1"

*** Test Cases ***
TC_1
    [Documentation]     Sample TC 1
    [Tags]    smoke
    [Setup]    Log    "Test Case TC_1 Tear Up"
    Sleep    1s
    [Teardown]  Log    "Test Case TC_1 Tear Down"

TC_2
    [Documentation]     Sample TC 2
    [Tags]    regression
    [Setup]    Log    "Test Case TC_2 Tear Up"
    Sleep    1s
    [Teardown]  Log    "Test Case TC_2 Tear Down"
