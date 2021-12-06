from app import db
from datetime import datetime


class Stock(db.Model):
    __tablename__ = 'stock'
    __tale_args__ = {'mysql_collate': 'utf8_general_ci'}

    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    stock_name = db.Column(db.String(100), nullable=False)
    stock_category = db.Column(db.String(100), nullable=False)
    created_at = db.Column(db.DateTime, nullable=False)

    def __init__(self, stock_name, stock_category):
        self.stock_name = stock_name
        self.stock_category = stock_category
        self.created_at = datetime.now()

    def as_dict(self):
        return {x.name: getattr(self, x.name) for x in self.__table__.columns}

