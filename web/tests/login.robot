*** Settings ***
Resource        base.robot

Test Setup       Nova sessao
Test Teardown    Encerra sessao



*** Test Cases ***
Login com sucesso
    Go To               ${url}/login
    Input Text          css:input[name=username]        stark
    Input Text          css:input[name=password]        jarvis!
    Click Element       class:btn-login
    Page Should Contain  Olá, Tony Stark. Você acessou a área logada!
Senha invalida
    [tags]                  senhainvalida
    Go To                   ${url}/login
    Input Text              css:input[name=username]        stark
    Input Text              css:input[name=password]        abc123!
    Click Element           class:btn-login
    ${message} =            Get WebElement                  id:flash
    Should Contain          ${message.text}                 Senha é invalida!     

Usuario invalido
    [tags]                  usuarioinvalido
    Go To                   ${url}/login
    Input Text              css:input[name=username]        thiago
    Input Text              css:input[name=password]        abc123!
    Click Element           class:btn-login
    ${message} =            Get WebElement                  id:flash
    Should Contain          ${message.text}                  O usuário informado não está cadastrado!

