"""4- Construa um programa que armazena uma idade em uma váriavel e compara, se
a idade for maior que 18, apresenta "Maior de idade", se a idade for menor que 12,
apresenta "Você é uma criança" e se for maior que 12 e menor que 18, apresenta
"Você é um adolescente" """

# armazena uma idade em uma variável
idade = int(input("Digite a idade: "))

# condições para apresentar as mensagens de idade
if idade >= 18:
    print("Maior de idade")
elif idade < 12:
    print("Você é uma criança")
elif 12 <= idade < 18: # obs: também poderia 'ser idade >= 12 and idade < 18' ou apenas o 'else'
    print("Você é um adolescente")
