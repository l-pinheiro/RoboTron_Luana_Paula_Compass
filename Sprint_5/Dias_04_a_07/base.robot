# MasterClass

# Sessão para configuração, documentação, import de arquivos e libraries
* Settings *
Documentation       Arquivo simples para requisições HTTP em APIs Rest
Library             RequestsLibrary
Resource            ./usuarios_keywords.robot
Resource            ./login_keywords.robot
Resource            ./produtos_keywords.robot
Resource            ./carrinhos_keywords.robot
Resource            ./common.robot


# Sessão para setagem de variáveis para utilização
* Variables *


# Sessão para criação dos cenários de teste
* Test Cases *
# Cenario: GET Todos os Usuarios 200
#     [tags]      GET.USUARIOS
#     Criar Sessao
#     GET endpoint /usuarios
#     Validar status code "200"
#     Validar quantidade "${1}"
#     Printar conteudo response

# Cenario: POST Cadastrar Usuario 201
#     [tags]     POST.USUARIO
#     Criar Sessao
#     POST endpoint /usuarios
#     Validar status code "201"
#     Validar se mensagem contem "sucesso"

# Cenario: PUT Editar Usuario 200
#     [tags]     PUT.USUARIO
#     Criar Sessao
#     PUT endpoint /usuarios
#     Validar status code "200"

# Cenario: DELETE Deletar Usuario 200
#     [tags]     DELETE.USUARIO
#     Criar Sessao
#     DELETE endpoint /usuarios
#     Validar status code "200"

# Cenario: POST Realizar Login 200
#     [tags]     POST.LOGIN
#     Criar Sessao
#     POST endpoint /login
#     Validar status code "200"

Cenario: POST Criar Produto 201
    [tags]     POST.PRODUTO
    Criar Sessao
    Fazer login e armazenar token
    POST endpoint /produtos
    Validar status code "201"

Cenario: DELETE Excluir Produto 200
    [tags]     DELETE.PRODUTO
    Criar Sessao
    Fazer login e armazenar token
    Criar um produto e armazenar id
    DELETE endpoint /produtos
    Validar status code "200"

#------------------------------------------------------------------------------------------------------------------------------------------------#
# Meus adicionais
Cenario: GET Todos os Usuarios 200
    [tags]      GET.USUARIOS
    Criar Sessao
    GET endpoint /usuarios
    Validar status code "200"

Cenario: GET Usuario Especifico 200
    [tags]     GET.USUARIO
    Criar Sessao
    Cadastrar um usuario e armazenar dados
    GET endpoint /usuarios especifico ${id_usuario}
    Validar status code "200"

Cenario: GET Usuario Especifico ID Invalido 400
    [tags]     GET.USUARIO.ERRO
    Criar Sessao
    GET endpoint /usuarios especifico ${id_invalido}
    Validar status code "400"
    Validar a Mensagem "Usuário não encontrado"

Cenario: POST Cadastrar Usuario 201
    [tags]     POST.USUARIO
    Criar Sessao
    POST endpoint /usuarios
    Validar status code "201"
    Validar a Mensagem "Cadastro realizado com sucesso"

Cenario: POST Criar Usuario De Massa Estatica 201
    [tags]     POST.USUARIO.ESTATICO
    Criar Sessao
    Criar usuario estatico valido
    Validar status code "201"

Cenario: POST Cadastrar Usuario Email Utilizado 400
    [tags]     POST.USUARIO.ERRO
    Criar Sessao
    Cadastrar um usuario e armazenar dados
    POST endpoint /usuarios
    Validar status code "400"
    Validar a Mensagem "Este email já está sendo usado"

Cenario: PUT Editar Usuario 200
    [tags]     PUT.USUARIO
    Criar Sessao
    Cadastrar um usuario e armazenar dados
    PUT endpoint /usuarios/${id_usuario}
    Validar status code "200"
    Validar a Mensagem "Registro alterado com sucesso"

Cenario: PUT Editar Usuario Nao Cadastrado 201
    [tags]     PUT.USUARIO.CADASTRAR
    Criar Sessao
    PUT endpoint /usuarios/${id_invalido}
    Validar status code "201"
    Validar a Mensagem "Cadastro realizado com sucesso"

Cenario: PUT Criar Usuario Email Utilizado 400
    [tags]     PUT.USUARIO.CADASTRADO
    Criar Sessao
    Cadastrar um usuario e armazenar dados
    Armazenar email do usuario
    PUT endpoint /usuarios/${id_invalido}
    Validar status code "400"

Cenario: DELETE Deletar Usuario 200
    [tags]     DELETE.USUARIO
    Criar Sessao
    #armazenar id       #apagar todos usuarios
    DELETE endpoint /usuarios/${id_usuario}
    Validar status code "200"

Cenario: DELETE Deletar Usuario Carrinho 400





Cenario: POST Realizar Login 200
    [tags]     POST.LOGIN
    Criar Sessao
    Cadastrar um usuario e armazenar dados
    POST endpoint /login
    Validar status code "200"

Cenario: POST Realizar Login Invalido 401
    [tags]     POST.LOGIN.ERRO
    Criar Sessao
    Criar email e senha invalidos
    POST endpoint /login
    Validar status code "401"
    Validar a mensagem "Email e/ou senha inválidos"



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
    Create Session          serverest       http://localhost:3000/      #https://serverest.dev

