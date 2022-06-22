* Settings *
Documentation       Keywords e Variáveis para ações do endpoint de login


* Variables *
${email_para_login}         fulano@qa.com
${password_para_login}      teste


* Keywords *
POST endpoint /login
    &{payload}              Create Dictionary   email=${email_para_login}  password=${password_para_login}
    ${response}             POST On Session      serverest   /login  data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}