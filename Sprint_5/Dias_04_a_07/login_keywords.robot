* Settings *
Documentation       Keywords e Variáveis para ações do endpoint de login


* Variables *



* Keywords *
POST endpoint /login
    &{payload}              Create Dictionary   email=${email_do_usuario}    password=${senha_do_usuario}
    ${response}             POST On Session     serverest   /login    data=&{payload}        expected_status=any
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

Validar ter logado
    Should Be Equal         ${response.json()["message"]}   Login realizado com sucesso
    Should Not Be Empty     ${response.json()["authorization"]}

Criar email e senha invalidos
    Set Global Variable     ${email_do_usuario}  emailinvalido@gmail.com
    Set Global Variable     ${senha_do_usuario}  senhainvalida

Fazer login e armazenar token
    POST endpoint /login
    Validar ter logado
    ${token_auth}           Set Variable    ${response.json()["authorization"]}
    Log to Console          Token Salvo:    ${token_auth}
    Set Global Variable     ${token_auth}
