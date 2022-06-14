from Crypto.Hash import SHA256
import sys

def main():
    if len(sys.argv)<2:
        print("Needs filename as argument!")
    else:
        f=open(sys.argv[1])
        m=f.read()
        h=SHA256.new()
        h.update(m.encode("utf-8"))
        print(h.hexdigest())
        f.close
if __name__ == "__main__":
    main()
