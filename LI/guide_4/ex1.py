import csv
import sys

def main(argv):
    fin = open(argv[1], "r")
    csv_dict = csv.DictReader(fin, delimiter=",")
    x=c=0
    for row in csv_dict:
        if c==0:
            min=max=float(row["value"])
        x+=float(row['value'])
        c+=1
        if float(row["value"])>max:
            max=float(row["value"])
        if float(row["value"])<min:
            min=float(row["value"])
    avg=x/c
    print("Average: %.2f\n" % avg, "Min: %.1f\n" % min,"Max: %.1f" % max)
    fin.close()
if __name__=="__main__":
    main(sys.argv)