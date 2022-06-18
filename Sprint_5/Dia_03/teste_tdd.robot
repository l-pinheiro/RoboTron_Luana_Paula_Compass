# MasterClass

* Test Cases *

Cenário: GET Todos os Usuarios 200
    GET endpoint /usuarios
    Validar todos os usuarios na response
    Validar status code "200"

Cenário: GET Usuario Especifico 200
    GET endpoint /usuarios com id "/0uxuPY0cbmQhpEz1"
    Validar o usuario com id "/0uxuPY0cbmQhpEz1"
    Validar status code "200"
    Validar mensagem "Nome = Fulano da Silva"

Cenário: POST Criar Novo Usuario 201
    Criar usuario dinamico
    POST usuario dinamico no endpoint /usuarios
    Validar status code "201"
    Validar mensagem "Cadastro realizado com sucesso"

Cenário: PUT Editar Usuario Existente 200
    PUT editar usuario com id "/0uxuPY0cbmQhpEz1" usando dados dinamicos
    Validar status code "200"
    Validar mensagem "Registro alterado com sucesso"

Cenário: DELETE Usuario Existente 200
    DELETE usuario especifico com id "/0uxuPY0cbmQhpEz1"
    Validar status code "200"
    Validar mensagem "Registro excluido com sucesso | Nenhum registro excluido"


#-------------------------------------------------------------------------------------------------------#
# Meus adicionais

Cenário: POST Realizar Login 200
    POST usuario dinamico no endpoint /login
    Validar o usuario
    Validar status code "200"
    Validar mensagem "Login realizado com sucesso"

Cenário: GET Produto Especifico 200
    GET endpoint /produtos com id "/BeeJh5lz3k6kSIzA"
    Validar o produto com id "/BeeJh5lz3k6kSIzA"
    Validar status code "200"
    Validar mensagem "nome = Logitech MX Vertical"

Cenário: DELETE Carrinho e Concluir Compra 200
    DELETE carrinho no endpoint /carrinhos/concluir-compra
    Validar status code "200"
    Validar mensagem "Registro excluído com sucesso | Não foi encontrado carrinho para esse usuário"