import os
from flask import Flask, render_template
from datetime import datetime

app = Flask(__name__)

SECRET_KEY = os.urandom(32)
app.config['SECRET_KEY'] = SECRET_KEY

@app.context_processor
def inject_context():
    return {
        'now': datetime.utcnow(),
        'join_link': "https://www.onlinescoutmanager.co.uk/waiting-list/60th-braid-waiting-list/dc37caa3-5a8e-49d8-bd96-55b03af76edc/apply",
        'volunteer_form': "https://goo.gl/forms/3fHi0xQ2R6PNmZp83"
        }

@app.route("/")
def home():
    return render_template("home.html")

@app.route("/beavers/")
def beavers():
    return render_template("beavers.html")

@app.route("/cubs/")
def cubs():
    return render_template("cubs.html")

@app.route("/scouts/")
def scouts():
    return render_template("scouts.html")

@app.route("/volunteer/")
def volunteer():
    return render_template("volunteer.html")

@app.route("/contact/")
def contact():
    return render_template("contact.html")
