def fibonacci(n):
    f0=0
    f1=1
    fn=0
    if n==0:
        return 0
    elif n==1:
        return 1
    else:
        while n>1:
            fn=f0+f1
            f0=f1
            f1=fn
            n-=1
    return fn

n=int(input("n? "))
print(fibonacci(n))