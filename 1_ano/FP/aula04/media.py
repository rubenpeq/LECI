def inputTotal():
    tot = 0.0
    x=0
    while True:
        s = input("valor? ")
        if s == "": break   # if empty line, stop repeating!
        v = float(s)
        tot = tot + v
        x+=1
    return tot, x

def media(tot, x):
    m=tot/x
    return m

tot, x=inputTotal()
print(media(tot,x))