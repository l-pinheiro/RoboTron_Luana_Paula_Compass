"""13- Crie mais uma coluna em tempo de execução juntando os dados movie e year."""

# importa a biblioteca necessária
import pandas as pd

# lê o arquivo csv e armazena-o na variável dados
dados = pd.read_csv('./arquivos/LndbVMRT.csv', encoding='utf-8', sep=',')

# concatena os dados da coluna Movie com a coluna Year e coloca-os em uma nova coluna chamada Movie_Year
dados["Movie_Year"] = dados.Movie + " em " + dados.Year.astype(str)

# apresenta os dados com a nova coluna Movie_Year que foi criada em tempo de execução
print(dados)


"""Referência para a concatenação de str e int utilizando .astype():
https://pandas.pydata.org/docs/reference/api/pandas.Series.astype.html#pandas.Series.astype"""