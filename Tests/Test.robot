*** Settings ***

Resource    ${Root}/Lib/BookCancelMeetingPage/BookCancelKeywords.robot

*** Test Cases ***
TC_1
    [Tags]    DEBUG
    Login Xornet
    Navigate To Meeting Room
    Open Meeting Room
    Meeting Room Details
    Book Meeting Room
    Cancel Meeting
