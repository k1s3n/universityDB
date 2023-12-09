from flask import Flask, render_template, request
from psycopg2 import connect, DatabaseError, pool
from dotenv import load_dotenv
import os
import logging

from logging.handlers import RotatingFileHandler

# logging to file app.log
log_formatter = logging.Formatter('%(asctime)s [%(levelname)s] %(message)s', datefmt='%Y-%m-%d %H:%M:%S')
log_handler = RotatingFileHandler('app.log', maxBytes=1000000, backupCount=1)
log_handler.setFormatter(log_formatter)

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)
logger.addHandler(log_handler)

load_dotenv()

app = Flask(__name__)

# Set up a connection pool
db_pool = pool.SimpleConnectionPool(
    minconn=1,
    maxconn=10,
    dbname="postgres",
    user="postgres",
    host="localhost",
    password=os.getenv("DB_CONNECT"),
)

def execute_query(query, parameter=None):
    connection = None
    try:
        connection = db_pool.getconn()
        with connection, connection.cursor() as cursor:
            cursor.execute(query, parameter)
            connection.commit()
            if cursor.description:
                return cursor.fetchall()

    except DatabaseError as error:
        logging.error(error)
        raise  # Reraise the exception for higher-level error handling

    finally:
        if connection:
            db_pool.putconn(connection)

@app.route("/")
def hello_world():
    return render_template("index.html")

@app.route("/submit", methods=["POST"])
def submit_answer():
    name = request.form.get("course_id")
    course_id = name.upper()
    query_result = execute_query("SELECT * FROM course WHERE course_id LIKE %s", (f"%{course_id}%",))
    return render_template("index.html", query_result=query_result)
