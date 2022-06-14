# Complete the code to make the HiLo game...

import random

def main():
    # Pick a random number between 1 and 100, inclusive
    secret = random.randrange(1, 101);
    print("Can you guess my secret?")
    # put your code here
    n=-1
    x=0
    while n!=secret:
        n=int(input("secret number? "))
        x+=1
        if n<secret:
            print("Low")
        elif n>secret:
            print("High")
    print("You got the secret number {:d} right after {:d} tries".format(secret,x))


main()
