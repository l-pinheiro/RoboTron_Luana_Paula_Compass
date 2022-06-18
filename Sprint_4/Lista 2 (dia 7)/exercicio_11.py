"""11- Printe o nome do Ator que ganhou o Oscar em 1993."""

# importa a biblioteca necessária
import pandas as pd

# lê o arquivo csv e armazena-o na variável dados
dados = pd.read_csv('./arquivos/LndbVMRT.csv', encoding='utf-8', sep=',')

# apresenta o nome do ator que ganhou o oscar em 1993
print(dados["Name"][dados["Year"] == 1993])