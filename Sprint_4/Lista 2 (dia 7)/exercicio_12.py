"""12- Printe somente o nome dos atores que ganharam o Oscar em 1991 e 2016."""

# importa a biblioteca necessária
import pandas as pd

# lê o arquivo csv e armazena-o na variável dados
dados = pd.read_csv('./arquivos/LndbVMRT.csv', encoding='utf-8', sep=',')

# apresenta os atores que ganharam o oscar em 1991 e em 2016
print(dados.loc[(dados["Year"] == 1991) | (dados["Year"] == 2016), ["Name"]])
#print(dados["Name"][(dados["Year"] == 1991) | (dados["Year"] == 2016)])


"""Referência para a utilização do .loc com condicionais:
https://pandas.pydata.org/docs/reference/api/pandas.Series.loc.html#pandas.Series.loc"""