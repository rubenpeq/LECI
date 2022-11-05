def intersects(a1, b1, a2,b2):
    if a1<=b1 and a2<=b2:
        if b2<=a1 or a2>=b1:
            return False
        else:
            return True
    else:
        print("nope")

a1=float(input("a1? "))
b1=float(input("b1? "))
a2=float(input("a2? "))
b2=float(input("b2? "))
i=intersects(a1, b1, a2, b2)
print(i)