"""14- Printe todos os nomes e as idades dos atores que ganharam o oscar de 1987 até 1999."""

# importa a biblioteca necessária
import pandas as pd

# lê o arquivo csv e armazena-o na variável dados
dados = pd.read_csv('./arquivos/LndbVMRT.csv', encoding='utf-8', sep=',')

# apresenta todos os nomes e idades dos atores que ganharam o oscar entre 1987 e 1999
print(dados.loc[(dados["Year"] >= 1987) & (dados["Year"] <= 1999), ["Name", "Age"]])