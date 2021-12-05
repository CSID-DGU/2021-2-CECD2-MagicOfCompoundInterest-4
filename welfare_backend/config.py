import os

DATABASE_NAME = 'welfare'
DATABASE_USER = 'welfare'
DATABASE_PASSWORD = 'password'
if DATABASE_USER == 'root':
    DATABASE_PORT = 3307
else:
    DATABASE_PORT = 3306

DATABASE_URI = 'mysql+pymysql://{}:{}@localhost:{}/{}'.format(
    DATABASE_USER,
    DATABASE_PASSWORD,
    DATABASE_PORT,
    DATABASE_NAME
)