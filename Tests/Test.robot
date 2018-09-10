*** Settings ***

Resource    ${Root}/Lib/BookCancelMeetingPage/BookCancelKeywords.robot

*** Test Cases ***
TC_BookMeeting
    [Tags]    DEBUG
    Login Xornet
    Navigate To Meeting Room
    Open Meeting Room
    Meeting Room Details
    Book Meeting Room
    Cancel Meeting
