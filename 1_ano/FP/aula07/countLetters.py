import sys

def letterFrequency(fileName):
    file = open(fileName, "r")
    charcount = {} #dictionary to hold char counts
    validchars = "abcdefghijklmnopqrstuvwxyz" # only these counted
    for i in range(97,123): # lowercase range
        c = (chr(i)) # the chars a-z
        charcount[c] = 0 # initialize count
    for line in file:
        words = line.split(" ") # line into words
        for word in words:  # words into chars
            chars = list(word) #convert word into a char list
            for c in chars:  # process chars
                if c.isalpha():  # only alpha allowd
                    c = c.lower()  # every char to lower
                if c in validchars: # if in valid char set
                    charcount[c] += 1           
    file.close
    return charcount

def main():
    if len(sys.argv)<2:
        print("Needs an argument")
        exit(1)
    fName=sys.argv[1]
    print(letterFrequency(fName))

if __name__=="__main__":
    main()