"""3- Construa um programa que recebe dois valores, soma esses valores e apresenta
se o resultado é par ou impar"""

# recebe dois valores inteiros
valor_1 = int(input("Digite o 1ª valor: "))
valor_2 = int(input("Digite o 2ª valor: "))

# calcula a soma dos valores
soma = valor_1 + valor_2

# condição para apresentar se o resultado é par ou ímpar
if soma % 2 == 0:
    print(f'O resultado da soma é {soma}, logo é par')
else:
    print(f'O resultado da soma é {soma}, logo é ímpar')