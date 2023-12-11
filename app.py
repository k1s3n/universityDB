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

@app.route("/register", methods=["POST", "GET"])
def register_student():
    if request.method == "POST":
        student_id = request.form.get("student_id")
        course_id = request.form.get("course_id")
        
        if check_existing_registration(course_id, student_id): 
            return render_template("index.html", insert=False, error_message="Studenten är redan registrerad")
              
        query = "INSERT INTO register(course_id, student_id) VALUES (%s, %s) RETURNING *"
        values = (course_id.upper(), student_id)
        
        result = execute_query(query, values)
        
        try:
            result = execute_query(query, values)

            if result is True:
                return render_template("index.html", insert=True, student_id=student_id)
            else:
                is_waiting_list = is_student_in_waiting_list(course_id, student_id)
                if is_waiting_list:
                    return render_template("index.html", insert=False, error_message="Studenten är redan i väntelistan.")
                else:
                    return render_template("index.html", insert=False, error_message="antingen fel student_id eller course_id")

        except Exception as e:
            # Handle database or other exceptions
            return render_template("index.html", insert=False, error_message=f"An error occurred: {str(e)}")
    
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
        return render_template("index.html",error=error)

@app.route("/delete_student", methods=["POST", "GET"])
def delete_student_from_course():
    if request.method == 'POST':
        student = request.form.get("student")
        course = request.form.get("course")
        query = """
        DELETE FROM register
        USING course
        WHERE register.student_id = %s
        AND register.course_id = course.course_id
        AND course.name = %s
        """
        value = (student,course.title())
        result = execute_query(query,value)
        error = "Antingen är studenten redan borttagen eller namnet på kursen fel"
        
        if result is True:
            return render_template("index.html", delete=True, student=student,course=course)
        else:
            return render_template("index.html", delete=False, delete_message=error)
        
    return render_template("index.html", insert=False)