import os
from pathlib import Path

from dotenv import load_dotenv

load_dotenv(Path(__file__).parent / ".env", override=True)


class Config:
    SECRET_KEY = os.getenv("SECRET_KEY")
    JWT_SECRET_KEY = os.getenv("JWT_SECRET_KEY")
    FLASK_RUN_PORT = os.getenv("FLASK_RUN_PORT")
    FLASK_SECRET_KEY = os.getenv("FLASK_SECRET_KEY")

    HRD_UI_URL = os.getenv("HRD_UI_URL")

    DB_USER = os.getenv('DB_USER', 'root')  # Default to 'root' if not set
    DB_PASSWORD = os.getenv('DB_PASSWORD', 'password')  # Default to 'password' if not set
    DB_HOST = os.getenv('DB_HOST', 'localhost')  # Default to 'localhost' if not set
    DB_PORT = os.getenv('DB_PORT', '3306')  # Default to '3306' if not set
    DB_NAME = os.getenv('DB_NAME', 'bibleapp')  # Default to 'test' database
