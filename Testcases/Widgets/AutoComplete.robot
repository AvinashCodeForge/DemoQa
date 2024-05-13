*** Settings ***
# This will import the selenium methods
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demoqa.com/

*** Test Cases ***
Handling Auto-Complete DropDowns
    Open Browser    ${url}      ${browser}
    Sleep    5
    Auto Complete
    Close Browser


*** Keywords ***
Auto Complete
    Maximize Browser Window
    Set Selenium Speed    2
    Execute Javascript      scrollTo(0,350)
    Click Element    xpath://div[@class="home-body"]/div/div[position()=4]
    Execute Javascript      scrollTo(0,300)
    Click Element    xpath://span[text()="Auto Complete"]//parent::li
    Execute Javascript      scrollTo(0,450)
    ${click_element}=    Click Element    xpath://div[@class="auto-complete__value-container auto-complete__value-container--is-multi css-1hwfws3"]
    ${element}=     Press Keys    ${click_element}    Red
    ${select}=      Press Keys      ${element}      ARROW_DOWN
    Press Keys      ${select}   ENTERS

