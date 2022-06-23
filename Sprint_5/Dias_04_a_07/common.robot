* Settings *
Documentation       Keywords e Variáveis para ações gerais
Library             OperatingSystem


* Variables *



* Keywords *
Validar status code "${statuscode}"
    Should Be True          ${response.status_code} == ${statuscode}

Importar JSON estatico
    [Arguments]             ${nome_arquivo}
    ${arquivo}              Get File    ${EXECDIR}/${nome_arquivo}
    ${data}                 Evaluate    json.loads('''${arquivo}''')        json
    [return]                ${data}

#------------------------------------------------------------------------------------------------------------------------------------------------#
# Meus adicionais
Validar a mensagem "${mensagem}"
    Should Be Equal         ${response.json()["message"]}   ${mensagem}