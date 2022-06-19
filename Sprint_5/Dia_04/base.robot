# Sessão para configuração, documentação, import de arquivos e libraries
* Settings *
Documentation       Arquivo simples para requisições HTTP em APIs Rest
Library             RequestsLibrary


# Sessão para setagem de variáveis para utilização
* Variables *



# Sessão para criação dos cenários de teste
* Test Cases *
Cenário: GET Todos os Usuarios 200
    Criar Sessao
    GET endpoint /usuarios
    Validar status code "200"


# Sessão para criação de Keywords personalizadas
* Keywords *
Criar Sessao
    Create Session          serverest   https://serverest.dev

GET endpoint /usuarios
    ${response}             GET On Session      serverest   /usuarios
    Set Global Variable     ${response}

Validar status code "${statuscode}"
    Should Be True          ${response.status_code} == ${statuscode}