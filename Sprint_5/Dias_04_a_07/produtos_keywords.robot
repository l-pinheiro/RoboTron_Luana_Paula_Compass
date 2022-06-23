* Settings *
Documentation       Keywords e Variáveis para ações do endpoint de produtos


* Variables *


* Keywords *
POST endpoint /produtos
    &{header}               Create Dictionary    Authorization=${token_auth}
    &{payload}              Create Dictionary   nome=MouseTechnolog   preco=400   descricao=Mouse    quantidade=100
    ${response}             POST On Session      serverest   /produtos  data=&{payload}     headers=${header}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

DELETE endpoint /produtos
    &{header}               Create Dictionary    Authorization=${token_auth}
    ${response}             DELETE On Session      serverest   /produtos/${id_produto}    headers=${header}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

Validar ter criado produto
    Should Be Equal         ${response.json()["message"]}       Cadastro realizado com sucesso
    Should Not Be Empty     ${response.json()["_id"]}

Criar um produto e armazenar id
    POST endpoint /produtos
    Validar ter criado produto
    ${id_produto}           Set Variable    ${response.json()["_id"]}
    Log to Console          ID Produto:    ${id_produto}
    Set Global Variable     ${id_produto}

#------------------------------------------------------------------------------------------------------------------------------------------------#
# Meus adicionais

GET endpoint /produtos/${id_produto}
    ${response}             GET On Session      serverest   /produtos/${id_produto}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

GET endpoint /produtos
    ${response}             GET On Session      serverest   /produtos
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}