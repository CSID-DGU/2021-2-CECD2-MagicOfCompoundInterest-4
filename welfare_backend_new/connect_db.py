import os

DATABASE_NAME = 'welfare'
DATABASE_USER = 'username'
DATABASE_PASSWORD = 'password'
DATABASE_PORT = 3306

DATABASE_URI = 'mysql+pymysql://{}:{}@localhost:{}/{}?charset=utf8'.format(
    DATABASE_USER,
    DATABASE_PASSWORD,
    DATABASE_PORT,
    DATABASE_NAME
)