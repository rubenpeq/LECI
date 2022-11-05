def factorial(n):
   assert isinstance(n, int), "n should be an int"
   assert n >= 0            , "n should not be negative"
   # Complete aqui
   x=1
   y=1
   while (n>0):
      x*=y
      y+=1
      n-=1
   return x