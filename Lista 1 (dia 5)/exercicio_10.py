"""10- Crie um programa que recebe uma lista com três frutas e compare com uma
lista com os valores ["maça", "banana", "pera"]"""

frutas = []
frutas_fixas = ["maça", "banana", "pera"]

# laço que recebe as frutas e as armazena em uma lista
for n in range(3):
    frutas.append((input(f'Digite a {n+1}ª fruta: ')))

# transforma as listas em conjuntos e compara quais os elementos que pertencem a ambos
frutas_iguais = set(frutas) & set(frutas_fixas)

# condição que verifica se alguma fruta coincidiu ou não e as apresenta
if frutas_iguais != set():
    print(f'\nO conjunto de frutas em ambas as listas é: {frutas_iguais}')
else:
    print("\nNenhuma fruta coincide em ambas as listas")


"""Referência que utilizei para a comparação entre listas através da transformação em conjuntos
https://www.delftstack.com/pt/howto/python/compare-lists-python/"""