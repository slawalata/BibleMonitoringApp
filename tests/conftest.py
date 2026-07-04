import os

import pytest
from sqlalchemy import text

from apps import create_app, init_db
from testcontainers.mysql import MySqlContainer

from config import Config

os.environ["TESTCONTAINERS_RYUK_DISABLED"] = "true"  # optional (so Ryuk won't kill the container)
os.environ["TESTCONTAINERS_REUSE_ENABLE"] = "true"


@pytest.fixture(scope="session")
def mysql_container():
    with MySqlContainer(
            image="mysql:8.4",
            username="test",
            password="test",
            dbname=Config.DB_NAME,
    ) as mysql:
        Config.DB_HOST = mysql.get_container_host_ip()
        Config.DB_PORT = str(mysql.get_exposed_port(3306))
        Config.DB_USER = mysql.username
        Config.DB_PASSWORD = mysql.password

        print("##########")
        print(f"IP:{mysql.get_container_host_ip()}, PORT:{mysql.get_exposed_port(3306)}")
        print(f"USER_NAME:{mysql.username}, PASS:{mysql.password}")
        print("##########")
        yield mysql


@pytest.fixture()
def app(mysql_container):
    # to enable from all source when calling url for test.
    # Config.HRD_UI_URL = "*"
    app = create_app()
    app = init_db(app)
    app.config.update({"TESTING": True, "DEBUG": True, "PROPAGATE_EXCEPTIONS": True})
    with open("create_table_script.sql") as f:
        sql = f.read()
        for stmt in sql.split(";"):
            stmt = stmt.strip()
            if stmt:
                app.connection.execute(text(stmt))
    yield app


@pytest.fixture
def client(app):
    app.config["TESTING"] = True
    app.config["PROPAGATE_EXCEPTIONS"] = True
    with app.test_client() as client:
        yield client
