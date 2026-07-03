import os

import pytest
from apps import create_app
from testcontainers.mysql import MySqlContainer

os.environ["TESTCONTAINERS_RYUK_DISABLED"] = "true"  # optional (so Ryuk won't kill the container)
os.environ["TESTCONTAINERS_REUSE_ENABLE"] = "true"


@pytest.fixture(scope="session")
def mysql_container():
    with MySqlContainer(
        image="mysql:8.4",
        username="test",
        password="test",
        dbname="test_db",
    ) as mysql:

        os.environ["DB_HOST"] = mysql.get_container_host_ip()
        os.environ["DB_PORT"] = str(mysql.get_exposed_port(3306))
        os.environ["DB_USER"] = mysql.username
        os.environ["DB_PASSWORD"] = mysql.password
        os.environ["DB_NAME"] = mysql.dbname

        yield mysql




@pytest.fixture()
def app(mysql_container):
    # to enable from all source when calling url for test.
    # Config.HRD_UI_URL = "*"
    app = create_app()
    app.config.update({"TESTING": True, "DEBUG": True, "PROPAGATE_EXCEPTIONS": True})

    yield app


@pytest.fixture
def client(app):
    app.config["TESTING"] = True
    app.config["PROPAGATE_EXCEPTIONS"] = True
    with app.test_client() as client:
        yield client
