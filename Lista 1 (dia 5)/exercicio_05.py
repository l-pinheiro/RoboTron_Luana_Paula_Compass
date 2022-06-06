"""5- Construa um programa que recebe 20 valores para X e no final apresenta a
média aritmética dos valores pares digitados"""

# variáveis auxiliares
x = []
quant_pares = 0
soma = 0

# laço que recebe 20 valores e verifica quais são pares
for n in range(20):
    x.append(int(input(f'Digite o {n+1}º valor: '))) # recebe os valores e armazena em x
    # condição que verifica se o valor recebido é par
    if x[n] % 2 == 0:
        soma = soma + x[n]  # realiza a soma dos valores pares
        quant_pares += 1 # intera uma variável aux para guardar o número de valores que são pares

media = soma / quant_pares # calcula a média aritmética

print(f'\nA média aritmética dos valores pares é igual a {media}') # apresenta a média calculada