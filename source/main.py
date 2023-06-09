from flask import Flask, render_template, redirect, url_for, request
from flask.views import View
import random as rand

app = Flask(__name__)



#Localhost:8080/
@app.route("/")
def index():
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

@app.route("/user/<name>")
def user(name):
    ageUser = rand.randint(0,99)
    return render_template("user.html", user = name, age = ageUser)

@app.route("/map", methods=['GET', 'POST'])
def root():
    return render_template('map.html')

if __name__ == "__main__":
    app.debug = True
    app.run(host="localhost", port=8080, debug=True)