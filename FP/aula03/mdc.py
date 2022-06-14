def mdc(b,r):
    if r==0:
        x=b
    else:
        x=mdc(b,r)
    return x

a=int(input("a? "))
b=int(input("b? "))
r=a%b
mdc(b,r)