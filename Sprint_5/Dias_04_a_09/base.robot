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
${token_invalido}   tokeninvalido123


# Sessão para criação dos cenários de teste
* Test Cases *
#-------------Cenarios GET endpoint /usuarios -------------------------------------------------------------------------------------#
Cenario: GET Todos os Usuarios 200
    [tags]      GET.USUARIOS
    Criar Sessao
    GET endpoint /usuarios
    Validar status code "200"

Cenario: GET Usuario Especifico 200
    [tags]     GET.USUARIO
    Criar Sessao
    Cadastrar usuario_valido_adm e armazenar id
    GET endpoint /usuarios especifico   ${id_usuario}
    Validar status code "200"

Cenario: GET Usuario Especifico ID Invalido 400
    [tags]     GET.USUARIO.ERRO
    Criar Sessao
    GET endpoint /usuarios especifico   ${id_invalido}
    Validar status code "400"
    Validar a Mensagem "Usuário não encontrado"

#-------------Cenarios POST endpoint /usuarios -------------------------------------------------------------------------------------#
Cenario: POST Cadastrar Usuario 201
    [tags]     POST.USUARIO
    Criar Sessao
    Criar usuario_valido_adm estatico   #usuario_valido_nao_adm
    POST endpoint /usuarios
    Validar status code "201"
    Validar a Mensagem "Cadastro realizado com sucesso"

Cenario: POST Cadastrar Usuario Email Utilizado 400
    [tags]     POST.USUARIO.ERRO
    Criar Sessao
    Cadastrar usuario_email_igual e armazenar id
    POST endpoint /usuarios
    Validar status code "400"
    Validar a Mensagem "Este email já está sendo usado"

#-------------Cenarios PUT endpoint /usuarios -------------------------------------------------------------------------------------#
Cenario: PUT Editar Usuario 200
    [tags]     PUT.USUARIO
    Criar Sessao
    Cadastrar usuario_valido_adm e armazenar id
    Criar usuario_valido_editado estatico
    PUT endpoint /usuarios/${id_usuario}
    Validar status code "200"
    Validar a Mensagem "Registro alterado com sucesso"

Cenario: PUT Editar Usuario Nao Cadastrado 201
    [tags]     PUT.USUARIO.CADASTRAR
    Criar Sessao
    Criar usuario_valido_adm estatico
    PUT endpoint /usuarios/${id_invalido}
    Validar status code "201"
    Validar a Mensagem "Cadastro realizado com sucesso"

Cenario: PUT Criar Usuario Email Utilizado 400
    [tags]     PUT.USUARIO.CADASTRADO
    Criar Sessao
    Cadastrar usuario_valido_adm e armazenar id
    Criar usuario_email_igual estatico
    PUT endpoint /usuarios/${id_invalido}
    Validar status code "400"

#-------------Cenarios DELETE endpoint /usuarios -------------------------------------------------------------------------------------#
Cenario: DELETE Deletar Usuario 200
    [tags]     DELETE.USUARIO
    Criar Sessao
    Cadastrar usuario_valido_adm e armazenar id
    #armazenar id       #apagar todos usuarios
    DELETE endpoint /usuarios/${id_usuario}
    Validar status code "200"

Cenario: DELETE Deletar Usuario Carrinho 400
    [tags]     DELETE.USUARIO.CARRINHO
    Criar Sessao
    Cadastrar usuario_valido_adm e armazenar id
    Fazer login com id e adicionar carrinho
    DELETE endpoint /usuarios/${id_usuario}
    Validar status code "400"
    Validar a Mensagem "Não é permitido excluir usuário com carrinho cadastrado"

#-------------Cenarios POST endpoint /login -------------------------------------------------------------------------------------#
Cenario: POST Realizar Login 200
    [tags]     POST.LOGIN
    Criar Sessao
    Criar usuario_valido estatico login
    POST endpoint /login
    Validar status code "200"
    Validar a mensagem "Login realizado com sucesso"

Cenario: POST Realizar Login Invalido 400
    [tags]     POST.LOGIN.ERRO
    Criar Sessao
    Criar usuario_invalido estatico login
    POST endpoint /login
    Validar status code "400"

#-------------Cenarios GET endpoint /produtos -------------------------------------------------------------------------------------#
Cenario: GET Todos os Produtos 200
    [tags]      GET.PRODUTOS
    Criar Sessao
    GET endpoint /produtos
    Validar status code "200"

Cenario: GET Produto Especifico 200
    [tags]     GET.PRODUTO
    Criar Sessao
    Criar produto_valido e armazenar id
    GET endpoint /produtos especifico   ${id_produto}
    Validar status code "200"

Cenario: GET Produto Especifico ID Invalido 400
    [tags]     GET.PRODUTO.ERRO
    Criar Sessao
    GET endpoint /produtos especifico   ${id_invalido}
    Validar status code "400"
    Validar a Mensagem "Produto não encontrado"

#-------------Cenarios POST endpoint /produtos -------------------------------------------------------------------------------------#
Cenario: POST Criar Produto 201
    [tags]     POST.PRODUTO
    Criar Sessao
    Fazer login e armazenar token   usuario_valido_adm
    Gerar produto_valido estatico
    POST endpoint /produtos     ${token_auth}
    Validar status code "201"
    Validar a Mensagem "Cadastro realizado com sucesso"

Cenario: POST Criar Produto Nome Utilizado 400
    [tags]     POST.PRODUTO.ERRO
    Criar Sessao
    Fazer login e armazenar token   usuario_valido_adm
    Gerar produto_nome_igual estatico
    POST endpoint /produtos     ${token_auth}
    Validar status code "400"
    Validar a Mensagem "Já existe produto com esse nome"

Cenario: POST Criar Produto Token Invalido 401
    [tags]     POST.PRODUTO.TOKEN
    Criar Sessao
    Gerar produto_valido estatico
    POST endpoint /produtos     ${token_invalido}
    Validar status code "401"
    Validar a Mensagem "Token de acesso ausente, inválido, expirado ou usuário do token não existe mais"

Cenario: POST Criar Produto Não Administrador 403
    [tags]     POST.PRODUTO.ADM
    Criar Sessao
    Fazer login e armazenar token   usuario_valido_nao_adm
    Gerar produto_valido estatico
    POST endpoint /produtos     ${token_auth}
    Validar status code "403"
    Validar a Mensagem "Rota exclusiva para administradores"

#-------------Cenarios PUT endpoint /produtos -------------------------------------------------------------------------------------#
Cenario: PUT Editar Produto 200
    [tags]     PUT.PRODUTO
    Criar Sessao
    Criar produto_valido e armazenar id
    Gerar produto_valido_editado estatico
    PUT endpoint /produtos     ${token_auth}
    Validar status code "200"
    Validar a Mensagem "Registro alterado com sucesso"

Cenario: PUT Editar Produto 201
    [tags]     PUT.PRODUTO.CRIAR
    Criar Sessao
    Fazer login e armazenar token   usuario_valido_adm
    Gerar produto_valido estatico
    Gerar id_invalido
    PUT endpoint /produtos     ${token_auth}
    Validar status code "201"
    Validar a Mensagem "Cadastro realizado com sucesso"

Cenario: PUT Editar Produto Nome Utilizado 400
    [tags]     PUT.PRODUTO.ERRO
    Criar Sessao
    Fazer login e armazenar token   usuario_valido_adm
    Gerar produto_nome_igual estatico
    Gerar id_invalido
    PUT endpoint /produtos     ${token_auth}
    Validar status code "400"
    Validar a Mensagem "Já existe produto com esse nome"

Cenario: PUT Editar Produto Token Invalido 401
    [tags]     PUT.PRODUTO.TOKEN
    Criar Sessao
    Fazer login e armazenar token   usuario_valido_adm
    Criar produto_valido e armazenar id
    PUT endpoint /produtos     ${token_invalido}
    Validar status code "401"
    Validar a Mensagem "Token de acesso ausente, inválido, expirado ou usuário do token não existe mais"

Cenario: PUT Editar Produto Não Administrador 403
    [tags]     PUT.PRODUTO.ADM
    Criar Sessao
    Fazer login e armazenar token   usuario_valido_nao_adm
    Gerar produto_valido estatico
    Encontrar id de um produto_valido cadastrado
    PUT endpoint /produtos     ${token_auth}
    Validar status code "403"
    Validar a Mensagem "Rota exclusiva para administradores"

#-------------Cenarios DELETE endpoint /produtos -------------------------------------------------------------------------------------#
Cenario: DELETE Excluir Produto 200
    [tags]     DELETE.PRODUTO
    Criar Sessao
    Criar produto_valido e armazenar id
    DELETE endpoint /produtos     ${token_auth}
    Validar status code "200"

Cenario: DELETE Excluir Produto No Carrinho 400
    [tags]     DELETE.PRODUTO.CARRINHO
    Criar Sessao
    Fazer login e adicionar carrinho
    DELETE endpoint /produtos     ${token_auth}
    Validar status code "400"
    Validar a Mensagem "Não é permitido excluir produto que faz parte de carrinho"

Cenario: DELETE Excluir Produto Token Invalido 401
    [tags]     DELETE.PRODUTO.TOKEN
    Criar Sessao
    Criar produto_valido e armazenar id
    DELETE endpoint /produtos     ${token_invalido}
    Validar status code "401"
    Validar a Mensagem "Token de acesso ausente, inválido, expirado ou usuário do token não existe mais"

Cenario: DELETE Excluir Produto Não Administrador 403
    [tags]     DELETE.PRODUTO.ADM
    Criar Sessao
    Fazer login e armazenar token   usuario_valido_nao_adm
    Encontrar id de um produto_valido cadastrado
    DELETE endpoint /produtos     ${token_auth}
    Validar status code "403"
    Validar a Mensagem "Rota exclusiva para administradores"

#-------------Cenarios GET endpoint /carrinhos -------------------------------------------------------------------------------------#
Cenario: GET Listar Todos Carrinhos 200
    [tags]     GET.CARRINHOS
    Criar Sessao
    GET endpoint /carrinhos
    Validar status code "200"

Cenario: GET Carrinho Especifico 200
    [tags]     GET.CARRINHO
    Criar Sessao
    Listar carrinhos e pegar um id valido
    GET endpoint /carrinhos/${id_carrinho}
    Validar status code "200"

#-------------Cenarios POST endpoint /carrinhos -------------------------------------------------------------------------------------#
Cenario: POST Criar Carrinho 200
    [tags]     POST.CARRINHO
    Criar Sessao
    Fazer login e armazenar token   usuario_valido_adm
    Adicionar um produto no carrinho
    POST endpoint /carrinhos     ${token_auth}
    Validar status code "201"
    Validar a Mensagem "Cadastro realizado com sucesso"

#-------------Cenarios DELETE endpoint /carrinhos -------------------------------------------------------------------------------------#
Cenario: DELETE Excluir Carrinho Concluir Compra Com Carrinho 200
    [tags]     DELETE.COM.CARRINHO.CONCLUIR
    Criar Sessao
    Fazer login e adicionar carrinho
    DELETE endpoint /carrinhos      concluir-compra    ${token_auth}
    Validar status code "200"
    Validar a Mensagem "Registro excluído com sucesso"

Cenario: DELETE Excluir Carrinho Concluir Compra Sem Carrinho 200
    [tags]     DELETE.SEM.CARRINHO.CONCLUIR
    Criar Sessao
    Fazer login e armazenar token   usuario_valido_adm
    DELETE endpoint /carrinhos      concluir-compra    ${token_auth}
    Validar status code "200"
    Validar a Mensagem "Não foi encontrado carrinho para esse usuário"

Cenario: DELETE Excluir Carrinho Concluir Token Invalido 401
    [tags]     DELETE.CARRINHO.CONCLUIR.TOKEN
    Criar Sessao
    Fazer login e adicionar carrinho
    DELETE endpoint /carrinhos      concluir-compra    ${token_invalido}
    Validar status code "401"
    Validar a Mensagem "Token de acesso ausente, inválido, expirado ou usuário do token não existe mais"

Cenario: DELETE Excluir Carrinho Cancelar Compra Com Carrinho 200
    [tags]     DELETE.COM.CARRINHO.CANCELAR
    Criar Sessao
    Fazer login e adicionar carrinho
    DELETE endpoint /carrinhos      cancelar-compra    ${token_auth}
    Validar status code "200"
    Validar a Mensagem "Registro excluído com sucesso. Estoque dos produtos reabastecido"

Cenario: DELETE Excluir Carrinho Cancelar Compra Sem Carrinho 200
    [tags]     DELETE.SEM.CARRINHO.CANCELAR
    Criar Sessao
    Fazer login e armazenar token   usuario_valido_adm
    DELETE endpoint /carrinhos      cancelar-compra    ${token_auth}
    Validar status code "200"
    Validar a Mensagem "Não foi encontrado carrinho para esse usuário"

Cenario: DELETE Excluir Carrinho Cancelar Token Invalido 401
    [tags]     DELETE.CARRINHO.CANCELAR.TOKEN
    Criar Sessao
    Fazer login e adicionar carrinho
    DELETE endpoint /carrinhos      cancelar-compra    ${token_invalido}
    Validar status code "401"
    Validar a Mensagem "Token de acesso ausente, inválido, expirado ou usuário do token não existe mais"


# Sessão para criação de Keywords personalizadas
* Keywords *
Criar Sessao
    Create Session          serverest       http://localhost:3000/      #https://serverest.dev

