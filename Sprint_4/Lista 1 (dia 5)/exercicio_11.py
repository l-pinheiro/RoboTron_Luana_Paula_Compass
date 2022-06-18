"""11- Leia a hora inicial e a hora final de um jogo. A seguir calcule a duração do jogo,
sabendo que o mesmo pode começar em um dia e terminar em outro, tendo uma
duração mínima de 1 hora e máxima de 24 horas."""

# recebe valores inteiros para o horário de inicio e fim do jogo
h_inicio = int(input("Digite a hora inicial do jogo: "))
h_fim = int(input("Digite a hora final do jogo: "))

# condição que verifica as condições de horário e calcula o tempo que o jogo durou
if h_inicio >= h_fim:
    duracao_total = 24 - h_inicio + h_fim
else:
    duracao_total = h_fim - h_inicio

# apresenta a duração total do jogo calculada
print(f'\nO JOGO DUROU {duracao_total} HORAS(S)')