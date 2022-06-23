# MasterClass

* Settings *
Documentation       Keywords e Variáveis para ações do endpoint de usuarios


* Variables *
${nome_do_usuario}      herbert richard
${senha_do_usuario}     teste123
${email_do_usuario}     testestesastesstsesressatt@gmail.com
${id_invalido}          IdInvalido123


* Keywords *
GET endpoint /usuarios
    ${response}             GET On Session      serverest   /usuarios
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

GET endpoint /usuarios especifico ${id}
    ${response}             GET On Session     serverest   /usuarios/${id}     expected_status=any
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

PUT endpoint /usuarios/${id}
    &{payload}              Create Dictionary   nome=jerso priest   email=${email_do_usuario}  password=123    administrador=true
    ${response}             PUT On Session      serverest   /usuarios/${id}   data=&{payload}     expected_status=any
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

POST endpoint /usuarios
    &{payload}              Create Dictionary   nome=${nome_do_usuario}   email=${email_do_usuario}  password=${senha_do_usuario}    administrador=true
    ${response}             POST On Session      serverest   /usuarios  data=&{payload}     expected_status=any
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

DELETE endpoint /usuarios/${id}
    ${response}             DELETE On Session      serverest   /usuarios/${id}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

Validar ter criado usuario
    Should Be Equal         ${response.json()["message"]}       Cadastro realizado com sucesso
    Should Not Be Empty     ${response.json()["_id"]}

Cadastrar um usuario e armazenar dados
    POST endpoint /usuarios
    Validar ter criado usuario
    ${id_usuario}           Set Variable    ${response.json()["_id"]}
    GET endpoint /usuarios especifico ${id_usuario}
    ${email_do_usuario}     Set Variable     ${response.json()["email"]}
    ${senha_do_usuario}     Set Variable     ${response.json()["password"]}
    Set Global Variable     ${id_usuario}
    Set Global Variable     ${senha_do_usuario}




# MasterClass
# POST endpoint /usuarios
#     ${response}             POST On Session      serverest   /usuarios    json=&{payload}     expected_status=any
#     Log to Console          Response: ${response.content}
#     Set Global Variable     ${response}

# Criar usuario estatico valido
#     ${json}                 Importar JSON estatico  json_usuario_ex.json
#     ${payload}              Set Variable       ${json["usuario_valido"]}
#     Set Global Variable     ${payload}
#     POST endpoint /usuarios

Validar quantidade "${quantidade}"
    Should Be Equal         ${response.json()["quantidade"]}    ${quantidade}

Validar se mensagem contem "${palavra}"
    Should Contain          ${response.json()["message"]}       ${palavra}

Printar conteudo response
    Log to Console          Response: ${response.json()["usuarios"][0]["nome"]}




# temporario - apagar usuarios
armazenar id
    GET endpoint /usuarios
    ${id_usuario}           Set Variable    ${response.json()["usuarios"][0]["_id"]}
    Log to Console          ID Usuario:     ${id_usuario}
    Set Global Variable     ${id_usuario}

