"""15- Mostre todos os filmes menos o “The Revenant” """

# importa a biblioteca necessária
import pandas as pd

# lê o arquivo csv e armazena-o na variável dados
dados = pd.read_csv('./arquivos/LndbVMRT.csv', encoding='utf-8', sep=',')

# apresenta os filmes diferentes de The Revenant, ou seja, todos os filmes execeto ele
print(dados.loc[dados["Movie"] != "The Revenant", ["Movie"]])