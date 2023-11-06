import os
import psycopg2
from flask import Flask, redirect, url_for, request, render_template, session, flash
from flask_sqlalchemy import SQLAlchemy


def create_app():
    # create and configure the app
    app = Flask(__name__)
    
    # load the instance config, if it exists, when not testing
    app.config.from_pyfile("config.py", silent=True)
    
    # ensure the instance folder exists
    try:
        os.makedirs(app.instance_path)
    except OSError:
        pass

    from . import db
    db.init_app(app)

    from . import auth
    app.register_blueprint(auth.bp)

    from . import dash
    app.register_blueprint(dash.bp)

    # a simple page that says hello
    @app.route("/")
    def index():
        users = [
            {"name": "John Doe", "email": "johndoe@example.com"},
            {"name": "Jane Doe", "email": "janedoe@example.com"}
        ]
        return render_template("index.html", users=users)

    return app
