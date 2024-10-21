*** Settings ***
Library     SeleniumLibrary
Resource    resources/variables.robot
Resource    resources/keywords.robot
Library     OperatingSystem


*** Test Cases ***
TC6002 เข้าสู่ระบบของผู้ใช้แบบมีมากกว่า 1 บทบาท
    [Tags]    PassLoginMoreOneRole
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click GetStart
    Input Text    ${Email}    ${Email2}
    Input Text    ${Password}    ${Password2}
    Click Element    ${Login}
    Selectrole
    CheckProfile
    CheckUserandRole2
    Capture Screenshot
    Close Browser

    