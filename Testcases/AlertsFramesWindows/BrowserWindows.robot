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
    WindowHandling
    Close Browser


*** Keywords ***
WindowHandling
    Maximize Browser Window
    Set Selenium Speed    2
    Execute Javascript      scrollTo(0,350)
    Click Element    xpath://div[@class="home-body"]/div
    Execute Javascript      scrollTo(0,300)
    Click Element    xpath://span[text()="Browser Windows"]//parent::li
    ${main_window}=     Get Window Position
    Execute Javascript      scrollTo(0,450)
    Click Button    id:tabButton
    ${all_windows}=     Get Window Handles
    Sleep    2
    ${new_window}=  Set Variable    ${all_windows}[1]
    Switch Window       ${new_window}
    Capture Page Screenshot
    Wait Until Page Contains    This is a sample page   10s
    Switch Window   ${main_window}



