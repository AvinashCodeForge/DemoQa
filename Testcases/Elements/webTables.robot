*** Settings ***
# This will import the selenium methods
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demoqa.com/

*** Test Cases ***
Table Validations
    Open Browser    ${url}      ${browser}
    Sleep    5
    Web Table Count Rows And Columns Locators
    Close Browser

*** Keywords ***
Web Table Count Rows And Columns Locators
    Maximize Browser Window
    Sleep    2
    Execute Javascript      scrollTo(0,350)
    Sleep    2
    Click Element    xpath://div[@class="home-body"]/div/div[1]
    Execute Javascript      scrollTo(0,100)
    Click Element    xpath://ul[@class="menu-list"]/li/span[text()="Web Tables"]
    ${rows}=    Get Element Count    //div[@class="rt-table"]/div[position()=2]/div
    ${columns}=     Get Element Count    //div[@class="rt-table"]/div[position()=2]/div[1]/div/div
    Log To Console    ${rows}
    Log To Console    ${columns}
    
