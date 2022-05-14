*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}                https://training-wheels-protocol.herokuapp.com/



*** Keywords ***
Nova sessao
    Open Browser           ${url}     chrome
Encerra sessao  
    Capture Page ScreenShot
    Close Browser
