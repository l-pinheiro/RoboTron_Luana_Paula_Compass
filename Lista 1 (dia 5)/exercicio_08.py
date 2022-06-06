"""- Crie um programa que lê 1 valor inteiro para X. Se o valor for par, calcular o
fatorial de x em uma função e apresentar o resultado fora da função. Se o valor for
impar, apresentar em uma função a tabuada de 1 a 10 de X."""

# função que calcula e retorna o fatorial de um valor de forma recursiva
def fatorial(valor):
    if valor == 0:
        return 1
    else:
        return valor * fatorial(valor - 1)

# função que calcula e apresenta a tabuada de 1 a 10 de um valor
def tabuada(valor):
    print(f'\nTabuada de 1 a 10 de {valor}:')
    for n in range(10):
        print(f'{valor} x {n+1} = {valor*(n+1)}')


x = int(input("Digite um valor inteiro: ")) # recebe um valor inteiro e armazena em x

# condição para verificar se o valor recebido é par ou impar
if x % 2 == 0:
    print(f'\nO fatorial de {x} é {fatorial(x)}')
else:
    tabuada(x)


"""Referência para a função recursiva de fatorial
https://panda.ime.usp.br/algoritmos/static/algoritmos/05-recursao.html """
