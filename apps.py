import hashlib
from functools import wraps

from dotenv import load_dotenv
from flask import Flask, session, redirect, render_template, request
from flask_jwt_extended import JWTManager
from sqlalchemy import create_engine

from api import init_api
from config import Config
from models.admin import Admin
from views import init_page_routes


def create_app():
    app = Flask(__name__)
    app.secret_key = '0718dc97689e5d255508a53ea5af7b57'
    load_dotenv()
    app = init_db(app)
    init_api(app, auth)
    init_page_routes(app, auth)
    JWTManager(app)

    return app


def init_db(_app):
    connection_string = f"mysql+pymysql://{Config.DB_USER}:{Config.DB_PASSWORD}@{Config.DB_HOST}:{Config.DB_PORT}/{Config.DB_NAME}"
    engine = create_engine(connection_string)
    connection = engine.connect()
    _app.connection = connection
    return _app


def auth(f):
    @wraps(f)
    def decorated_function(*args, **kwargs):
        if 'username' not in session:
            return redirect('/login')
        kwargs.update(session)
        return f(*args, **kwargs)

    return decorated_function
