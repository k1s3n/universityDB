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

def execute_query(query, parameter=None, fetch_result=False):
    connection = None
    try:
        connection = db_pool.getconn()
        with connection, connection.cursor() as cursor:
            cursor.execute(query, parameter)
            connection.commit()
            if fetch_result:
                return cursor.fetchall()
            else:
                return True

    except DatabaseError as error:
        logging.error(error)
        return str(error)
    finally:
        if connection:
            db_pool.putconn(connection)

@app.route("/")
def hello_world():
    return render_template("index.html")

@app.route("/register", methods=["POST", "GET"])
def register_student():
    if request.method == "POST":
        student_id = request.form.get("student_id")
        course_id = request.form.get("course_id")
        
        query = "INSERT INTO register(course_id, student_id) VALUES (%s, %s)"
        values = (course_id.upper(), student_id)
        
        result = execute_query(query, values)
        error = "antingen fel student_id eller course_id"
        
        if result is True:
            return render_template("index.html", insert=True, student_id=student_id)
        else:
            return render_template("index.html", insert=False, error_message=error)
    
    return render_template("index.html", insert=False, error_message=None)

@app.route("/submit", methods=["POST"])
def submit_answer():
    name = request.form.get("course_id")
    course_id = name
    query_result = execute_query("SELECT * FROM course WHERE name LIKE %s", (f"%{course_id}%",),fetch_result=True)
    return render_template("index.html", query_result=query_result)


@app.route("/check", methods=["POST"])
def registered_course_student():
    student = request.form.get("student_id")
    error = "hittade inte studenten"
    query = "SELECT * FROM registrations WHERE student = %s"
    value = (student.title(),)
    result = execute_query(query,value,fetch_result=True)
    
    if result:
        return render_template("index.html", result=result)
    else:
        return render_template("index.html", error=error)