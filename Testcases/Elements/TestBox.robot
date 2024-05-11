*** Settings ***
# This will import the selenium methods
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demoqa.com/

*** Test Cases ***
ElementsTextCase
    Open Browser    ${url}      ${browser}
    Sleep    5
    ElementLocators
    Close Browser
    
*** Keywords ***
ElementLocators
    Maximize Browser Window
    Sleep    5
    Execute Javascript      scrollTo(0,350)
    Sleep    5
    Click Element    xpath://div[@class="home-body"]/div
    Execute Javascript      scrollTo(0,0)
    Click Element    xpath://span[@class="group-header"]//div/div[text()="Elements"]
    Sleep    5
    Click Element    xpath://ul[@class="menu-list"]/li/span[text()="Text Box"]
    Sleep    5
    Input Text    id:userName    Avinash
    Input Text    id:userEmail   avinash.sv9@gmail.com
    Input Text    id:currentAddress    Banglore
    Input Text    id:permanentAddress    Nellore
    Execute Javascript      scrollTo(0,600)
    Sleep    5
    Click Element    id:submit