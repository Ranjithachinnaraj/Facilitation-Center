import os
import mysql.connector as mysql
from flask import Flask, render_template, request, flash, redirect, url_for, session
from mysql.connector import connection, cursor
import random
app = Flask(__name__)
app.secret_key = os.urandom(24)

@app.route('/')
def home():
    return render_template("Homepage.html")


@app.route('/about')
def about():
    return render_template("Aboutus.html")


@app.route('/contact')
def contact():
    return render_template("Contactus.html")


@app.route('/service')
def service():
    return render_template("Services.html")


@app.route('/register')
def register():
    return render_template("Register.html")


@app.route('/login')
def login():
    return render_template("Login.html")


@app.route('/adminhome')
def adminhome():
    return render_template("Adminhome.html")


@app.route('/Addauthority')
def Addauthority():
    return render_template("AddAuthority.html")
@app.route('/updatestatus')
def updatestatus():
    return render_template("updatestatus.html")
@app.route('/complaint')
def complaint():
    return render_template("Addcomplaint.html")
@app.route('/logout')
def logout():
    return render_template("Homepage.html")


@app.route('/userhome')
def userhome():
    return render_template("Userhome.html")


@app.route('/register_details', methods=['POST'])
def register_details():
    if request.method == "POST":
        CitizenId = request.form['tid2']
        Age = request.form['tid5']
        CitizenName = request.form['tid3']
        Gender = request.form['ct1']
        PhoneNumber = request.form['tid4']
        Area = request.form['tid7']
        EmailID = request.form['tid6']
        Username = request.form['tid']
        password = request.form['password']
        db_connection = mysql.connect(user='root', password='root', host='127.0.0.1', charset='utf8',
                                      database='grievance')
        cur = db_connection.cursor()

        cur.execute(
            "INSERT INTO register (cid,age,cname,gender,contact,area,email,uname,pass ) VALUES(%s, %s, %s,%s, %s, %s,%s, %s, %s)",
            (CitizenId, Age, CitizenName, Gender, PhoneNumber, Area, EmailID, Username, password))
        db_connection.commit()

        return render_template('Login.html')


@app.route('/add_authority', methods=['POST'])
def add_authority():
    if request.method == "POST":
        Authorityid = request.form['tid2']
        Age = request.form['tid5']
        AuthorityName = request.form['tid3']
        Gender = request.form['ct1']
        PhoneNumber = request.form['tid4']
        Area = request.form['tid6']
        EmailID = request.form['tid5a']
        Department = request.form['tid7']
        Designation = request.form['tid8']
        AuthorityLevel = request.form['tid9']
        Username = request.form['tid']
        Password = request.form['password']

        db_connection = mysql.connect(user='root', password='root', host='127.0.0.1', charset='utf8',
                                      database='grievance')
        cur = db_connection.cursor()

        cur.execute(
            "INSERT INTO authority (aid,age,aname,gender,contact,area,email,department,designation,alevel,username,password ) VALUES(%s, %s, %s,%s, %s, %s,%s, %s, %s,%s, %s, %s)",
            (Authorityid, Age, AuthorityName, Gender, PhoneNumber, Area, EmailID, Department, Designation, AuthorityLevel, Username, Password))

        db_connection.commit()

        return render_template('AddAuthority.html')


@app.route('/add_complaint', methods=['POST'])
def add_complaint():
    if request.method == "POST":
        ComplaintId = request.form['cid']
        Userid = request.form['uid']
        Username = request.form['uname']
        f = request.files['file']
        f.save("static/uploads/" + f.filename)
        Date = request.form['date']
        Priority = request.form['priority']
        Area = request.form['area']
        Description = request.form['description']

        db_connection = mysql.connect(user='root', password='root', host='127.0.0.1', charset='utf8',
                                      database='grievance')
        cur = db_connection.cursor()

        cur.execute(
            "INSERT INTO complaint (cid,uid,uname,file,date,priority,area,description) VALUES(%s, %s, %s,%s, %s, %s,%s, %s)",
            (ComplaintId, Userid, Username, f.filename, Date, Priority, Area, Description))
        db_connection.commit()

        return render_template('Addcomplaint.html')
@app.route('/status', methods=['POST'])
def status():
    if request.method == "POST":
        ComplaintId = request.form['tid2']
        Userid = request.form['tid3']
        area = request.form['tid6']
        Status = request.form['tid5a']
        Descritpion = request.form['tid8']


        db_connection = mysql.connect(user='root', password='root', host='127.0.0.1', charset='utf8',
                                      database='grievance')
        cur = db_connection.cursor()

        cur.execute(
            "INSERT INTO status (cid,uid,area,status,description) VALUES(%s, %s, %s,%s, %s)",
            (ComplaintId, Userid, area, Status, Descritpion))
        db_connection.commit()

        return render_template('updatestatus.html')


@app.route('/checklogin', methods=['POST'])
def checklogin():
    if request.method == 'POST' and 'tid' in request.form and 'password' in request.form:
        username = request.form['tid']
        password = request.form['password']
        usertype = request.form['utype']
    if username == "Admin" and password == "Admin" and usertype == "Admin":
        return render_template('Adminhome.html')
    else:
        db_connection = mysql.connect(user='root', password='root', host='127.0.0.1', charset='utf8',
                                      database='grievance')
        cursor = db_connection.cursor()
        cursor.execute("SELECT uname,pass FROM register WHERE uname = '%s' AND pass = '%s' "
                       % (username, password))
        account = cursor.fetchone()
        if account:
            flash("Login Success")
            return render_template('Userhome.html')


@app.route('/viewauthority')
def viewauthority():
    db_connection = mysql.connect(user='root', password='root', host='127.0.0.1', charset='utf8',
                                  database='grievance')
    cursor = db_connection.cursor()
    cursor.execute("SELECT  * from authority")
    data = cursor.fetchall()
    cursor.close()
    return render_template('ViewAuthority.html', authoritylist=data)

@app.route('/viewcomplaint')
def viewcomplaint():
    db_connection = mysql.connect(user='root', password='root', host='127.0.0.1', charset='utf8',
                                  database='grievance')
    cursor = db_connection.cursor()
    cursor.execute("SELECT  * from complaint")
    data = cursor.fetchall()
    cursor.close()
    return render_template('viewcomplaint.html', complaintlist=data)

@app.route('/viewstatus')
def viewstatus():
    db_connection = mysql.connect(user='root', password='root', host='127.0.0.1', charset='utf8',
                                  database='grievance')
    cursor = db_connection.cursor()
    cursor.execute("SELECT  * from status")
    data = cursor.fetchall()
    cursor.close()
    return render_template('viewstatus.html', statuslist=data)
if __name__ == '__main__':
    app.run()
