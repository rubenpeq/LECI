def inputFloatList():
    lst=[]
    while True:
        s = input("valor? ")
        if s == "": break   # if empty line, stop repeating!
        lst.append(float(s))
    return(lst)

def countLower(lst, v):
    n=0
    c=0
    while n<len(lst):
        if lst[n]<v:
            c+=1
        n+=1
    return(c)

def minmax(lst):
    n=1
    min=lst[0]
    max=lst[0]
    while n<len(lst):
        if lst[n]<min: min=lst[n]
        elif lst[n]>max: max=lst[n]
        n+=1
    return min, max

l=inputFloatList()
min, max=minmax(l)
print(min, max)
m=(min+max)/2
print("Há {:d} valores abaixo de {:.2f}".format(countLower(l, m), m))