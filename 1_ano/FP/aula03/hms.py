def hms2sec(h,m,s):
    s=s+m*60+h*3600
    return s

def sec2hms(s):
    h=s//3600
    s%=3600
    m=s//60
    s%=60
    return h, m, s

h=int(input("h? "))
m=int(input("m? "))
s=int(input("s? "))
s1=hms2sec(h,m,s)
print(s1)
h2,m2,s2=sec2hms(s)
print(h2, m2, s2)