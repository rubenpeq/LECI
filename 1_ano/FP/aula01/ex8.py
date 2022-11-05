PC=float(input('PC? '))
PF=float(input('PF? '))
IMP=float(input('IMP? '))
SPA=float(input('SPA? '))
lucro=-(PF*((100+IMP)/100)+SPA-PC)/((100+IMP)/100)
UV=float(input('Quantas unidades foram vendidas? '))
lucro*=UV
SPA*=UV
IMP*=UV
print("Na venda de %.0f exemplares, a livraria obteve %.2f euros de lucro, foram coletados %.2f euros em impostos e foram reunidos %.2f euros de taxa."%(UV,lucro,IMP,SPA))
