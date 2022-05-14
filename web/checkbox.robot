*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}                https://training-wheels-protocol.herokuapp.com/
${check_thor}         id:thor
${check_iron}         css:input[value='iron-man']
${check_panther}      xpath://*[@id='checkboxes']/input[7]
*** Test Cases ***
Marcando opção com ID
    Open Browser                     ${url}     chrome
    Go To                            ${url}/checkboxes
    Select Checkbox                  ${check_thor}
    Checkbox Should Be Selected      ${check_thor}
    Close Browser
Marcando opcao com CSS Selector
    Open Browser           ${url}     chrome
    Go To                  ${url}/checkboxes
    Select Checkbox        css:input[value='iron-man']
    Checkbox Should Be Selected     css:input[value='iron-man']
    Sleep                   5
    Close Browser
Marcando opcao com Xpath
    [tags]      ironman
    Open Browser           ${url}     chrome
    Go To                  ${url}/checkboxes
    Select Checkbox        xpath://*[@id='checkboxes']/input[7]
    Checkbox Should Be Selected     xpath://*[@id='checkboxes']/input[7]
    Sleep                   5
    Close Browser