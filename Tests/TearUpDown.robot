#*** Settings ***
#Library    Selenium2Library
#Library    OperatingSystem
#Library    DateTime
#Library    String
#
#Library    ${ROOT}/MATH.py
#
#
#*** Variables ***
#${Res_Add}
#
#*** Keywords ***
#Keyword_Fun
#    [Arguments]    ${num1}=1     ${num2}=5
#
#    set variable    ${num1}
#    set variable    ${num2}
#     ${Res} =    Evaluate     ${num1} + ${num2}
#    [Return]    ${Res}
#
#Keyword_If
#     [Arguments]    ${num}
#     Run Keyword If     ${num} == 0    Log    Variable is 0
#     ...    ELSE IF    ${num} == 1    Log    Variable is 1
#     ...    ELSE     value is not binary
#
#CheckInt
#    [Arguments]    ${num1}     ${num2}
#    ${num1}    Evaluate    type(${num1}).__name__
#    ${num2}    Evaluate    type(${num2}).__name__
#    Should Be Equal As Strings    ${num1}    int
#    Should Be Equal As Strings    ${num2}    int
#
#*** Test Cases ***
##Tc_Fun
#    [Tags]    DEBUG
##    ${Res_Add}    Keyword_Fun
##    Log    "Result for is ${Res_Add}"
#
##Tc_Keyword
##    [Tags]    DEBUG
##    Log    Keyword_If
##
##TC_Math
##     Given CheckInt   2    3
##     Then Keyword_Fun    2    3
#
#
##TC_Round
##     ${round_num}    get round    12.34    1
#
#TC_Root
#     Dirctory Should Exist     ${ROOT}
#     Create File    ${ROOT}/File.txt   This is Interesting!
#     File Should Exist    ${ROOT}/File.txt
#     File Should Not Be Empty    ${ROOT}/File.txt
#     Append To File    ${ROOT}/File.txt    ${\N} XYZ!
