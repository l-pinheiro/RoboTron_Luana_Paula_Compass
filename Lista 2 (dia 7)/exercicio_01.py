"""1- Baixe o arquivo do link JSON 1, abra ele no vsCode com Python nomeando-o
como partida guarde em uma variável e printe o JSON inteiro no terminal"""

# importa a biblioteca necessária
import json

# abre o arquivo JSON 1 nomeando-o como partida e o guarda em partida_json
with open("./arquivos/amF0XHEa.json", encoding='utf-8') as partida:
    partida_json = json.load(partida)

# apresenta o json inteiro no terminal
print(partida_json)