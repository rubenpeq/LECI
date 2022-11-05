def leibnizPi4(n):
    i=0
    x=0
    while n>0:
        x+=((-1)**i)/(2*i+1)
        i+=1
        n-=1
    return x

n=int(input("n?"))
print(leibnizPi4(n))