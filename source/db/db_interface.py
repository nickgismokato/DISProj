import psycopg2
from datetime import date
from db.dbparameters import params

#Initialize database
def db_init():
    conn = None
    conf = params()
    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch init script
        with open('source/db/Initdatabase.sql','r') as sql_file:
            content = sql_file.read()
        cur.execute(content)
        conn.commit()

    except Exception as error:
        print(error)

    finally:
        if conn != None:
            cur.close()
            conn.close()


def db_demo():
    conn = None
    conf = params()
    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch init script
        with open('source/db/demo.sql','r') as sql_file:
            contentdemo = sql_file.read()
        cur.execute(contentdemo)
        conn.commit()

    except Exception as error:
        print(error)

    finally:
        if conn != None:
            cur.close()
            conn.close()

#Create municipality, arguments: municipalityname = string, name of municipality
def createmunicipality(municipalityname):
    conn = None
    conf = params()

    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch init script
        with open('source/db/createmunicipality.sql','r') as sql_file:
            content = sql_file.read()

        values = (str(municipalityname).strip())
        cur.execute(content, [values])

        conn.commit()

    except Exception as error:
        None

    finally:
        if conn != None:
            cur.close()
            conn.close()
        return

#login a user, arguments: username = string, name of user. password = string, user password
def loginUser(username, password):
    conn = None
    conf = params()
    uid = -1

    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch script
        with open('source/db/login.sql','r') as sql_file:
            content = sql_file.read()

        values = (username, password)

        cur.execute(content, values)

        #fetch the uid of the logged in user
        uid = cur.fetchone()[0]
        conn.commit()

    except Exception as error:
        if conn != None:
            cur.close()
            conn.close()
        return uid

    finally:
        if conn != None:
            cur.close()
            conn.close()
        updateStatus(username, True)
        return uid

#Register a user, arguments: username = string, name of user. password = string, user password
def registerUser(username, password):
    today = date.today()
    conn = None
    conf = params()
    errorRet = None
    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch init script
        with open('source/db/register.sql','r') as sql_file:
            content = sql_file.read()

        values = (username, password, today, False)

        cur.execute(content, values)

        conn.commit()

    except Exception as error:
        errorRet = error
        print(error)

    finally:
        if conn != None:
            cur.close()
            conn.close()
        #print(errorRet)
        return errorRet

def updateStatus(username, val):
    conn = None
    conf = params()

    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch init script
        with open('source/db/updatestatus.sql','r') as delete_file:
            content = delete_file.read()

        values = (val, username)

        cur.execute(content, values)

        conn.commit()

    except Exception as error:
        print(error)

    finally:
        if conn != None:
            cur.close()
            conn.close()

#Delete a user, arguments: username = string, name of user
def deleteuser(username):
    conn = None
    conf = params()

    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch init script
        with open('source/db/deleteuser.sql','r') as delete_file:
            content = delete_file.read()

        values = (username)

        cur.execute(content, [values])

        conn.commit()

    except Exception as error:
        print(error)

    finally:
        if conn != None:
            cur.close()
            conn.close()

#Create a post, arguments: userid = integer, id of user. municipalityname = string, name of municipality. text = string, content of post
def createpost(userid, municipalityname, text):
    today = date.today()
    conn = None
    conf = params()

    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch init script
        with open('source/db/createpost.sql','r') as sql_file:
            content = sql_file.read()

        cur.execute('''
        SELECT kuid
        FROM kommune
        WHERE name = %s
        ''', [municipalityname])
        minicipalitypk = cur.fetchone()


        values = (text, today, minicipalitypk[0], userid)

        cur.execute(content, values)

        conn.commit()

    except Exception as error:
        print(error)

    finally:
        if conn != None:
            cur.close()
            conn.close()

#Edit a post, arugments: userid = integer, id of user. postid = integer, id of post. text = string, content 
#must call the text in double quotations and single quotes inside "'text'" 
def editpost(userid, postid, text):
    conn = None
    conf = params()

    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch script
        with open('source/db/editpost.sql','r') as sql_file:
            content = sql_file.read()
        values = (text, postid, userid)
        cur.execute(content % values)

        conn.commit()

    except Exception as error:
        print(error)

    finally:
        if conn != None:
            cur.close()
            conn.close()

#Delete a post, arguments: postid = integer, id of post
def deletepost(postid):
    conn = None
    conf = params()

    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch init script
        with open('source/db/deletepost.sql','r') as delete_file:
            content = delete_file.read()

        values = (postid)

        cur.execute(content, [values])

        conn.commit()

    except Exception as error:
        print(error)

    finally:
        if conn != None:
            cur.close()
            conn.close()

def fetchpost(municipalityname):
    conn = None
    conf = params()
    posts = []

    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch init script
        with open('source/db/fetchpost.sql','r') as delete_file:
            content = delete_file.read()

        values = (municipalityname)

        cur.execute(content, [values])
        posts = cur.fetchall()
        conn.commit()

    except Exception as error:
        print(error)

    finally:
        if conn != None:
            cur.close()
            conn.close()
        return posts

#Create a reply, arguments: userid = int, id of user. postid = integer, id of post. text = string, content of reply
def createreply(userid, postid, text):
    today = date.today()
    conn = None
    conf = params()

    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch init script
        with open('source/db/createreply.sql','r') as sql_file:
            content = sql_file.read()

        values = (text, today, userid, postid)

        cur.execute(content, values)

        conn.commit()

    except Exception as error:
        print(error)

    finally:
        if conn != None:
            cur.close()
            conn.close()

#Edit a post, arugments: userid = integer, id of user. replyid = integer, id of post. text = string, content 
#must call the text in double quotations and single quotes inside "'text'" 
def editreply(userid, replyid, text):
    conn = None
    conf = params()

    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch script
        with open('source/db/editreply.sql','r') as sql_file:
            content = sql_file.read()
        values = (text, replyid, userid)
        cur.execute(content % values)

        conn.commit()

    except Exception as error:
        print(error)

    finally:
        if conn != None:
            cur.close()
            conn.close()

#Delete a reply, arguments: replyid = integer, id of reply
def deletereply(replyid):
    conn = None
    conf = params()

    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch init script
        with open('source/db/deletereply.sql','r') as sql_file:
            content = sql_file.read()

        values = (replyid)

        cur.execute(content, [values])

        conn.commit()

    except Exception as error:
        print(error)

    finally:
        if conn != None:
            cur.close()
            conn.close()

def fetchreply(pid):
    conn = None
    conf = params()
    replies = []

    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch init script
        with open('source/db/fetchpost.sql','r') as delete_file:
            content = delete_file.read()

        values = (pid)

        cur.execute(content, [values])
        replies = cur.fetchall()
        conn.commit()

    except Exception as error:
        print(error)

    finally:
        if conn != None:
            cur.close()
            conn.close()
        return replies

def getmunicipalities():
    conn = None
    conf = params()
    kommuner = []

    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch script
        with open('source/db/getmuni.sql','r') as sql_file:
            content = sql_file.read()


        cur.execute(content)

        #fetch all municipalities
        kommuner = cur.fetchall()
        conn.commit()

    except Exception as error:
        None

    finally:
        if conn != None:
            cur.close()
            conn.close()
        return kommuner

#Subscribes a user to a municipality, arguments: uesrname = string, name of user. municipalityname = string, name of municipality
def subscribeUser(uid, municipalityname):
    conn = None
    conf = params()

    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch init script
        with open('source/db/subscribers.sql','r') as sql_file:
            content = sql_file.read()

        cur.execute('''
        SELECT kuid
        FROM kommune
        WHERE name = %s
        ''', [municipalityname])
        minicipalitypk = cur.fetchone()


        values = (minicipalitypk[0], uid)

        cur.execute(content, values)

        conn.commit()

    except Exception as error:
        print(error)

    finally:
        if conn != None:
            cur.close()
            conn.close()

def getsubscribed(uid):
    conn = None
    conf = params()
    kommuner = []

    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch init script
        with open('source/db/getsubscribed.sql','r') as sql_file:
            content = sql_file.read()


        values = (uid)

        cur.execute(content, [values])
        kommuner = cur.fetchall()
        conn.commit()

    except Exception as error:
        print(error)
        None

    finally:
        if conn != None:
            cur.close()
            conn.close()
        return kommuner

def unsubscribe(uid, municipalityname):
    conn = None
    conf = params()

    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch init script
        with open('source/db/subscribers.sql','r') as sql_file:
            content = sql_file.read()

        values = (municipalityname, uid)

        cur.execute(content, values)

        conn.commit()

    except Exception as error:
        print(error)

    finally:
        if conn != None:
            cur.close()
            conn.close()
