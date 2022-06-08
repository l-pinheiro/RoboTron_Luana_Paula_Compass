"""8- Abra o arquivo CSV com pandas e guarde em uma variável de sua escolha
e printe o conteúdo no terminal"""

# importa a biblioteca necessária
import pandas as pd

# lê o arquivo csv e armazena-o na variável dados
dados = pd.read_csv('./arquivos/LndbVMRT.csv', encoding='utf-8', sep=',')

# apresenta o conteúdo do arquivo no terminal
print(dados)