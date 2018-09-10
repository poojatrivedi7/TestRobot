*** Settings ***

Resource    ${ROOT}/Lib/BookCancelMeetingPage/BookCancelKeywords.robot
Suite Teardown    Close All Browsers

*** Test Cases ***
TC_BookMeeting
    [Tags]    DEBUG
    Login Xornet
    Navigate To Meeting Room
    Open Meeting Room
    Meeting Room Details
    Book Meeting Room
    Cancel Meeting
