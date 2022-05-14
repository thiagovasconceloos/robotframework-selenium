*** Settings ***
Resource         base.robot

Test Setup       Nova sessao
Test Teardown    Encerra sessao

*** Test Cases ***
Deve validar o titulo
    Title Should Be        Training Wheels Protocol
