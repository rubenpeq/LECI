from subprocess import Popen
from subprocess import PIPE
import sys

def main():
	proc = Popen("ls -la %s" % sys.argv[1], stdout=PIPE, shell=True)
	return_code = proc.wait()
	output = proc.stdout.read().decode("utf-8")
	for line in iter(proc.stdout.readline, b""):
		print(line.decode("utf-8"), end="")
		if sys.argv[2] in line:
			print("what?")

if __name__=="__main__":
	main()
