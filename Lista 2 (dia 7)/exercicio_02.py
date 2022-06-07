"""2- Pegue o arquivo JSON 1 e printe apenas o nome do time vencedor no terminal."""

import json # importa a biblioteca necessária

# abre o arquivo JSON 1 nomeando-o como partida e o guarda em partida_json
with open("./arquivos/amF0XHEa.json", encoding='utf-8') as partida:
    partida_json = json.load(partida)

# armazena os atributos/valores que estão dentro do array copa-do-brasil (facilitar a manipulação)
copa_do_brasil = partida_json["copa-do-brasil"][0]

# apresenta apenas o nome do time vencedor (que no caso é o mandante - mandante 4 x 1 visitante)
print(copa_do_brasil["time_mandante"]["nome_popular"])

# condições para verificar quem ganhou o jogo e apresentar o nome do time (caso não soubesse diretamente quanto foi o jogo)
if copa_do_brasil["placar_mandante"] > copa_do_brasil["placar_visitante"]:
    print(f'O time vencedor foi: {copa_do_brasil["time_mandante"]["nome_popular"]}')
elif copa_do_brasil["placar_mandante"] < copa_do_brasil["placar_visitante"]:
    print(f'O time vencedor foi: {copa_do_brasil["time_visitante"]["nome_popular"]}')
else:
    print(f'Os times {copa_do_brasil["time_mandante"]["nome_popular"]} e {copa_do_brasil["time_visitante"]["nome_popular"]} empataram')