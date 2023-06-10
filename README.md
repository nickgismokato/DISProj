# DISProj
Project repo for DIS Project

## Prerequisites needed for this WebApp
- Python [&ge; 3.10.6]
- Flask [&ge; 2.3.2]
- Jinja2 [&ge; 3.1.2]
- psycopg2-binary [&ge; 2.9.6]
- pgAdmin4 & postgresQL

## How to clone repo

To clone this repository, firstly create or choose a place where this project is gonna be place.

Then go to that directory and run the following code:
```bash
git clone https://github.com/nickgismokato/DISProj.git
```
This will clone the repository and put it into a folder called `DISProj`.

## postgress prerequisites
1) Create a server if no server has been created
2) Change the password of the user `postgres` to **postgres**
3) Create Database called DIKUChan where the owner is the `postgres` user

<ins> **Alternative** </ins>

Set your own parameters in the file `source/dbparameters.py`

## How to run application



navigate to the project folder `~/DISProj`. From here run the following commands:
```bash
source bin/activate
export FLASK_APP=source/main.py
flask run
```

This WebAPP should now run with the following code in the terminal:

```apacheconf
* Serving Flask app 'source/main.py'
* Debug mode: off
WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
* Running on http://127.0.0.1:5000
Press CTRL+C to quit
```