"""4- No JSON 1 printe todas as chaves e valores do time visitante"""

# importa a biblioteca necessária
import json

# abre o arquivo JSON 1 nomeando-o como partida e o guarda em partida_json
with open("./arquivos/amF0XHEa.json", encoding='utf-8') as partida:
    partida_json = json.load(partida)

# armazena as chaves/valores que estão dentro do time_visitante
time_visitante = partida_json["copa-do-brasil"][0]["time_visitante"]

# apresenta todas as chaves/valores do time visitante juntas (unica linha - objeto)
print("Todas as chaves/valores juntas:")
print(time_visitante)

# apresenta todas as chaves/valores do time visitante separadas (uma por linha)
print("\n\nTodas as chaves/valores separadas:")
for chave in time_visitante:
    print(f'{chave}: {time_visitante[chave]}')