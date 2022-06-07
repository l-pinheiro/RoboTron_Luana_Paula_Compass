"""3- Do JSON 1 Guarde apenas o Nome do Estádio, o Placar e o Status do jogo
dentro de variáveis e mostre-as."""

import json # importa a biblioteca necessária

# abre o arquivo JSON 1 nomeando-o como partida e o guarda em partida_json
with open("./arquivos/amF0XHEa.json", encoding='utf-8') as partida:
    partida_json = json.load(partida)

# guarda e apresenta o estádio, placar e status do jogo
estadio = partida_json["copa-do-brasil"][0]["estadio"]["nome_popular"]
print(f'O jogo aconteceu no estádio: {estadio}')

placar = partida_json["copa-do-brasil"][0]["placar"]
print(f'O placar foi: {placar}')

status = partida_json["copa-do-brasil"][0]["status"]
print(f'O status do jogo é: {status}')
