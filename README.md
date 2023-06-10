# DISProj
Project repo for DIS Project

## Prerequisites needed for this WebApp
- Python [&ge; 3.10.6]
- Flask [&ge; 2.3.2]
- Jinja2 [&ge; 3.1.2]
- psycopg2-binary [&ge; 2.9.6]
- pgAdmin4 & postgresQL

## postgress prerequisites
1) Create a server if no server has been created
2) Change the password of the user `postgres` to **postgres**
3) Create Database called DIKUChan where the owner is the `postgres` user

<u>**Alternative**</U>

Set your own parameters in the file `source/dbparameters.py`

## How to run application

navigate to the project folder `~/DISProj`. From here run the following commands:
```console
~/DISProj$ source bin/activate
~/DISProj$ export FLASK_APP=source/main.py
~/DISProj$ flask run
```

This WebAPP should now run with the following code in the terminal:

```apache
* Serving Flask app 'source/main.py'
* Debug mode: off
WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
* Running on http://127.0.0.1:5000
Press CTRL+C to quit
```