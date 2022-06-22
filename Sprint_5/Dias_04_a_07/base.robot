# MasterClass

# Sessão para configuração, documentação, import de arquivos e libraries
* Settings *
Documentation       Arquivo simples para requisições HTTP em APIs Rest
Library             RequestsLibrary
Resource            ./usuarios_keywords.robot
Resource            ./login_keywords.robot
Resource            ./produtos_keywords.robot
Resource            ./carrinhos_keywords.robot


# Sessão para setagem de variáveis para utilização
* Variables *


# Sessão para criação dos cenários de teste
* Test Cases *
Cenario: GET Todos os Usuarios 200
    [tags]      GET.USUARIOS
    Criar Sessao
    GET endpoint /usuarios
    Validar status code "200"
    Validar quantidade "${1}"
    Printar conteudo response

Cenario: POST Cadastrar Usuario 201
    [tags]     POST.USUARIO
    Criar Sessao
    POST endpoint /usuarios
    Validar status code "201"
    Validar se mensagem contem "sucesso"

Cenario: PUT Editar Usuario 200
    [tags]     PUT.USUARIO
    Criar Sessao
    PUT endpoint /usuarios
    Validar status code "200"

Cenario: DELETE Deletar Usuario 200
    [tags]     DELETE.USUARIO
    Criar Sessao
    DELETE endpoint /usuarios
    Validar status code "200"

Cenario: POST Criar Produto 201
    [tags]     POST.PRODUTO
    Criar Sessao
    POST endpoint /produtos
    Validar status code "201"

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

