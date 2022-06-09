"""5- Guarde o arquivo JSON 2 nomeando-o como campeonato em uma variável e
printe todos os seus dados."""

# importa a biblioteca necessária
import json

# abre o arquivo JSON 2 nomeando-o como campeonato e o guarda em campeonato_json
with open("./arquivos/GxdV3pRP.json", encoding='utf-8') as campeonato:
    campeonato_json = json.load(campeonato)

# apresenta todos os dados do json
print(campeonato_json)