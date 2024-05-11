*** Settings ***
# This will import the selenium methods
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demoqa.com/

*** Test Cases ***
Testing Mouse Actions
    Open Browser    ${url}      ${browser}
    Sleep    5
    Mouse Actions Locators
    Close Browser

*** Keywords ***
Mouse Actions Locators
    Maximize Browser Window
    Set Selenium Speed    2
    Execute Javascript      scrollTo(0,350)
    Click Element    xpath://div[@class="home-body"]/div
    Click Element    xpath://span[@class="group-header"]//div/div[text()="Elements"]
    Execute Javascript      scrollTo(0,300)
    Click Element    xpath://ul[@class="menu-list"]/li/span[text()="Buttons"]
    Execute Javascript      scrollTo(0,350)
    Open Context Menu    //button[@id='rightClickBtn']
    Double Click Element    //button[@id='doubleClickBtn']

