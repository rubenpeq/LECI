import os
import sys
from Crypto.Cipher import ARC4

def main():
	if len(sys.argv)<3:
		print("Needs filename and key as arguments!")
	else:
		key=sys.argv[2]
		fin=open(sys.argv[1], "rb")
		m=fin.read()
		cipher = ARC4.new(key)
		cryptogram = cipher.encrypt(m)
		os.write(1, cryptogram ) # o 1 representa o descritor do stdout
		print()
		fin.close
if __name__ == "__main__":
    main()
