from flask import Flask, render_template, request
from psycopg2 import connect, DatabaseError
from dotenv import load_dotenv
import os

load_dotenv()

app = Flask(__name__)

def execute_query(query, parameter=None):
    try:
        conn = connect(
            dbname="postgres",
            user="postgres",
            host="localhost",
            password=os.getenv("DB_CONNECT")      
        )
        with conn.cursor() as cursor:
            cursor.execute(query, parameter)
            conn.commit()
            if cursor.description:
                return cursor.fetchall()
            
    except DatabaseError as error:
        print(error)
        
    finally:
        if conn:
            conn.close()

@app.route("/")
def hello_world():
    return render_template("index.html")

@app.route("/submit", methods=["POST"])
def submit_answer():
    name = request.form.get("firstname")
    query_result = execute_query("SELECT * FROM course WHERE course_id LIKE %s", (f"%{name}%", ))
    return render_template("index.html", query_result= query_result)