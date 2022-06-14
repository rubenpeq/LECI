import hashlib
import sys

def main():
    if len(sys.argv)<2:
        print("Needs filename as argument!")
    else:
        f=open(sys.argv[1])
        m=f.read()
        h=hashlib.sha1()
        h.update(m.encode("utf-8"))
        print(h.hexdigest())
        f.close
if __name__ == "__main__":
    main()