"""Leia um valor inteiro correspondente à idade de uma pessoa em dias e
informe-a em anos, meses e dias. Obs.: apenas para facilitar o cálculo, considere
todo ano com 365 dias e todo mês com 30 dias. Nos casos de teste nunca haverá
uma situação que permite 12 meses e alguns dias, como 360, 363 ou 364. Este é
apenas um exercício com objetivo de testar raciocínio matemático simples.
"""

# recebe um valor inteiro e armazena em idade
idade = int(input("Digite a idade em dias: "))

# calcula quantos anos, meses e dias a idade recebida possui
anos = idade // 365
meses = (idade % 365) // 30
dias = (idade % 365) % 30

# apresenta os valores calculados
print(f'\nEsta idade corresponde a {anos} anos, {meses} meses e {dias} dias')