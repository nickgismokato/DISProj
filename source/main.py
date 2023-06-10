from flask import Flask, render_template, redirect, url_for, request
from flask.views import View
import random as rand

app = Flask(__name__)

from db.db_interface import db_init
from db.dbparameters import *



#Localhost:5000/
@app.route("/", methods=['GET','POST'])
def index():
    db_init()
    return render_template("index.html")

@app.route("/auth/login", methods=['GET','POST'])
def login():
    error = None
    if request.method == 'POST':
        if request.form['username'] != 'admin' or request.form['password'] != 'admin':
            error = 'Invalid Credentials. Please try again.'
        else:
            return redirect(url_for('index'))
    return render_template('auth/login.html', error=error)

@app.route("/map", methods=['GET','POST'])
def map():
    error = None
    return render_template('map.html', error=error)

@app.route("/table", methods=['GET','POST'])
def table():
    userList = [["Nick",90], ["Carl",5], ["Asger",-1]]
    return render_template("table.html", myList = userList)

@app.route("/user/<name>")
def user(name):
    ageUser = rand.randint(0,99)
    return render_template("user.html", user = name, age = ageUser)

if __name__ == "__main__":
    app.debug = True
    app.run(host="localhost", port=5000, debug=True)