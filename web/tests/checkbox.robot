*** Settings ***
Resource        base.robot

Test Setup       Nova sessao
Test Teardown    Encerra sessao

*** Variables ***
${check_thor}         id:thor
${check_iron}         css:input[value='iron-man']
${check_panther}      xpath://*[@id='checkboxes']/input[7]
*** Test Cases ***
Marcando opção com ID
    Go To                            ${url}/checkboxes
    Select Checkbox                  ${check_thor}
    Checkbox Should Be Selected      ${check_thor}
    
Marcando opcao com CSS Selector
    Go To                  ${url}/checkboxes
    Select Checkbox        css:input[value='iron-man']
    Checkbox Should Be Selected     css:input[value='iron-man']
    Sleep                   5
    
Marcando opcao com Xpath
    [tags]      ironman
    Go To                  ${url}/checkboxes
    Select Checkbox        xpath://*[@id='checkboxes']/input[7]
    Checkbox Should Be Selected     xpath://*[@id='checkboxes']/input[7]
    Sleep                   5
    


