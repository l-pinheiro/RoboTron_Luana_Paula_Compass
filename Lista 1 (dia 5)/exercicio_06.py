"""6- Construa um programa que receba uma valor inteiro maior que 2 em uma
variavel x e apresenta os impares entre 0 e x"""

# variáveis auxiliares
valor = 0
impares = []

# laço que recebe um valor e verifica se ele é maior que 2 ou não
while valor < 1:
    # recebe um valor inteiro e armazena em x
    x = int(input("Digite um valor maior que 2: "))
    if x <= 2:
        print("Este é um valor inválido, tente novamente")
    else:
        valor += 1 # intera essa variável para sair do laço se o valor for > 2

# laço que verifica e guarda os valores impares entre 0 e x (x incluso)
for n in range(x+1): # se o x não for incluso, é necessário tirar o '+1'
    if n % 2:
        impares.append(n)

# apresenta os valores impares
print(f'\nOs números ímpares entre 0 e {x} são: {impares}')