# coding: utf-8
# This program finds the maximum of two numbers.
# It uses the built-in max function.
# Can you do it with a conditional statement (if / if-else) instead?

x1 = float(input("number? "))
x2 = float(input("number? "))
x3 = float(input("number? "))

# Use a conditional statement instead of max function!
#mx = max(x1, x2)

if (x1>x2) : mx=x1
else : mx=x2
if (mx<x3) : mx=x3

print("Maximum:", mx)

