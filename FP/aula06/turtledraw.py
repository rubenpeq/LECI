# Exercise 5 on "How to think like a computer scientist", ch. 11.

import turtle

t = turtle.Turtle()

# Use t.up(), t.down() and t.goto(x, y)

# Put your code here
f=open("drawing.txt")
for line in f:
    if line == "UP\n":
        t.up()
    elif line == "DOWN\n":
        t.down()
    else:
        value=line.split()
        t.goto(int(value[0]), int(value[1]))

# wait
turtle.Screen().exitonclick()