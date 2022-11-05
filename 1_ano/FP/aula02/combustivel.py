x=float(input("Liters?"))
if(x<=40) : price=x*1.4
elif(x>40):price=x*1.4*0.9
print("You will have to pay %.2f" % price)