import bisect

def binarySearch(lst):
    return bisect.bisect_left(lst, input())-bisect.bisect_left(lst, input())

def main():
    f=open("aula09/wordlist.txt", "r")
    l=f.read()
    lst=l.split()
    print(binarySearch(lst))
    f.close()
if __name__=="__main__":
    main()