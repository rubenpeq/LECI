import cherrypy
import os
import requests
import json
import sqlite3
from PIL import Image

class Cromos(object):
    @cherrypy.expose
    def id(self):
        ...

    @cherrypy.expose
    def name(self):
        ...
    

class Users(object):   
    @cherrypy.expose
    def auth(self, username, password):
        with sqlite3.connect("database.db") as c:
            user_db = c.execute("SELECT username FROM users WHERE username='%s'" % username)    # Get username from db, if exists
            pass_db = c.execute("SELECT password FROM users WHERE username='%s'" % username)    # Get password of username from db, if exists
            if user_db.fetchone() == None:
                payload = {
                        "authentication": "FAILED",
                        "token": None,
                        "error": "Username doesn't exist"
                    }
                #requests.post('http://127.0.0.1:10012/index', json= payload)
                return json.dumps(payload)
            elif password != ' '.join(pass_db.fetchone()):  # verify password (''.join() to convert the tuple from .fetchone() to string)
                payload = {
                        "authentication": "FAILED",
                        "token": None,
                        "error": "Wrong Password"
                    }
                #requests.post('http://127.0.0.1:10012/index', json= payload)
                return json.dumps(payload)
            else:
                payload = {
                        "authentication": "OK",
                        "token": "x", ### por acabar
                        "error": None
                    }
                #requests.post('http://127.0.0.1:10012/index', json= payload)
                return json.dumps(payload)

    @cherrypy.expose
    def create(self, username, password):
        with sqlite3.connect("database.db") as c:
            user_db = c.execute("SELECT username FROM users WHERE username='%s'" % username)
            if user_db.fetchone() != None:  # verify if username already in use
                return json.dumps({
                                    "create": "FAILED",
                                    "error": "Username already exists"
                                })
            else:
                c.execute("INSERT INTO users VALUES('%s','%s')" % (username, password)) # Insert new user data into db
                return json.dumps({
                                    "create": "OK",
                                    "error": None
                                })
    @cherrypy.expose
    def valid(self, token): # verify if token is still valid
        ...

class Root(object):
    def __init__(self):
        self.users = Users()
        self.cromos = Cromos()

    @cherrypy.expose
    def index(self):
        cherrypy.response.headers["Content-Type"] = "text/html; charset=uft-8"
        return open("html/index.html")
    
    
    @cherrypy.expose
    def newUser(self):
        cherrypy.response.headers["Content-Type"] = "text/html; charset=uft-8"
        return open("html/NovaConta.html")
    
    @cherrypy.expose
    def about(self):
        cherrypy.response.headers["Content-Type"] = "text/html; charset=uft-8"
        return open("html/About.html")

def createDb():
    with sqlite3.connect("database.db") as db:  # Create database.db file
        db.execute("CREATE TABLE users(username TEXT, password TEXT)")  # Create users TABLE
        db.execute("CREATE TABLE images(id INTEGER PRIMARY KEY AUTOINCREMENT, date TEXT, comment TEXT)")  # Create images TABLE

def cleanUsersData():
    with sqlite3.connect("database.db") as db:
        db.execute("DELETE FROM users")  # delete all rows from users table

def cleanImagesData():
    with sqlite3.connect("database.db") as db:
        db.execute("DELETE FROM images")  # delete all rows from images table

def mywatermark(imgName, watermarkName):    # fazer watermark --> nao utilizado por trabalho incomplete
    img = Image.open(imgName);
    watermark = Image.open(watermarkName)

    width, height = img.size
    width = width/2
    height = height/2
    watermarkSize = (int(width), int(height))

    watermark.thumbnail(watermarkSize)

    data = watermark.getdata()

    newData = []
    for item in data:
        newData.append((item[0], item[1], item[2], int(item[3]*0.5)))

    watermark.putdata(newData)

    transparent = Image.new('RGBA', img.size, (0,0,0,0))
    transparent.paste(img, (0,0))
    transparent.paste(watermark, (int(width/2),int(height/2)), mask=watermark)
    transparent.show()

def main():
    baseDir = os.path.dirname(os.path.abspath(__file__))    # app.py file path
    cherrypy.config.update({'server.socket_port': 10012,})  # server socket Grupo 12

    config = {                                      # folder paths config
        "/": { "tools.staticdir.root": baseDir },

        "/html": { "tools.staticdir.on": True,
        "tools.staticdir.dir": "html" },

        "/js": { "tools.staticdir.on": True,
        "tools.staticdir.dir": "js" },

        "/css": { "tools.staticdir.on": True,
        "tools.staticdir.dir": "css" },

        "/images": { "tools.staticdir.on": True,
        "tools.staticdir.dir": "images" },
        }

    if not os.path.exists("database.db"):  # if database.db does not exist, create file.
        createDb()
    #cleanUsersData()     # uncomment to clean user database
    #cleanImagesData()    #uncomment to clean images database
    cherrypy.quickstart(Root(), "/", config)
        
if __name__ == "__main__":
    main()