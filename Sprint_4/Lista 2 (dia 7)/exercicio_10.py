"""10- Usando Pandas, procure por um dado específico (da sua escolha) e
printe somente o mesmo utilizando o CSV."""

# importa a biblioteca necessária
import pandas as pd

# lê o arquivo csv e armazena-o na variável dados
dados = pd.read_csv('./arquivos/LndbVMRT.csv', encoding='utf-8', sep=',')

# apresenta os dados apenas do filme Forrest Gump
print(dados[dados["Movie"] == "Forrest Gump"])