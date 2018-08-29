*** Settings ***
Library    Selenium2Library

*** Variables ***
${URL}=    https://qa6app.3gqa.satmetrix.com/app/core/main/login/login.htm?_rdr=as

*** Keywords ***

Login Satmetrix
    Open Browser    ${URL}    chrome
    Input Text    id=userName    madhu.mohan@satmetrix.com
    Input Password    id=password    madhu.mohan
    Input Text    id=domainName    orangec
    Click Button  id=loginButton


*** Test Cases ***
TC_Login
    [Tags]    DEBUG
    Login Satmetrix

