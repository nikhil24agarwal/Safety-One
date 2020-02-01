from flask import Flask,render_template,request, url_for ,redirect
from flask_mail import Mail
from kk import maill


app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

@app.route('/home')
def home():
    return render_template("home.html")



# @app.route("/home", methods=['GET','POST'])
# def home():
	
# 	if request.method=='POST':
# 		maill(['nikhilagarwal82537@gmail.com','karishmahekk@gmail.com','itsprachi03@gmail.com'],"Vivekananda Institute Of Professional Studies")
# 		return "Doneeeee"

# 	return render_template('home.html')

@app.route('/register')
def register():

	maill(['nikhilagarwal82537@gmail.com','karishmahekk@gmail.com','itsprachi03@gmail.com'],"Vivekananda Institute Of Professional Studies")
	return "Doneeeee"
