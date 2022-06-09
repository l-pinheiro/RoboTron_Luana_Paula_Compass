"""9- Usando Pandas, leia apenas os dados da coluna Age do CSV."""

# importa a biblioteca necessária
import pandas as pd

# lê apenas a coluna Age do arquivo csv e armazena na variável dados_age
dados_idade = pd.read_csv('./arquivos/LndbVMRT.csv', encoding='utf-8', sep=',', usecols=["Age"])

# apresenta os dados da coluna Age
print(dados_idade)