d=float(input('Distancia percorrida em km? '))
t1=float(input('Tempo em segundos da ida? '))
t2=float(input('Tempo em segundos da volta? '))
v1=d/(t1/3600)
v2=d/(t2/3600)
v3=(v2+v1)/2
print('v1= ',"%.1f" % v1,', v2= ',"%.1f" % v2,', Velocidade media = ',"%.1f" % v3)
