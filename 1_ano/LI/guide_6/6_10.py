import sqlite3 as sql
import sys
def main(argv):
    db = sql.connect(argv[1]) # estabelecer ligação à BD
    result = db.execute("SELECT * FROM contacts")
    rows = result.fetchall()
    for row in rows:
        print(row)
    db.close() # terminar ligação

if __name__ == "__main__":
    main(sys.argv)