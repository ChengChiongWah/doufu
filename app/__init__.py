#!/usr/bin/env python3.5
# coding:utf-8
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_login import LoginManager
from flask_seasurf import SeaSurf
from flask_restful import Api
from config import Config
from .api_1_0.api import Todo, TodoList

db = SQLAlchemy()
csrf = SeaSurf()

login_manager = LoginManager()
login_manager.session_protection = 'strong'
login_manager.login_view = 'auth.login_view'


def create_app():
    app = Flask(__name__)
    app.config.from_object(Config)
    Config.init_app(app)

    db.init_app(app)
    login_manager.init_app(app)
    csrf.init_app(app)

    from .main import main
    app.register_blueprint(main)

    from .recipe import recipe
    app.register_blueprint(recipe, url_prefix='/recipe')

    from .auth import auth
    app.register_blueprint(auth)


    api_1_0 = Api(app)
    api_1_0.add_resource(TodoList, '/api_1_0/todos', endpoint='api_1_0_todlist')
    api_1_0.add_resource(Todo, '/api_1_0/todos/<todo_id>', endpoint='api_1_0_todo')

    return app
