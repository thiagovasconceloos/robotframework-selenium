*** Settings ***
Library           app.py


*** Test Cases ***

Deve retorno mensagens de boas vindas
    ${result}=     Welcome     Thiago
    Should Be Equal      ${result}      Olá Thiago, Bem vindo ao curso de Robot Framework
