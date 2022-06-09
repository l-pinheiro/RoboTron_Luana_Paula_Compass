"""5- Construa um programa que recebe 20 valores para X e no final apresenta a
média aritmética dos valores pares digitados"""

# variáveis auxiliares
x = []
quant_pares = 0
soma = 0

# laço que recebe 20 valores e verifica quais são pares
for n in range(20):
    # recebe os valores e armazena em x
    x.append(int(input(f'Digite o {n+1}º valor: ')))
    # condição que verifica se o valor recebido é par e soma eles
    if x[n] % 2 == 0:
        soma = soma + x[n]
        quant_pares += 1 # intera uma variável aux para guardar o número de valores que são pares

# calcula a média aritmética
media = soma / quant_pares

# apresenta a média calculada
print(f'\nA média aritmética dos valores pares é igual a {media}')