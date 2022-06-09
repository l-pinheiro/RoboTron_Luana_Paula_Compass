"""Em Python crie uma aplicação que mostre elementos específicos em uma tabela periódica"""

# importa a biblioteca necessária
import pandas as pd


# A) listar todos os elementos da tabela, porém mostrando apenas uma propriedade do elemento
def menu_propriedade():
    print("Listar elementos pela propriedade de:\n"
          "1 - Simbolo\n"
          "2 - Nome\n"
          "3 - Numero Atomico\n"
          "4 - Linha\n"
          "5 - Coluna\n"
          "6 - Estado Fisico\n")
    propriedade = verifica_opcao(1, 6)
    if propriedade == 1:
        print(tb_periodica["Simbolo"])
    elif propriedade == 2:
        print(tb_periodica["Nome"])
    elif propriedade == 3:
        print(tb_periodica["NumeroAtomico"])
    elif propriedade == 4:
        print(tb_periodica["Linha"])
    elif propriedade == 5:
        print(tb_periodica["Coluna"])
    else:
        print(tb_periodica["EstadoFisico"])


# B) listar todos os dados de determinado elemento, buscando através do seu símbolo.
def menu_elemento():
    simbolo = input("\nInsira o simbolo do elemento que você deseja: ")
    if len(tb_periodica[tb_periodica["Simbolo"] == simbolo]) != 0:
        print(tb_periodica[tb_periodica["Simbolo"] == simbolo])
    else:
        print("\nEste simbolo é inválido, tente novamente")
        menu_elemento()


# C) listar todos os dados de todos os elementos inseridos.
def listar_tabela():
    print(tb_periodica)


# função para receber um valor int e verificar se ele é válido ou não
def verifica_opcao(v_min: int, v_max: int):
    opcao = int(input("Insira o valor da opção que você deseja: "))
    if opcao < v_min or opcao > v_max:
        print("\nEsta opção é inválida, tente novamente\n")
        return verifica_opcao(v_min, v_max)
    else:
        return opcao


# função que apresenta as opções que a aplicação pode fazer e permite escolher uma
def menu_principal():
    print("1 - Listar uma propriedade da tabela periódica (todos elementos)\n"
          "2 - Listar todos os dados de um elemento (todas propriedades)\n"
          "3 - Listar todos os dados dos elementos da tabela periódica\n")
    opcao = verifica_opcao(1, 3)
    if opcao == 1:
        menu_propriedade()
    elif opcao == 2:
        menu_elemento()
    else:
        listar_tabela()


# lê o arquivo csv e armazena-o na variável tb_periodica
tb_periodica = pd.read_csv('./arquivos/tabela_periodica.csv', encoding='utf-8', sep=',')

# chama a função do menu principal
menu_principal()