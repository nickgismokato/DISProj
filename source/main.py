from flask import Flask, render_template
import random as rand

app = Flask(__name__)

#Localhost:8080/
@app.route("/")
def index():
    return render_template("index.html")

@app.route("/user/<name>")
def user(name):
    ageUser = rand.randint(0,99)
    return render_template("user.html", user = name, age = ageUser)

@app.route("/map", methods=['GET', 'POST'])
def root():
    return render_template('map.html')

if __name__ == "__main__":
    app.run(host="localhost", port=8080, debug=True)