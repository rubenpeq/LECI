import sqlite3 as sql
import sys
def main(argv):
    db = sql.connect(argv[1]) # estabelecer ligação à BD
    result = db.execute("SELECT firstname FROM contacts")
    i=0
    while True:
        row = result.fetchone()
        if not row:
            break
        print(row)
        i+=1
    print(i, "contactos")
    db.close() # terminar ligação

if __name__ == "__main__":
    main(sys.argv)