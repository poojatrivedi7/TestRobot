*** Settings ***
Documentation    The file is for Booking & cancel the meeting room
...    It utilizes keywords supported by Selenium2Library


Resource    ${Root}/Config/config.robot
Resource    ${Root}/Lib/BookCancelMeetingPage/BookCancelObject.robot
Resource    ${Root}/Data/BookMeetingData.robot
Suite Teardown     Close All Browsers
Library    Selenium2Library
Library  OperatingSystem

*** Keywords ***

Login Xornet
    [Documentation]    Login to xornet site
    Open Browser    ${URL}
    Selenium2Library.Maximize Browser Window
    Selenium2Library.Input Text    ${username}    ${user}
    Selenium2Library.Input Password    ${password}    ${pass_word}
    Selenium2Library.Click Element    ${sign_in}
    Selenium2Library.Wait Until Element Is Visible    ${log_out}    ${Delay}

Navigate To Meeting Room
    [Documentation]    Navigate to book meeting room page
    Selenium2Library.Wait Until Page Contains Element    ${kudos_badge}
    Selenium2Library.Mouse Over    ${workplace_support}
    Selenium2Library.Click Link    ${book_meeting_option}
    Selenium2Library.Wait Until Element Is Visible    ${book_room}    ${Delay}

Open Meeting Room
    [Documentation]    Select Meeting facilities
    Selenium2Library.Click Element    ${seats}
    Selenium2Library.Select From List By Index    ${seats}    ${value}
    Selenium2Library.Select Checkbox    ${lcd_facilities}
    Selenium2Library.Select Checkbox    ${voip_facilities}
    Selenium2Library.Click Element    ${location}
    Selenium2Library.Select From List By Index    ${location}    ${value3}
    Selenium2Library.Click Element    ${meeting_room}
    Selenium2Library.Select From List By Index    ${meeting_room}    ${value2}
    Selenium2Library.Wait Until Element Is Enabled    ${book_button}
    Selenium2Library.Click Button    ${book_button}

Meeting Room Details
    [Documentation]    Need to enter Meeting details and verify the skip invite page
    Selenium2Library.Input Text    ${meeting_subject}    ${meeting_subject_val}
    Selenium2Library.Double Click Element    ${start_time}
    Selenium2Library.Click Element    ${start_hour_ddl}
    Selenium2Library.Select From List By Value    ${start_hour_value}    ${start_hour_val}
    Selenium2Library.Click Button    ${done_button}
    Selenium2Library.Double Click Element    ${end_time}
    Selenium2Library.Click Element    ${end_hour_ddl}
    Selenium2Library.Select From List By Value    ${end_hour_value}    ${end_hour_val}
    Selenium2Library.Click Button    ${done_button}
    Selenium2Library.Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Selenium2Library.Click Button    ${confirm_booking}
    Selenium2Library.Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Selenium2Library.Element Should Be Visible     ${skip_invite}

Book Meeting Room
    [Documentation]    Confirm meeting and verify the booked meeting
    Selenium2Library.Click Button    ${confirm_booking}
    Selenium2Library.Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Selenium2Library.Click Button    ${skip_invite}
    Selenium2Library.Wait Until Element Is Visible    ${facilities_field}    ${Delay}
    Selenium2Library.Click Element    ${my_bookings_tab}
    Selenium2Library.Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Selenium2Library.Wait Until Element Is Visible    ${booked_meeting}    ${Delay}
    ${actual_text} =    Get Text    ${booked_time}
    Selenium2Library.Should Be True    '${meeting_time}' == '${actual_text}'

Cancel Meeting
    [Documentation]    Cancel Meeting and verify meeting is cancelled
    Selenium2Library.Click Element    ${booked_meeting_details}
    Selenium2Library.Wait Until Element Is Enabled    ${cancel_booking}
    Selenium2Library.Click Element    ${cancel_booking}
    Selenium2Library.Wait Until Element Is Visible    ${confirm_cancellation}
    Selenium2Library.Click Element    ${confirm_cancellation}
    Selenium2Library.Page Should Not Contain Textfield    ${booked_meeting_details}    ${meeting_subject_val}
