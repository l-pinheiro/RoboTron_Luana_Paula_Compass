# MasterClass

# Sessão para configuração, documentação, import de arquivos e libraries
* Settings *
Documentation       Arquivo simples para requisições HTTP em APIs Rest
Library             RequestsLibrary


# Sessão para setagem de variáveis para utilização
* Variables *



# Sessão para criação dos cenários de teste
* Test Cases *
Cenario: GET Todos os Usuarios 200
    [tags]      GET
    Criar Sessao
    GET endpoint /usuarios
    Validar status code "200"
    Validar quantidade "${1}"
    Printar conteudo response

Cenario: POST Cadastrar Usuario 201
    [tags]     POST
    Criar Sessao
    POST endpoint /usuarios
    Validar status code "201"
    Validar se mensagem contem "sucesso"

Cenario: PUT Editar Usuario 200
    [tags]     PUT
    Criar Sessao
    PUT endpoint /usuarios
    Validar status code "200"

Cenario: DELETE Deletar Usuario 200
    [tags]     DELETE
    Criar Sessao
    DELETE endpoint /usuarios
    Validar status code "200"

#------------------------------------------------------------------------------------------------------------------------------------------------#
# Meus adicionais

Cenario: GET Usuario Especifico 200
    [tags]     GET.USUARIO
    Criar Sessao
    GET endpoint /usuarios/HvlkdtVtRWADjGx9
    Validar status code "200"

Cenario: POST Realizar Login 200
    [tags]     POST.LOGIN
    Criar Sessao
    POST endpoint /login
    Validar status code "200"
    Validar se mensagem contem "Login realizado com sucesso"

Cenario: GET Todos os Produtos 200
    [tags]      GET.PRODUTOS
    Criar Sessao
    GET endpoint /produtos
    Validar status code "200"

Cenario: GET Produto Especifico 200
    [tags]     GET.PRODUTO
    Criar Sessao
    GET endpoint /produtos/tjkkkJAtSnMWFgLp
    Validar status code "200"
    #Validar se mensagem contem "Logitech MX Vertical"


#------------------------------------------------------------------------------------------------------------------------------------------------#
# MasterClass

# Sessão para criação de Keywords personalizadas
* Keywords *
Criar Sessao
    Create Session          serverest   https://serverest.dev   #também pode ser url localhost

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

Validar status code "${statuscode}"
    Should Be True          ${response.status_code} == ${statuscode}

Validar quantidade "${quantidade}"
    Should Be Equal         ${response.json()["quantidade"]}    ${quantidade}

Validar se mensagem contem "${palavra}"
    Should Contain          ${response.json()["message"]}   ${palavra}

Printar conteudo response
    Log to Console          Response: ${response.json()["usuarios"][0]["nome"]}


#------------------------------------------------------------------------------------------------------------------------------------------------#
# Meus adicionais

GET endpoint /usuarios/${id_usuario}
    ${response}             GET On Session      serverest   /usuarios/${id_usuario}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

POST endpoint /login
    &{payload}              Create Dictionary   email=fulano@qa.com  password=teste
    ${response}             POST On Session      serverest   /login  data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

GET endpoint /produtos/${id_produto}
    ${response}             GET On Session      serverest   /produtos/${id_produto}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

GET endpoint /produtos
    ${response}             GET On Session      serverest   /produtos
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}