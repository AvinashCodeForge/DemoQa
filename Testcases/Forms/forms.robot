*** Settings ***
# This will import the selenium methods
Library     SeleniumLibrary
Library     RequestsLibrary

*** Variables ***
${browser}  chrome
${url}  https://demoqa.com/


*** Test Cases ***
Testing Forms
    Open Browser    ${url}      ${browser}
    Sleep    5
    Forms
    Close Browser

*** Keywords ***
Forms
    Maximize Browser Window
    Sleep    2
    Execute Javascript      scrollTo(0,350)
    Sleep    2
    Click Element    xpath://div[@class="home-body"]/div/div[2]
    Click Element    xpath://span[text()="Practice Form"]
    Sleep    5
    Execute Javascript      scrollTo(0,350)
    Input Text    id:firstName    Avinash
    Input Text    id:userEmail    avinash.sv9@gmail.com
    Sleep    2
    Click Element    //input[@id="gender-radio-1"]//parent::div
    Input Text    id:userNumber    9848022338
    Execute Javascript      scrollTo(0,600)
    Sleep    5
#    Input Text    //div[@class="subjects-auto-complete__value-container subjects-auto-complete__value-container--is-multi css-1hwfws3"]    robotFramework
    Click Element    xpath://input[@id="hobbies-checkbox-1"]//parent::div
    Input Text    id:currentAddress    Tirupathi
    Execute Javascript      scrollTo(0,800)
    Sleep    5
    Click Element    //div[@id="state"]
    Click Element    //div[@id="react-select-3-option-0"]
    Sleep    5
    Click Element    //div[@id="city"]
    Click Element    //div[@id="react-select-4-option-0"]
    Sleep    5
    Click Element     //button[@id="submit"]//parent::div


