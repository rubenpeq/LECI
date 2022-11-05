import sys

def fibonacci(n):
	if n<0:
		return([])
	elif n==0:
		return([0])
	else:
		lst=[0,1]
		for i in range(2,n):
			lst.append(lst[i-1]+lst[i-2])
		return lst

def main():
	if len(sys.argv)!=2:
		print("Enter number as an argument")
	else:
		n=int(sys.argv[1])
		print(fibonacci(n))
if __name__=="__main__":
	main()
