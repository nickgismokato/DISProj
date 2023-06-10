import psycopg2
from datetime import date
from config import config

#Initialize database
def db_init():
    conn = None
    conf = config()

    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch init script
        with open('Initdatabase.sql','r') as ini_file:
            content = ini_file.read()

        cur.execute(content)

        conn.commit()

    except Exception as error:
        print(error)

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
    conf = config()

    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch init script
        with open('register.sql','r') as register_file:
            content = register_file.read()

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
    conf = config()

    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch init script
        with open('deleteuser.sql','r') as delete_file:
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

#Create a post, arguments: username = string, name of user. municipalityname = string, name of municipality. text = string, content of post
def createpost(username, municipalityname, text):
    today = date.today()
    conn = None
    conf = config()

    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch init script
        with open('createpost.sql','r') as post_file:
            content = post_file.read()

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


        values = (text, today, minicipalitypk[0], userpk[0])

        cur.execute(content, values)

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
    conf = config()

    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch init script
        with open('deletepost.sql','r') as delete_file:
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

#Create a reply, arguments: username = string, name of user. postid = integer, id of post. text = string, content of reply
def createreply(username, postid, text):
    today = date.today()
    conn = None
    conf = config()

    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch init script
        with open('createreply.sql','r') as post_file:
            content = post_file.read()

        cur.execute('''
        SELECT uid
        FROM users
        WHERE username = %s
        ''', [username])
        userpk = cur.fetchone()



        values = (text, today, userpk[0], postid)

        cur.execute(content, values)

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
    today = date.today()
    conn = None
    conf = config()

    try:
        #connection
        conn = psycopg2.connect(conf)

        #cursor
        cur = conn.cursor()

        #fetch init script
        with open('subscribers.sql','r') as post_file:
            content = post_file.read()

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
