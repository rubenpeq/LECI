import hashlib
import sys

def main():
    if len(sys.argv)<2:
        print("Needs filename as argument!")
    else:
        h=hashlib.sha1()
        with open(sys.argv[1],"rb") as f:
            while True:
                buffer=f.read(512)
                if len(buffer)==0:
                    break
                h.update(buffer)
            print(h.hexdigest())
if __name__ == "__main__":
    main()