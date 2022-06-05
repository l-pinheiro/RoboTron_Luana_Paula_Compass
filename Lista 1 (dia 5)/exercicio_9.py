"""9- Crie um programa que recebe 15 valores e armazena em uma lista, e no final da
execução mostre os valores da lista do ultimo para o primeiro"""

lista = []

# laço que recebe 15 valores inteiros e armazena-os em uma lista
for n in range(15):
    lista.append(int(input(f'Digite o {n+1}º valor: ')))

# apresenta os valores da lista do último para o primeiro
print("\nValores da lista do último para o primeiro:")

# pode ser apresentado em uma linha em forma de vetor
print(lista[::-1])
# pode ser apresentado em sequencia, sendo 1 por linha
for x in reversed(lista):
    print(x)

"""Referência que utilizei para lembrar de manipulação de listas
https://pythonhelp.wordpress.com/2013/06/26/brincando-com-listas/ """