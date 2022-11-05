def tax(r):
    if r<=1000:
        x=0.1*r
    elif r<=2000:
        x=0.2*r -100
    else:
        x=0.3*r-300
    return x

r=float(input("r?"))
print("%.2f" % tax(r))