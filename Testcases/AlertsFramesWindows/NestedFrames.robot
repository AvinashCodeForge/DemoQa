*** Settings ***
# This will import the selenium methods
Library     SeleniumLibrary
Library    XML

*** Variables ***
${browser}  chrome
${url}  https://demoqa.com/

*** Test Cases ***
Handling Alerts
    Open Browser    ${url}      ${browser}
    Sleep    5
    NestedFrames
    Close Browser


*** Keywords ***
NestedFrames
    Maximize Browser Window
    Set Selenium Speed    2
    Execute Javascript      scrollTo(0,350)
    Click Element    xpath://div[@class="home-body"]/div
    Execute Javascript      scrollTo(0,300)
    Click Element    xpath://span[text()="Nested Frames"]//parent::li
    Execute Javascript      scrollTo(0,450)
    Sleep    2
    Select Frame    id:frame1
    Select Frame    xpath=//iframe[@srcdoc='<p>Child Iframe</p>']




