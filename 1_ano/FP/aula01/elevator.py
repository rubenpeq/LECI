utDia=int(input('Utilizações do elevador por utilizador por dia?'))
v=int(input('Velocidade do elevador?(m/s)'))
distDia= utDia*3*2*3+utDia*2*2*3+utDia*2*3
distAno=365*distDia
print("O elevador percorre %.2f km por ano."%(distAno/1000))
timeAno=distAno/v
print(timeAno)
