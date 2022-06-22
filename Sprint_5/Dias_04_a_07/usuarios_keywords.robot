# MasterClass

* Settings *
Documentation       Keywords e Variáveis para ações do endpoint de usuarios


* Variables *
${nome_do_usuario}      herbert richards
${senha_do_usuario}     teste123
${email_do_usuario}     testestestestestes@gmail.com


* Keywords *
GET endpoint /usuarios
    ${response}             GET On Session      serverest   /usuarios
    Set Global Variable     ${response}

POST endpoint /usuarios
    &{payload}              Create Dictionary   nome=jarbaass priest   email=testeeiulll@gmail.com  password=123    administrador=true
    ${response}             POST On Session      serverest   /usuarios  data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

PUT endpoint /usuarios
    &{payload}              Create Dictionary   nome=jerso priest   email=testeeiuprewasl@gmail.com  password=123    administrador=true
    ${response}             PUT On Session      serverest   /usuarios/g7qCgmsFeYNf5O91  data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

DELETE endpoint /usuarios
    ${response}             DELETE On Session      serverest   /usuarios/g7qCgmsFeYNf5O91
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}


#------------------------------------------------------------------------------------------------------------------------------------------------#
# Meus adicionais

GET endpoint /usuarios/${id_usuario}
    ${response}             GET On Session      serverest   /usuarios/${id_usuario}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}