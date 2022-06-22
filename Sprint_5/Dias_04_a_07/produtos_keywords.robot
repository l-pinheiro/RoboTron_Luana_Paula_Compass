* Settings *
Documentation       Keywords e Variáveis para ações do endpoint de produtos


* Variables *
${token_auth}       Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImZ1bGFub0BxYS5jb20iLCJwYXNzd29yZCI6InRlc3RlIiwiaWF0IjoxNjU1ODk5NjAyLCJleHAiOjE2NTU5MDAyMDJ9.Kg8loWA29sUDJw3hEwzM6R7k0jBguGPKcHldwWpfIeo


* Keywords *
POST endpoint /produtos
    &{header}              Create Dictionary    Authorization=${token_auth}
    &{payload}              Create Dictionary   nome=MouseTechs   preco=400   descricao=Mouse    quantidade=100
    ${response}             POST On Session      serverest   /produtos  data=&{payload}     headers=${header}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}


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