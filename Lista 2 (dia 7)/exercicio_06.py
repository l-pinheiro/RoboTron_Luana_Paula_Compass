"""6- Faça com que o programa printe apenas os primeiros dados dentro de
edicao_atual, fase_atual, rodada_atual usando o JSON 2."""

# importa a biblioteca necessária
import json

# abre o arquivo JSON 2 nomeando-o como campeonato e o guarda em campeonato_json
with open("./arquivos/GxdV3pRP.json", encoding='utf-8') as campeonato:
    campeonato_json = json.load(campeonato)

# armazena em uma lista os objetos os quais devem ser printados os primeiros dados
lista_objetos = ["edicao_atual", "fase_atual", "rodada_atual"]

# define quantos dados vão ser printados
n_dados = 3

# laço que printa os primeiros n dados de cada objeto
for objeto in lista_objetos:
    print(f'\nAs {n_dados} primeiras chave/valor de {objeto} são:')
    for n in range(n_dados):
        chave = list(campeonato_json[objeto])[n]
        valor = campeonato_json[objeto][chave]
        print(f'{chave}: {valor}')