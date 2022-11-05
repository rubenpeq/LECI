def max2(x1, x2):
    if x1>x2: y=x1
    else: y=x2
    return y
def max3(x1, x2, x3):
    if max2(x1, x2)>x3: y=max2(x1, x2)
    else: y=x3
    return y

x1=float(input("x1?"))
x2=float(input("x2?"))
x3=float(input("x3?"))
print(max3(x1,x2,x3))