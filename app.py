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
def check_existing_registration(course_id, student_id):
    query = "SELECT * FROM register WHERE course_id = %s AND student_id = %s"
    values = (course_id.upper(), student_id)

    result = execute_query(query, values)

    return bool(result)

def is_student_in_waiting_list(course_id, student_id):
    query = "SELECT * FROM waiting_list WHERE course_id = %s AND student_id = %s"
    values = (course_id, student_id)
    
    result = execute_query(query, values)

    return bool(result)

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
                 return cursor.rowcount > 0
             
    except DatabaseError as error:
        logging.error(error)
        return str(error)
    finally:
        if connection:
            db_pool.putconn(connection)

@app.route("/")
def hello_world():
    return render_template("index.html")


@app.route("/submit", methods=["POST"])
def submit_answer():
    name = request.form.get("course_id")
    course_id = name.title()
    query_result = execute_query("SELECT * FROM course WHERE name LIKE %s", (f"%{course_id}%",),fetch_result=True)
    return render_template("index.html", query_result=query_result)

#Här undviker vi SQL-injektionen nämnd i funktionen under genom att andvända
#"parameterized queries" där vi passerar värdet som användaren söker efter via "value" variabeln och %s.

@app.route("/check", methods=["POST"])
def registered_course_student():
    student = request.form.get("student_id")
    error = "hittade inte studenten"
    query = "SELECT * FROM student WHERE student_id = %s"
    value = (student.title(),)
    result = execute_query(query,value,fetch_result=True)
    
    if result:
        return render_template("index.html", result=result)
    else:
        return render_template("index.html",error=error)
    

    #I Följande del kod kan man med hjälp av t.ex. "1' OR '1' = '1' --" 
    # inmatning få ut informationen om ALLA studenter som finns registrerade vilket skulle innebära en säkerhetsrisk. 
@app.route("/check_unsafe", methods=["POST"])
def registered_course_student123():
    student = request.form.get("student_id")
    error = "hittade inte studenten"
    query = f"SELECT * FROM student WHERE student_id='{student}'"
    value = (student.title(),)
    result = execute_query(query,value,fetch_result=True)
    
    if result:
        return render_template("index.html", result=result)
    else:
        return render_template("index.html",error=error)    