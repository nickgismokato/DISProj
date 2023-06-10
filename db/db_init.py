import psycopg2
from datetime import date


def db_init():
    conn = None

    try:
        #connection
        conn = psycopg2.connect("dbname=DIKUChan user=postgres password=postgres")

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



def login(username, password):
    return


def register(username, password):
    today = date.today()
    conn = None

    try:
        #connection
        conn = psycopg2.connect("dbname=dikuchan user=postgres password=postgres")

        #cursor
        cur = conn.cursor()

        #fetch init script
        with open('register.sql','r') as ini_file:
            content = ini_file.read()

        values = (username, password, today, True)

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