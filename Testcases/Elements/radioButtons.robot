*** Settings ***
# This will import the selenium methods
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demoqa.com/

*** Test Cases ***
ElementsCheckBox
    Open Browser    ${url}      ${browser}
    Sleep    5
    ElementRadioButtonsLocators
    Close Browser

*** Keywords ***
ElementRadioButtonsLocators
    Maximize Browser Window
    Set Selenium Speed    2
    Execute Javascript      scrollTo(0,350)
    Click Element    xpath://div[@class="home-body"]/div
    Click Element    xpath://span[@class="group-header"]//div/div[text()="Elements"]
    Click Element    xpath://ul[@class="menu-list"]/li/span[text()="Radio Button"]
    Execute Javascript      scrollTo(0,300)
    Click Element       xpath://input[@id="yesRadio"]//parent::div