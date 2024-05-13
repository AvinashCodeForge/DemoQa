*** Settings ***
# This will import the selenium methods
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demoqa.com/

*** Test Cases ***
Handling Alerts
    Open Browser    ${url}      ${browser}
    Sleep    5
    Alert
    Close Browser


*** Keywords ***
Alert
    Maximize Browser Window
    Set Selenium Speed    2
    Execute Javascript      scrollTo(0,350)
    Click Element    xpath://div[@class="home-body"]/div
    Execute Javascript      scrollTo(0,300)
    Click Element    xpath://span[text()="Alerts"]//parent::li
    Execute Javascript      scrollTo(0,450)
    Click Element    //button[@id="alertButton"]
    Handle Alert    accept
    Click Element    //button[@id="timerAlertButton"]
    Handle Alert    accept
    Click Element    //button[@id="confirmButton"]
    Handle Alert    accept
    Click Element    //button[@id="promtButton"]
    Handle Alert    accept

