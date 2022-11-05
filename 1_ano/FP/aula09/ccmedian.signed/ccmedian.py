"""
Complete a função para devolver a mediana da lista de valores lst.
A função não deve modificar a lista.
Se a lista tiver um número ímpar de valores,
a mediana é o valor no meio da lista ordenada.
Se a lista tiver um número par de valores,
a mediana é a média dos dois valores no meio da lista ordenada.
"""

def median(lst):
   assert len(lst) > 0
   mlst=sorted(lst)
   if len(lst)%2!=0:
      m=mlst[len(lst)//2]
   else:
      m=(mlst[int(len(lst)/2)]+mlst[int(len(lst)/2)-1])/2
   return m

def check(lst):
   backup = lst.copy()
   m = median(lst)
   return m, lst

