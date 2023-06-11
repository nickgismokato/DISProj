from flask import Flask, render_template, redirect, url_for, request
from flask.views import View
import random as rand
from db.db_interface import *
from db.dbparameters import *
from data.Muni import *
from flask_login import LoginManager

app = Flask(__name__)

class user:
    name = None
    UID = None
    loggedIn = False
    UserSubs = []
    def __init__(self) -> None:
        None
    def loggingIn(self, user, uid):
        self.name = user
        self.UID = uid
        self.loggedIn = True
        self.UserSubs = getSubs(self.UID)
    def loggingOut(self):
        self.loggedIn = False
        self.name = None
        self.UID = None
        self.UserSubs = []
    def updateSubs(self):
        self.UserSubs = getSubs(self.UID)
    def printStatus(self):
        print(self.loggedIn)
        print(self.name)
        print(self.UID)

initialized = False
userClass = user()

def getSubs(uid):
    return getsubscribed(uid)

def listYouCanSubscribeTo():
    TotalList = getmunicipalities()
    returnList = sorted(list(set(TotalList)-set(userClass.UserSubs)))
    return returnList
def userSubscribe(muniName):
    subscribeUser(userClass.UID, muniName)
    userClass.updateSubs()
def userUnsubscribe(muniName):
    unsubscribeUser(userClass.UID, muniName)
    userClass.updateSubs()

#Initialize all the necesary stuff from the beginning
def initStart():
    db_init()
    komm = tsvClass()
    for KOMS in komm.muni:
        createmunicipality(KOMS[0])
    db_demo()
    return None

def logOut():
    updateStatus(userClass.name,False)
    userClass.loggingOut()
    

#Localhost:5000/
@app.route("/", methods=['GET','POST'])
def index():
    global initialized
    if not initialized:
        initStart()
    initialized = True
    return render_template("index.html")

@app.route('/threads', methods = ['GET', 'POST'])
def threads():
    # Assuming you have a database connection and a cursor object
    cursor.execute("SELECT * FROM threads") #OR SOME OTHER QUERY
    threads = cursor.fetchall()
    municipality = "Your Municipality"  # Replace with the actual municipality value
    return render_template('threads.html', threads=threads, municipality=municipality)

@app.route("/auth/login", methods=['GET','POST'])
def login():
    if userClass.loggedIn == False:
        error = None
        if request.method == 'POST':
            UID = loginUser(request.form['username'], request.form['password'])
            if UID == -1:
                error = 'Invalid Credentials. Please try again.'
            else:
                userClass.loggingIn(request.form['username'], UID)
                userClass.printStatus()
                return redirect(url_for('index'))
        return render_template('auth/login.html', error=error)
    else:
        return redirect(url_for('profile'))

# might need to be removed
@app.route("/logout", methods=['GET','POST'])
def logout():
    error = None
    if userClass.loggedIn == True:
        logOut()
        print("Logging out")
    else:
        return redirect(url_for('login'))
    return redirect(url_for('profile'))

@app.route("/subscribe", methods=['GET','POST'])
def subscribe():
    if request.method == "POST":
        print(request.form['Subscribe'])
        userSubscribe(request.form['Subscribe'])
        userClass.updateSubs()
    return redirect('profile')

@app.route("/unsubscribe", methods=['GET','POST'])
def unsubscribe():
    if request.method == "POST":
        print(request.form['Unsubscribe'])
        userUnsubscribe(request.form['Unsubscribe'])
        userClass.updateSubs()
    return redirect('profile')

@app.route("/submitpost", methods=['GET','POST'])
def submitpost():
    if request.method == "POST":
        print("SUBMITPOST:")
        print(request.form['komname'])
        print(request.form['Post'])
        createpost(userClass.UID, request.form['komname'], request.form['Post'])
        return redirect(request.referrer)

@app.route("/auth/register", methods = ['GET','POST'])
def register():
    error = None
    if request.method == 'POST':
        error = registerUser(request.form['username'], request.form['password'])
        if error != None:
            None
        else:
            return redirect(url_for('index'))
    return render_template("auth/register.html", error = error)

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

@app.route('/test', methods=['GET'])
def dropdown():
    colours = ['Red', 'Blue', 'Black', 'Orange']
    return render_template('test.html', colours=colours)

@app.route('/profile', methods=['GET','POST'])
def profile():
    if userClass.loggedIn == True:
        listYouCanSubscribeTo()
        print(userClass.UserSubs)
        if userClass.name == None:
            nameUser = "Default"
        else:
            nameUser = userClass.name  
        return render_template('profile.html', nameUser = nameUser, UserSubs = userClass.UserSubs, myList = listYouCanSubscribeTo())
    else:
        return redirect(url_for('login'))

@app.route('/kommune/<name>')
def kommune(name):
    if userClass.loggedIn == True:
        cancer = fetchpost(name)
        return render_template("kommune.html", name = name, cList = cancer)
    else: 
        return redirect(url_for('login'))

@app.route('/kommune/<name1>/<name2>', methods=['GET','POST'])
def getToPost(name1, name2):
    if userClass.loggedIn == True:
        strname2 = str(name2)
        return render_template("post.html", name1 = name1, name2 = strname2)
    else: 
        return redirect(url_for('login'))

@app.route('/deleteuser',  methods=['GET','POST'])
def deleteUser():
    if userClass.loggedIn == True:
        deleteuser(userClass.name)
        userClass.loggingOut()
    return render_template('index.html')



if __name__ == "__main__":
    app.debug = True
    app.run(host="localhost", port=5000, debug=True)