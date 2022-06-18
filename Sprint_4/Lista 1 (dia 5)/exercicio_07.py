"""7- Crie um programa que contêm uma função que receba dois parâmetros inteiros
e retorna a média dos dois valores"""


# função que recebe 2 valores inteiros e retorna a media deles
def calcula_media(valor_1: int, valor_2: int):
    return (valor_1 + valor_2) / 2


# exemplo da utilização da função
v_1 = int(input("Digite o 1º valor: "))
v_2 = int(input("Digite o 2º valor: "))
print(f'A média dos valores é igual a: {calcula_media(v_1, v_2)}')