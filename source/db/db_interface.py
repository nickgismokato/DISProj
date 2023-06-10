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
        print("Connected")
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

        values = (municipalityname)

        cur.execute(content, [values])

        conn.commit()

    except Exception as error:
        return 

    finally:
        if conn != None:
            cur.close()
            conn.close()

#login a user, arguments: username = string, name of user. password = string, user password
def login(username, password):
    return

#Register a user, arguments: username = string, name of user. password = string, user password
def register(username, password):
    today = date.today()
    conn = None
    conf = params()

    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch init script
        with open('source/db/register.sql','r') as sql_file:
            content = sql_file.read()

        values = (username, password, today, True)

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

def getmunicipality(name):
    return

#Subscribes a user to a municipality, arguments: uesrname = string, name of user. municipalityname = string, name of municipality
def subscribe(username, municipalityname):
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
        SELECT uid
        FROM users
        WHERE username = %s
        ''', [username])
        userpk = cur.fetchone()

        cur.execute('''
        SELECT kuid
        FROM kommune
        WHERE name = %s
        ''', [municipalityname])
        minicipalitypk = cur.fetchone()


        values = (minicipalitypk[0], userpk[0])

        cur.execute(content, values)

        conn.commit()

    except Exception as error:
        print(error)

    finally:
        if conn != None:
            cur.close()
            conn.close()
