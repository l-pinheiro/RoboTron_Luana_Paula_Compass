"""7- Percorra o JSON 2, utilizando o loop FOR e printe suas chaves principais."""

# importa a biblioteca necessária
import json

# abre o arquivo JSON 2 nomeando-o como campeonato e o guarda em campeonato_json
with open("./arquivos/GxdV3pRP.json", encoding='utf-8') as campeonato:
    campeonato_json = json.load(campeonato)

# apresenta as chaves principais do arquivo
print("As principais chaves do JSON 2 são:")
for chave in campeonato_json:
    print(chave)