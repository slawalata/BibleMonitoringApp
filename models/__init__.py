# import os

# from sqlalchemy import create_engine, text
#
#
#
# engine = create_engine('mysql+mysqlconnector://root@localhost/monitoring_app')
#
# db_user = os.getenv('DB_USER', 'root')       # Default to 'root' if not set
# db_password = os.getenv('DB_PASSWORD', 'password')  # Default to 'password' if not set
# db_host = os.getenv('DB_HOST', 'localhost')  # Default to 'localhost' if not set
# db_port = os.getenv('DB_PORT', '3306')       # Default to '3306' if not set
# db_name = os.getenv('DB_NAME', 'bibleapp')       # Default to 'test' database
#
# # Construct connection string
# connection_string = f"mysql+pymysql://{db_user}:{db_password}@{db_host}:{db_port}/{db_name}"
#
# # Create SQLAlchemy engine
# engine = create_engine(connection_string)
# connection = engine.connect()
