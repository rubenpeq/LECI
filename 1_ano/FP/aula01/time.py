s=int(input('Segundos? '))
h=s//3600
s%=3600
m=s//60
s%=60
print("{:02d}:{:02d}:{:02d}".format(h, m, s))
