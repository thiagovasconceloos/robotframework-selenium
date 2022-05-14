*** Settings ***
Resource         base.robot

Test Setup       Nova sessao
Test Teardown    Encerra sessao

*** Test Cases ***
Selecionar por texto e valir por valor
  Go To                         ${url}/dropdown
  Select From List By Label     class:avenger-list            Scott Lang
  ${selected} =                 Get Selected List Value       class:avenger-list
  Should Be Equal               ${selected}                   7
Selecionar por valor e valida por texto
  Go To                         ${url}/dropdown
  Select From List By Value     id:dropdown                   6
  ${selected} =                 Get Selected List Label       id:dropdown
  Should Be Equal               ${selected}                   Loki  